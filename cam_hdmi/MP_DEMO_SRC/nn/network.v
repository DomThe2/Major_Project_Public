// Module: neural network for inference of model
// Author: Dom Binns

module network_module (

    input wire clk,
    input wire rst,
    input wire go,
    output reg done,
    output reg [7:0] data_out,
    
    // BRAM connections - see block diagram
    output reg [15:0] addra_w1,
    output reg        ena_w1,
    input wire [7:0]  data_w1,
    output reg [13:0] addra_w2,
    output reg        ena_w2,
    input wire [7:0]  data_w2,
    output reg [5:0]  addra_b1,
    output reg        ena_b1,
    input wire [31:0] data_b1,
    output reg [3:0]  addra_b2,
    output reg        ena_b2,
    input wire [31:0] data_b2,
    output reg [9:0]  addra_image_7,
    output reg        ena_image_7,
    input wire [7:0]  data_image_7
);

parameter IMG_SIZE = 784;
parameter HIDDEN_SIZE = 64;
parameter OUT_SIZE = 10;

parameter INPUT_SCALE = 32;
parameter WEIGHT_SCALE = 128;
parameter HIDDEN_SCALE = 128;
parameter SHIFT1 = 5;
//parameter SHIFT2 = 14;

reg [7:0] i;
reg signed [63:0] currentLargest;

reg signed [63:0] acc;
reg signed [63:0] acc_scaled;
reg [15:0]        neuron;
reg [15:0]        inputIndex;

reg signed [15:0] hiddenActivation [63:0];
reg signed [63:0] outputActivation  [9:0];

localparam IDLE             = 0,
           GET_ACC_HIDDEN   = 1,
           MAC_HIDDEN       = 2,
           ACTIVATE_HIDDEN  = 3,
           SHIFT_HIDDEN     = 4,
           NEXT_HIDDEN      = 5,
           GET_ACC_OUTPUT   = 6,
           MAC_OUTPUT       = 7,
           ACTIVATE_OUTPUT  = 8,
           NEXT_OUTPUT      = 9, 
           ARG_MAX          = 10,
           FINISH           = 11;

reg [3:0] state = IDLE;
reg [1:0] loadTimer = 0;

// ReLu function
function signed [63:0] relu;
input signed [63:0] x;
begin
    if(x < 0)
        relu = 0;
    else 
        relu = x;
end

endfunction

