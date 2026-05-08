#Module: python pre-training, export
#Authors: Yahia Wael, Dom Binns, Vlad Dementyev

import os
import math
import random
import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.utils.data import Dataset, DataLoader, Subset
import torchvision.transforms as T
import torchvision.transforms.functional as TF

RANDOM_SEED  = 1569
BATCH_SIZE   = 128
EPOCHS_MAIN, EPOCHS_TUNE = 300, 50

IMG_SIZE, OUT_CLASSES = 48, 7
TILE_SIZE, THREADS    = 64, 128
HIDDEN_0_SIZE, HIDDEN_1_SIZE = 4096, 4096

INPUT_SCALE             = 32.0
WEIGHT_SCALE            = 128.0
DENSE_OUT_SHIFT         = [5, 7, 0]
DENSE_BIAS_SHIFT_TARGET = [12, 14, 14]
EXPORT_ACC_THRESHOLD    = 10.0

N_OOD_PER_TYPE   = 2000
CIFAR10_DATA_DIR = "./data/cifar10"

FER_DATA_DIR = "./data/fer2013"
STAGE1_CACHE = "stage1_main.pt"
STAGE2_CACHE = "stage2_tune.pt"
LEGACY_CACHE = "trained_vgg_fer.pt"
SKIP_TRAIN_IF_CACHED = True

CLASS_NAMES = ['angry', 'disgust', 'fear', 'happy', 'sad', 'surprise', 'neutral']
FER_LABELS  = {n: i for i, n in enumerate(CLASS_NAMES)}

random.seed(RANDOM_SEED); np.random.seed(RANDOM_SEED); torch.manual_seed(RANDOM_SEED)
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
print(f"device: {device}")

class FER2013Dataset(Dataset):
    def __init__(self, root, split='train', augment=False):
        from PIL import Image
        root_path = os.path.join(root, split)
        if not os.path.isdir(root_path):
            raise FileNotFoundError(f"missing {root_path}")
        images, labels = [], []
        for emo, c in FER_LABELS.items():
            d = os.path.join(root_path, emo)
            if not os.path.isdir(d):
                continue
            for fn in sorted(os.listdir(d)):
                if not fn.lower().endswith(('.jpg', '.jpeg', '.png')):
                    continue
                img = Image.open(os.path.join(d, fn)).convert('L')
                if img.size != (48, 48):
                    img = img.resize((48, 48), Image.BILINEAR)
                images.append(np.asarray(img, dtype=np.uint8))
                labels.append(c)
        self.pixels  = np.stack(images, axis=0)
        self.labels  = np.array(labels, dtype=np.int64)
        self.augment = augment

    def __len__(self):
        return len(self.labels)

    def __getitem__(self, idx):
        img = torch.from_numpy(self.pixels[idx]).float().div(255.0).unsqueeze(0)
        if self.augment:
            if random.random() < 0.5:
                img = torch.flip(img, dims=[2])
            if random.random() < 0.6:
                img = TF.to_tensor(T.RandomCrop(48)(T.Pad(4)(TF.to_pil_image(img))))
            img = TF.affine(img,
                            angle=random.uniform(-12, 12),
                            translate=(random.uniform(-3, 3), random.uniform(-3, 3)),
                            scale=random.uniform(0.90, 1.10), shear=0)
            img = TF.adjust_brightness(img, random.uniform(0.70, 1.30))
            img = TF.adjust_contrast(img,   random.uniform(0.70, 1.30))
            if random.random() < 0.25:
                img = TF.gaussian_blur(img, kernel_size=3, sigma=random.uniform(0.1, 1.2))
            if random.random() < 0.5:
                x = random.randint(0, 38); y = random.randint(0, 38)
                w = random.randint(6, 14); h = random.randint(6, 14)
                img[:, y:y+h, x:x+w] = 0.0
            img = torch.clamp(img, 0.0, 1.0)
        return img, int(self.labels[idx])


