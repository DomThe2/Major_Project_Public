// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Thu Apr 23 12:42:35 2026
// Host        : harun running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/harun/Documents/MP/MP_DEMO_COMBINED/MP_DEMO_COMBINED.gen/sources_1/bd/design_1/ip/design_1_memory_writer_0_0/design_1_memory_writer_0_0_sim_netlist.v
// Design      : design_1_memory_writer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_memory_writer_0_0,memory_writer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "memory_writer,Vivado 2025.2" *) 
(* NotValidForBitStream *)
module design_1_memory_writer_0_0
   (clk,
    pixel_data,
    pixel_valid,
    frame_done,
    write_address,
    write_data,
    write_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input [7:0]pixel_data;
  input pixel_valid;
  input frame_done;
  output [11:0]write_address;
  output [7:0]write_data;
  output write_en;

  wire clk;
  wire frame_done;
  wire [7:0]pixel_data;
  wire pixel_valid;
  wire [11:0]write_address;
  wire [7:0]write_data;
  wire write_en;

  design_1_memory_writer_0_0_memory_writer inst
       (.clk(clk),
        .frame_done(frame_done),
        .pixel_data(pixel_data),
        .pixel_valid(pixel_valid),
        .write_address(write_address),
        .write_data(write_data),
        .write_en(write_en));
endmodule

(* ORIG_REF_NAME = "memory_writer" *) 
module design_1_memory_writer_0_0_memory_writer
   (write_address,
    write_data,
    write_en,
    clk,
    pixel_data,
    frame_done,
    pixel_valid);
  output [11:0]write_address;
  output [7:0]write_data;
  output write_en;
  input clk;
  input [7:0]pixel_data;
  input frame_done;
  input pixel_valid;

  wire \FSM_onehot_FSM_state[0]_i_1_n_0 ;
  wire \FSM_onehot_FSM_state[1]_i_1_n_0 ;
  wire \FSM_onehot_FSM_state[2]_i_1_n_0 ;
  wire \FSM_onehot_FSM_state_reg_n_0_[2] ;
  wire clk;
  wire frame_done;
  wire [0:0]pixel_counter;
  wire pixel_counter0;
  wire \pixel_counter[0]_i_2_n_0 ;
  wire [11:0]pixel_counter_reg;
  wire \pixel_counter_reg[0]_i_1_n_0 ;
  wire \pixel_counter_reg[0]_i_1_n_1 ;
  wire \pixel_counter_reg[0]_i_1_n_2 ;
  wire \pixel_counter_reg[0]_i_1_n_3 ;
  wire \pixel_counter_reg[0]_i_1_n_4 ;
  wire \pixel_counter_reg[0]_i_1_n_5 ;
  wire \pixel_counter_reg[0]_i_1_n_6 ;
  wire \pixel_counter_reg[0]_i_1_n_7 ;
  wire \pixel_counter_reg[4]_i_1_n_0 ;
  wire \pixel_counter_reg[4]_i_1_n_1 ;
  wire \pixel_counter_reg[4]_i_1_n_2 ;
  wire \pixel_counter_reg[4]_i_1_n_3 ;
  wire \pixel_counter_reg[4]_i_1_n_4 ;
  wire \pixel_counter_reg[4]_i_1_n_5 ;
  wire \pixel_counter_reg[4]_i_1_n_6 ;
  wire \pixel_counter_reg[4]_i_1_n_7 ;
  wire \pixel_counter_reg[8]_i_1_n_1 ;
  wire \pixel_counter_reg[8]_i_1_n_2 ;
  wire \pixel_counter_reg[8]_i_1_n_3 ;
  wire \pixel_counter_reg[8]_i_1_n_4 ;
  wire \pixel_counter_reg[8]_i_1_n_5 ;
  wire \pixel_counter_reg[8]_i_1_n_6 ;
  wire \pixel_counter_reg[8]_i_1_n_7 ;
  wire [7:0]pixel_data;
  wire pixel_valid;
  wire [11:0]write_address;
  wire [7:0]write_data;
  wire write_en;
  wire write_en_i_1_n_0;
  wire [3:3]\NLW_pixel_counter_reg[8]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h888BFF8B)) 
    \FSM_onehot_FSM_state[0]_i_1 
       (.I0(frame_done),
        .I1(\FSM_onehot_FSM_state_reg_n_0_[2] ),
        .I2(pixel_counter),
        .I3(pixel_counter0),
        .I4(pixel_valid),
        .O(\FSM_onehot_FSM_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8C88)) 
    \FSM_onehot_FSM_state[1]_i_1 
       (.I0(pixel_counter0),
        .I1(pixel_valid),
        .I2(frame_done),
        .I3(\FSM_onehot_FSM_state_reg_n_0_[2] ),
        .O(\FSM_onehot_FSM_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \FSM_onehot_FSM_state[2]_i_1 
       (.I0(pixel_counter),
        .I1(frame_done),
        .I2(pixel_valid),
        .I3(\FSM_onehot_FSM_state_reg_n_0_[2] ),
        .O(\FSM_onehot_FSM_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "FSM_IDLE:001,FSM_WAIT:100,FSM_WRITE:010" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_FSM_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_FSM_state[0]_i_1_n_0 ),
        .Q(pixel_counter0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "FSM_IDLE:001,FSM_WAIT:100,FSM_WRITE:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_FSM_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_FSM_state[1]_i_1_n_0 ),
        .Q(pixel_counter),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "FSM_IDLE:001,FSM_WAIT:100,FSM_WRITE:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_FSM_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_FSM_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_FSM_state_reg_n_0_[2] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pixel_counter[0]_i_2 
       (.I0(pixel_counter_reg[0]),
        .O(\pixel_counter[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[0] 
       (.C(clk),
        .CE(pixel_counter),
        .D(\pixel_counter_reg[0]_i_1_n_7 ),
        .Q(pixel_counter_reg[0]),
        .R(pixel_counter0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\pixel_counter_reg[0]_i_1_n_0 ,\pixel_counter_reg[0]_i_1_n_1 ,\pixel_counter_reg[0]_i_1_n_2 ,\pixel_counter_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\pixel_counter_reg[0]_i_1_n_4 ,\pixel_counter_reg[0]_i_1_n_5 ,\pixel_counter_reg[0]_i_1_n_6 ,\pixel_counter_reg[0]_i_1_n_7 }),
        .S({pixel_counter_reg[3:1],\pixel_counter[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[10] 
       (.C(clk),
        .CE(pixel_counter),
        .D(\pixel_counter_reg[8]_i_1_n_5 ),
        .Q(pixel_counter_reg[10]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[11] 
       (.C(clk),
        .CE(pixel_counter),
        .D(\pixel_counter_reg[8]_i_1_n_4 ),
        .Q(pixel_counter_reg[11]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[1] 
       (.C(clk),
        .CE(pixel_counter),
        .D(\pixel_counter_reg[0]_i_1_n_6 ),
        .Q(pixel_counter_reg[1]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[2] 
       (.C(clk),
        .CE(pixel_counter),
        .D(\pixel_counter_reg[0]_i_1_n_5 ),
        .Q(pixel_counter_reg[2]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[3] 
       (.C(clk),
        .CE(pixel_counter),
        .D(\pixel_counter_reg[0]_i_1_n_4 ),
        .Q(pixel_counter_reg[3]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[4] 
       (.C(clk),
        .CE(pixel_counter),
        .D(\pixel_counter_reg[4]_i_1_n_7 ),
        .Q(pixel_counter_reg[4]),
        .R(pixel_counter0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_counter_reg[4]_i_1 
       (.CI(\pixel_counter_reg[0]_i_1_n_0 ),
        .CO({\pixel_counter_reg[4]_i_1_n_0 ,\pixel_counter_reg[4]_i_1_n_1 ,\pixel_counter_reg[4]_i_1_n_2 ,\pixel_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_counter_reg[4]_i_1_n_4 ,\pixel_counter_reg[4]_i_1_n_5 ,\pixel_counter_reg[4]_i_1_n_6 ,\pixel_counter_reg[4]_i_1_n_7 }),
        .S(pixel_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[5] 
       (.C(clk),
        .CE(pixel_counter),
        .D(\pixel_counter_reg[4]_i_1_n_6 ),
        .Q(pixel_counter_reg[5]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[6] 
       (.C(clk),
        .CE(pixel_counter),
        .D(\pixel_counter_reg[4]_i_1_n_5 ),
        .Q(pixel_counter_reg[6]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[7] 
       (.C(clk),
        .CE(pixel_counter),
        .D(\pixel_counter_reg[4]_i_1_n_4 ),
        .Q(pixel_counter_reg[7]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[8] 
       (.C(clk),
        .CE(pixel_counter),
        .D(\pixel_counter_reg[8]_i_1_n_7 ),
        .Q(pixel_counter_reg[8]),
        .R(pixel_counter0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \pixel_counter_reg[8]_i_1 
       (.CI(\pixel_counter_reg[4]_i_1_n_0 ),
        .CO({\NLW_pixel_counter_reg[8]_i_1_CO_UNCONNECTED [3],\pixel_counter_reg[8]_i_1_n_1 ,\pixel_counter_reg[8]_i_1_n_2 ,\pixel_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\pixel_counter_reg[8]_i_1_n_4 ,\pixel_counter_reg[8]_i_1_n_5 ,\pixel_counter_reg[8]_i_1_n_6 ,\pixel_counter_reg[8]_i_1_n_7 }),
        .S(pixel_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[9] 
       (.C(clk),
        .CE(pixel_counter),
        .D(\pixel_counter_reg[8]_i_1_n_6 ),
        .Q(pixel_counter_reg[9]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[0] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_counter_reg[0]),
        .Q(write_address[0]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[10] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_counter_reg[10]),
        .Q(write_address[10]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[11] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_counter_reg[11]),
        .Q(write_address[11]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[1] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_counter_reg[1]),
        .Q(write_address[1]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[2] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_counter_reg[2]),
        .Q(write_address[2]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[3] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_counter_reg[3]),
        .Q(write_address[3]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[4] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_counter_reg[4]),
        .Q(write_address[4]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[5] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_counter_reg[5]),
        .Q(write_address[5]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[6] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_counter_reg[6]),
        .Q(write_address[6]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[7] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_counter_reg[7]),
        .Q(write_address[7]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[8] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_counter_reg[8]),
        .Q(write_address[8]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_address_reg[9] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_counter_reg[9]),
        .Q(write_address[9]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_data_reg[0] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_data[0]),
        .Q(write_data[0]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_data_reg[1] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_data[1]),
        .Q(write_data[1]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_data_reg[2] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_data[2]),
        .Q(write_data[2]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_data_reg[3] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_data[3]),
        .Q(write_data[3]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_data_reg[4] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_data[4]),
        .Q(write_data[4]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_data_reg[5] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_data[5]),
        .Q(write_data[5]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_data_reg[6] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_data[6]),
        .Q(write_data[6]),
        .R(pixel_counter0));
  FDRE #(
    .INIT(1'b0)) 
    \write_data_reg[7] 
       (.C(clk),
        .CE(pixel_counter),
        .D(pixel_data[7]),
        .Q(write_data[7]),
        .R(pixel_counter0));
  LUT4 #(
    .INIT(16'hABAA)) 
    write_en_i_1
       (.I0(pixel_counter),
        .I1(pixel_counter0),
        .I2(\FSM_onehot_FSM_state_reg_n_0_[2] ),
        .I3(write_en),
        .O(write_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    write_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(write_en_i_1_n_0),
        .Q(write_en),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