always @(posedge clk) begin
    // ToDo: only enable these when necessary. Works for now.
    ena_w1 <= 1; 
    ena_w2 <= 1;
    ena_b1 <= 1;
    ena_b2 <= 1;
    ena_image_7 <= 1;
    addra_w1 <= 0;
    addra_w2 <= 0;
    addra_b1 <= 0;
    addra_b2 <= 0;
    addra_image_7 <= 0;
    done <= 0;

    if(rst) begin
        data_out <= 0;
        state <= IDLE;
        done <= 0;
        neuron <= 0;
        loadTimer <= 0;
    end else begin
    // wait for memory to return data
    if (loadTimer == 0) begin 
        case(state)
        IDLE:
            if(go) begin
                done <= 0;
                i <= 0;
                neuron <= 0;
                inputIndex <= 0;
                currentLargest <= -64'sd9223372036854775808;
              
                // load first bias
                addra_b1 <= 0;
                // set load timer to 2 clock cycles 
                loadTimer <= 2;
                state <= GET_ACC_HIDDEN;
            end
        
        GET_ACC_HIDDEN:
            begin
                // add loaded bias
                acc <= $signed(data_b1);
                
                // load first weight
                addra_w1 <= inputIndex + neuron * IMG_SIZE;
                // load first pixel
                addra_image_7 <= inputIndex;
                
                // begin input at second weight
                inputIndex <= 1;
                loadTimer <= 2;
                state <= MAC_HIDDEN;
            end
            
        MAC_HIDDEN:
            begin
                // add loaded weight multiplied by loaded pixel value 
                acc <= acc + ($signed(data_image_7) * $signed(data_w1));
                // if we have done all pixels, move to next state 
                if(inputIndex == IMG_SIZE)
                    state <= ACTIVATE_HIDDEN;
                else begin
                    // otherwise move to next pixel 
                    addra_w1 <= inputIndex + neuron * IMG_SIZE;
                    addra_image_7 <= inputIndex;
					inputIndex <= inputIndex + 1;
					loadTimer <= 2;
                    state <= MAC_HIDDEN;
                end
            end
        
        ACTIVATE_HIDDEN:
            begin
                // scale and apply activation function
                acc_scaled <= (relu(acc) >>> SHIFT1);
                inputIndex <= 0;
                state <= SHIFT_HIDDEN;
                
            end
            
        SHIFT_HIDDEN:
            begin 
                // clip to 16 bit 
                if (acc_scaled > 32767) 
                    hiddenActivation[neuron] <= 32767;
                else if (acc_scaled < -32768) 
                    hiddenActivation[neuron] <= -32768;
                else 
                    hiddenActivation[neuron] <= acc_scaled[15:0]; 
                // increment current neuron  
                neuron <= neuron + 1;
                state <= NEXT_HIDDEN;
                
            end
        
        NEXT_HIDDEN:
            begin
                // if we have done all neurons, move to next layer
                if(neuron == HIDDEN_SIZE) begin
                    neuron <= 0;
                    // load bias for first neuron of next layer
                    addra_b2 <= 0;
                    loadTimer <= 2;
                    state <= GET_ACC_OUTPUT;
                end else begin
                    // otherwise continue to net neuron of this layer 
                    addra_b1 <= neuron;
                    state <= GET_ACC_HIDDEN;
                    loadTimer <= 2;
                end
            end
            
        
        GET_ACC_OUTPUT:
            begin
                // same as before 
                acc <= $signed(data_b2);
                addra_w2 <= neuron * HIDDEN_SIZE;
                inputIndex <= 1;
                loadTimer <= 2;
                state <= MAC_OUTPUT;
            end    
        
        MAC_OUTPUT:
            begin
                // get input from output of previous layer, multiply by weight
                acc <= acc + ($signed(hiddenActivation[inputIndex-1]) * $signed(data_w2));
                if(inputIndex == HIDDEN_SIZE)
                    state <= ACTIVATE_OUTPUT;
                else begin
                    addra_w2 <= inputIndex + neuron * HIDDEN_SIZE;
					inputIndex <= inputIndex + 1;
					loadTimer <= 2;
					state <= MAC_OUTPUT;
                end 
            end
        
        ACTIVATE_OUTPUT:
            begin
                // linear activation function, no scale necessary at output layer
                outputActivation[neuron] <= acc; 
                inputIndex <= 0;
                neuron <= neuron + 1;
                state <= NEXT_OUTPUT;
            end
        
        NEXT_OUTPUT:
            begin
                if(neuron == OUT_SIZE) begin
                    neuron <= 0;
                    state <= ARG_MAX;
                end else begin 
                    addra_b2 <= neuron;
                    loadTimer <= 2;
                    state <= GET_ACC_OUTPUT;
                end
            end
            
        ARG_MAX:
            begin
                if (i == 0) begin
                    currentLargest  <= outputActivation[0];
                    data_out        <= 0;
                end else if (outputActivation[i] > currentLargest) begin
                    currentLargest  <= outputActivation[i];
                    data_out        <= i;
                end
                if (i == OUT_SIZE-1) begin
                    state <= FINISH;
                end else begin
                    i <= i + 1;
                    state <= ARG_MAX;
                end
            end 
        
        FINISH:
            begin
                // network is done
                done <= 1;
                state <= IDLE;                              
            end
            
        default:
            state <= IDLE;   
        endcase
    end else 
        // decrement timer 
        loadTimer <= loadTimer - 1;
    end
    
end

endmodule