def stratified_half_split(dataset, seed=RANDOM_SEED):
    rng = np.random.default_rng(seed)
    val_idx, test_idx = [], []
    for c in range(OUT_CLASSES):
        ci = np.where(dataset.labels == c)[0]
        rng.shuffle(ci)
        h = len(ci) // 2
        val_idx.extend(ci[:h].tolist()); test_idx.extend(ci[h:].tolist())
    return sorted(val_idx), sorted(test_idx)


train_set     = FER2013Dataset(FER_DATA_DIR, split='train', augment=True)
full_eval_set = FER2013Dataset(FER_DATA_DIR, split='test',  augment=False)
val_indices, test_indices = stratified_half_split(full_eval_set)
val_set  = Subset(full_eval_set, val_indices)
test_set = Subset(full_eval_set, test_indices)
print(f"data: train={len(train_set):,}  val={len(val_indices):,}  test={len(test_indices):,}")

train_loader = DataLoader(train_set, batch_size=BATCH_SIZE, shuffle=True,  num_workers=0)
val_loader   = DataLoader(val_set,   batch_size=BATCH_SIZE, shuffle=False, num_workers=0)
test_loader  = DataLoader(test_set,  batch_size=BATCH_SIZE, shuffle=False, num_workers=0)

def vgg_fer():
    def cbr(cin, cout, sd=0.0):
        ls = [nn.Conv2d(cin, cout, 3, padding=1), nn.BatchNorm2d(cout), nn.ReLU()]
        if sd > 0.0:
            ls.append(nn.Dropout2d(sd))
        return ls
    layers = []
    layers += cbr(1,   64);                  layers += cbr(64,  64);             layers += [nn.MaxPool2d(2)]
    layers += cbr(64,  128);                 layers += cbr(128, 128);            layers += [nn.MaxPool2d(2)]
    layers += cbr(128, 256);                 layers += cbr(256, 256, sd=0.1);    layers += [nn.MaxPool2d(2)]
    layers += cbr(256, 512);                 layers += cbr(512, 512, sd=0.2);    layers += [nn.MaxPool2d(2)]
    layers += [
        nn.Flatten(),
        nn.Linear(3 * 3 * 512, HIDDEN_0_SIZE), nn.ReLU(), nn.Dropout(0.5),
        nn.Linear(HIDDEN_0_SIZE, HIDDEN_1_SIZE), nn.ReLU(), nn.Dropout(0.5),
        nn.Linear(HIDDEN_1_SIZE, OUT_CLASSES),
    ]
    return nn.Sequential(*layers)

model = vgg_fer().to(device)
conv_indices = [i for i, m in enumerate(model) if isinstance(m, nn.Conv2d)]
fc_indices   = [i for i, m in enumerate(model) if isinstance(m, nn.Linear)]
assert len(conv_indices) == 8 and len(fc_indices) == 3

def evaluate(net, loader):
    net.eval()
    correct = total = 0
    with torch.no_grad():
        for data, target in loader:
            data, target = data.to(device), target.to(device)
            correct += net(data).argmax(1).eq(target).sum().item()
            total   += target.size(0)
    return 100.0 * correct / total

def run_epoch(net, loader, criterion, optimizer):
    net.train()
    loss_sum, n = 0.0, 0
    for data, target in loader:
        data, target = data.to(device), target.to(device)
        optimizer.zero_grad()
        loss = criterion(net(data), target)
        loss.backward()
        nn.utils.clip_grad_norm_(net.parameters(), max_norm=5.0)
        optimizer.step()
        loss_sum += loss.item() * data.size(0); n += data.size(0)
    return loss_sum / n

if os.path.exists(LEGACY_CACHE):
    raise SystemExit(f"legacy checkpoint {LEGACY_CACHE} present — delete or rename, aborting.")

