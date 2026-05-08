`timescale 1ns / 1ps

// wraps read_pixels output as AXI4-Stream for the CDC fifo
// runs in cam_pclk domain

module read_pixels_axis_adapter (
  input  wire        clk,
  input  wire        vsync,

  input  wire [15:0] pixel_data,
  input  wire        pixel_valid,

  output wire [15:0] m_axis_tdata,
  output wire        m_axis_tvalid,
  input  wire        m_axis_tready,
  output wire        m_axis_tlast,
  output reg         m_axis_tuser
);

  reg [9:0] pixel_cnt = 10'd0;
  reg vsync_prev = 1'b1;
  reg sof_pending = 1'b0;

  // SOF fires on the first valid pixel after vsync edge
  always @(posedge clk) begin
    vsync_prev <= vsync;

    if (vsync && !vsync_prev)
      sof_pending <= 1'b1;

    if (pixel_valid && sof_pending) begin
      m_axis_tuser <= 1'b1;
      sof_pending  <= 1'b0;
    end else begin
      m_axis_tuser <= 1'b0;
    end

    if (pixel_valid) begin
      if (pixel_cnt == 10'd639)
        pixel_cnt <= 10'd0;
      else
        pixel_cnt <= pixel_cnt + 10'd1;
    end
  end

  assign m_axis_tdata  = pixel_data;
  assign m_axis_tvalid = pixel_valid;
  assign m_axis_tlast  = pixel_valid && (pixel_cnt == 10'd639);

endmodule