if SKIP_TRAIN_IF_CACHED and os.path.exists(STAGE1_CACHE):
    model.load_state_dict(torch.load(STAGE1_CACHE, map_location=device))
    print(f"stage1: loaded cache, val={evaluate(model, val_loader):.2f}%")
else:
    crit = nn.CrossEntropyLoss(label_smoothing=0.1)
    opt  = torch.optim.SGD(model.parameters(), lr=0.01, momentum=0.9, nesterov=True, weight_decay=1e-4)
    sch  = torch.optim.lr_scheduler.ReduceLROnPlateau(opt, mode='max', factor=0.75, patience=5)
    best = 0.0
    for ep in range(EPOCHS_MAIN):
        loss = run_epoch(model, train_loader, crit, opt)
        val  = evaluate(model, val_loader)
        sch.step(val)
        if val > best:
            best = val
            torch.save(model.state_dict(), "best_stage1.pt")
        print(f"stage1 ep {ep+1:>3}/{EPOCHS_MAIN}  loss={loss:.4f}  val={val:.2f}%  best={best:.2f}%  lr={opt.param_groups[0]['lr']:.5f}")
    model.load_state_dict(torch.load("best_stage1.pt", map_location=device))
    torch.save(model.state_dict(), STAGE1_CACHE)
    print(f"stage1: best val={best:.2f}% saved to {STAGE1_CACHE}")

if SKIP_TRAIN_IF_CACHED and os.path.exists(STAGE2_CACHE):
    model.load_state_dict(torch.load(STAGE2_CACHE, map_location=device))
    print(f"stage2: loaded cache, val={evaluate(model, val_loader):.2f}%")
else:
    crit = nn.CrossEntropyLoss(label_smoothing=0.1)
    opt  = torch.optim.SGD(model.parameters(), lr=1e-4, momentum=0.9, nesterov=True, weight_decay=1e-4)
    sch  = torch.optim.lr_scheduler.CosineAnnealingLR(opt, T_max=EPOCHS_TUNE, eta_min=0.0)
    best = evaluate(model, val_loader)
    for ep in range(EPOCHS_TUNE):
        loss = run_epoch(model, train_loader, crit, opt)
        val  = evaluate(model, val_loader)
        sch.step()
        if val > best:
            best = val
            torch.save(model.state_dict(), "best_stage2.pt")
        print(f"stage2 ep {ep+1:>2}/{EPOCHS_TUNE}  loss={loss:.4f}  val={val:.2f}%  best={best:.2f}%  lr={opt.param_groups[0]['lr']:.6f}")
    if os.path.exists("best_stage2.pt"):
        model.load_state_dict(torch.load("best_stage2.pt", map_location=device))
    torch.save(model.state_dict(), STAGE2_CACHE)
    print(f"stage2: best val={best:.2f}% saved to {STAGE2_CACHE}")

final_test_acc = evaluate(model, test_loader)
print(f"final float test accuracy: {final_test_acc:.2f}%")

best_acc = final_test_acc
model = model.to("cpu")

model.eval()
cpu_test_loader = DataLoader(test_set, batch_size=BATCH_SIZE, shuffle=False, num_workers=0)
folded = 0
for i in range(len(model) - 1):
    if isinstance(model[i], nn.Conv2d) and isinstance(model[i+1], nn.BatchNorm2d):
        conv, bn = model[i], model[i+1]
        with torch.no_grad():
            A = bn.weight / torch.sqrt(bn.running_var + bn.eps)
            B = bn.bias - bn.weight * bn.running_mean / torch.sqrt(bn.running_var + bn.eps)
            conv.weight.data = conv.weight.data * A.view(-1, 1, 1, 1)
            if conv.bias is None:
                conv.bias = nn.Parameter(torch.zeros(conv.weight.shape[0]))
            conv.bias.data = conv.bias.data * A + B
        model[i+1] = nn.Identity()
        folded += 1
assert folded == 8
print(f"BN fold: {folded} layers")
conv_indices = [i for i, m in enumerate(model) if isinstance(m, nn.Conv2d)]
fc_indices   = [i for i, m in enumerate(model) if isinstance(m, nn.Linear)]

def quantize_8bit(val, scale):
    return torch.clamp(torch.round(val * scale), -128, 127).to(torch.int32)

def pick_weight_scale_pow2(w, max_abs_target=127):
    m = float(w.abs().max())
    if m < 1e-8:
        return 128.0, 7
    s = max(0, min(int(math.floor(math.log2(max_abs_target / m))), 20))
    return float(1 << s), s

sd = model.state_dict()

conv_w_scales, conv_b_scales = [], []
conv_out_shifts, conv_bias_shifts = [], []
conv_w_int, conv_b_int = [], []
for li in conv_indices:
    w, b = sd[f'{li}.weight'], sd[f'{li}.bias']
    w_scale, s_w = pick_weight_scale_pow2(w)
    b_scale, s_b = pick_weight_scale_pow2(b)
    eff = (s_w + 5) - s_b
    if eff < 0:
        s_b += eff; b_scale = float(1 << s_b) if s_b >= 0 else 1.0; eff = 0
    conv_w_scales.append(w_scale); conv_b_scales.append(b_scale)
    conv_out_shifts.append(s_w);   conv_bias_shifts.append(eff)
    conv_w_int.append(quantize_8bit(w, w_scale))
    conv_b_int.append(quantize_8bit(b, b_scale))

fc_w_int, fc_b_int = [], []
fc_bias_shifts_hw  = []
for i, li in enumerate(fc_indices):
    w, b = sd[f'{li}.weight'], sd[f'{li}.bias']
    fc_w_int.append(quantize_8bit(w, WEIGHT_SCALE))
    _, s_b = pick_weight_scale_pow2(b)
    s_b    = max(0, min(s_b, DENSE_BIAS_SHIFT_TARGET[i]))
    fc_b_int.append(quantize_8bit(b, float(1 << s_b)))
    fc_bias_shifts_hw.append(DENSE_BIAS_SHIFT_TARGET[i] - s_b)

print("\nFC2 quant bias per class:")
bf, bi = sd[f'{fc_indices[2]}.bias'], fc_b_int[2]
for c in range(OUT_CLASSES):
    print(f"  {CLASS_NAMES[c]:<10} float={float(bf[c]):+.4f}  int8={int(bi[c]):+d}")

def integer_forward(x_batch):
    x = quantize_8bit(x_batch, INPUT_SCALE).float()
    for i in range(8):
        x = F.conv2d(x, conv_w_int[i].float(),
                     conv_b_int[i].float() * (2 ** conv_bias_shifts[i]), padding=1)
        x = torch.clamp(x, min=0)
        x = torch.floor(x / (2.0 ** conv_out_shifts[i]))
        x = torch.clamp(x, -128, 127)
        if i % 2 == 1:
            x = F.max_pool2d(x, 2)
    x = x.view(x.size(0), -1)
    for i in range(3):
        x = (torch.matmul(x, fc_w_int[i].float().T)
             + fc_b_int[i].float() * (2 ** fc_bias_shifts_hw[i]))
        if i < 2:
            x = torch.clamp(x, min=0)
            x = torch.floor(x / (2.0 ** DENSE_OUT_SHIFT[i]))
            x = torch.clamp(x, -32768, 32767)
    return x

correct = total = 0
preds_all, labels_all = [], []
with torch.no_grad():
    for data, target in cpu_test_loader:
        p = integer_forward(data).argmax(1)
        preds_all.append(p); labels_all.append(target)
        correct += p.eq(target).sum().item(); total += target.size(0)
preds_all  = torch.cat(preds_all)
labels_all = torch.cat(labels_all)
int_acc = 100.0 * correct / total
print(f"\nint8 accuracy: {int_acc:.2f}%  (float was {best_acc:.2f}%)")

print("per-class recall:")
for c in range(OUT_CLASSES):
    m = labels_all == c; n = int(m.sum())
    rec = 100.0 * (preds_all[m] == c).sum().item() / max(n, 1)
    flag = "  COLLAPSED" if rec < 5.0 else ""
    print(f"  {CLASS_NAMES[c]:<10} {rec:5.1f}%  (n={n}){flag}")

if int_acc < EXPORT_ACC_THRESHOLD:
    raise SystemExit(f"accuracy {int_acc:.2f}% below threshold {EXPORT_ACC_THRESHOLD}%, not exporting.")

os.makedirs("fpga_data", exist_ok=True)

def conv_layer_bytes(w_int, b_int, tile=TILE_SIZE, pad=128):
    Cout, Cin, K, _ = w_int.shape
    buf = bytearray()
    w = w_int.numpy().astype(np.int8); b = b_int.numpy().astype(np.int8)
    for g in range((Cout + tile - 1) // tile):
        g0, g1 = g * tile, min((g + 1) * tile, Cout); g_real = g1 - g0
        bb = np.zeros(pad, dtype=np.int8); bb[:g_real] = b[g0:g1]
        buf.extend(bb.tobytes())
        for c in range(Cin):
            for kpos in range(K * K):
                ky, kx = kpos // K, kpos % K
                wb = np.zeros(pad, dtype=np.int8); wb[:g_real] = w[g0:g1, c, ky, kx]
                buf.extend(wb.tobytes())
    return bytes(buf)

def dense_layer_bytes(w_int, b_int, threads=THREADS):
    out_size, in_size = w_int.shape
    buf = bytearray()
    w = w_int.numpy().astype(np.int8); b = b_int.numpy().astype(np.int8)
    for t in range((out_size + threads - 1) // threads):
        n0, n1 = t * threads, min((t + 1) * threads, out_size); n_real = n1 - n0
        bb = np.zeros(threads, dtype=np.int8); bb[:n_real] = b[n0:n1]
        buf.extend(bb.tobytes())
        W = np.zeros((threads, in_size), dtype=np.int8); W[:n_real, :] = w[n0:n1, :]
        buf.extend(W.T.copy().tobytes())
    return bytes(buf)

w_bin = bytearray()
for i in range(8):
    w_bin.extend(conv_layer_bytes(conv_w_int[i], conv_b_int[i]))
for i in range(3):
    w_bin.extend(dense_layer_bytes(fc_w_int[i], fc_b_int[i]))
with open("fpga_data/w.bin", "wb") as f:
    f.write(w_bin)
print(f"\nw.bin: {len(w_bin):,} bytes ({len(w_bin)/1024/1024:.2f} MB)")

def save_mem(t, name, bw):
    hw = (bw + 3) // 4; mask = (1 << bw) - 1
    with open(f"fpga_data/{name}", "w") as f:
        for v in t.flatten().cpu().numpy():
            f.write(f"{int(v) & mask:0{hw}x}\n")

def save_coe(t, name, bw):
    hw = (bw + 3) // 4; mask = (1 << bw) - 1
    vals = [f"{int(v) & mask:0{hw}x}" for v in t.flatten().cpu().numpy()]
    with open(f"fpga_data/{name}", "w") as f:
        f.write("memory_initialization_radix=16;\nmemory_initialization_vector=\n")
        for i, v in enumerate(vals):
            f.write(f"{v}{',' if i < len(vals)-1 else ';'}\n")

idx = random.Random(RANDOM_SEED).randint(0, len(test_set) - 1)
img_tensor, img_label = test_set[idx]
img_int = quantize_8bit(img_tensor, INPUT_SCALE).view(-1)
save_mem(img_int, "image.mem", 8)
save_coe(img_int, "image.coe", 8)

ood_samples = {}
try:
    from torchvision.datasets import CIFAR10
    from PIL import Image as PILImage
    cifar = CIFAR10(CIFAR10_DATA_DIR, train=False, download=True)
    imgs = []
    for i in range(min(N_OOD_PER_TYPE, len(cifar))):
        pil, _ = cifar[i]
        g = pil.convert('L').resize((IMG_SIZE, IMG_SIZE), PILImage.BILINEAR)
        imgs.append(torch.from_numpy(np.asarray(g, dtype=np.float32) / 255.0).unsqueeze(0))
    ood_samples['cifar10'] = torch.stack(imgs)
except Exception as e:
    print(f"cifar10 skipped: {e}")

#ood_samples['uniform_noise']  = torch.rand(N_OOD_PER_TYPE, 1, IMG_SIZE, IMG_SIZE)
#ood_samples['gaussian_noise'] = torch.clamp(0.5 + 0.25 * torch.randn(N_OOD_PER_TYPE, 1, IMG_SIZE, IMG_SIZE), 0, 1)
#ood_samples['blank_frames']   = torch.rand(N_OOD_PER_TYPE, 1, 1, 1).expand(-1, -1, IMG_SIZE, IMG_SIZE).contiguous()

def compute_max_logits(data_tensor):
    out = []
    with torch.no_grad():
        for i in range(0, len(data_tensor), BATCH_SIZE):
            out.extend(integer_forward(data_tensor[i:i+BATCH_SIZE]).max(dim=1).values.tolist())
    return np.asarray(out)

val_face_data = torch.stack([val_set[i][0] for i in range(len(val_set))])
val_face_ml = compute_max_logits(val_face_data)
all_ood_ml = np.concatenate([compute_max_logits(d) for d in ood_samples.values()])

lo = int(min(val_face_ml.min(), all_ood_ml.min()))
hi = int(max(val_face_ml.max(), all_ood_ml.max()))
best = (-1.0, None)
for thr in range(lo, hi + 1, 10):
    score = min((val_face_ml >= thr).mean(), (all_ood_ml < thr).mean())
    if score > best[0]:
        best = (float(score), int(thr))
THRESHOLD = best[1]

test_face_data = torch.stack([test_set[i][0] for i in range(len(test_set))])
test_face_ml = compute_max_logits(test_face_data)
fa = (test_face_ml >= THRESHOLD).mean() * 100
orej = (all_ood_ml < THRESHOLD).mean() * 100
print(f"\nTHRESHOLD = {THRESHOLD}  face_accept={fa:.1f}%  ood_reject={orej:.1f}%")
for name, d in ood_samples.items():
    ml = compute_max_logits(d)
    print(f"  {name:<16} reject {(ml < THRESHOLD).mean()*100:5.1f}%")

TOP_LAYER_IDX_FOR_CONV = [0, 1, 3, 4, 6, 7, 9, 10]
print("\n--- network.v ---")
print(f"  parameter THRESHOLD        = {THRESHOLD};")
print(f"  parameter DENSE_OUT_SHIFT  = {{5'd{DENSE_OUT_SHIFT[0]}, 5'd{DENSE_OUT_SHIFT[1]}, 5'd{DENSE_OUT_SHIFT[2]}}};")
print(f"  parameter DENSE_BIAS_SHIFT = {{5'd{fc_bias_shifts_hw[0]}, 5'd{fc_bias_shifts_hw[1]}, 5'd{fc_bias_shifts_hw[2]}}};")

print("\n--- top.v lookup_out_shift / lookup_bias_shift ---")
for ci in range(8):
    print(f"  4'd{TOP_LAYER_IDX_FOR_CONV[ci]:<2}: out_shift={conv_out_shifts[ci]:<2}  bias_shift={conv_bias_shifts[ci]:<2}   // conv{ci+1}")

print(f"\nfiles in fpga_data/: w.bin ({len(w_bin):,}B), image.mem, image.coe")
