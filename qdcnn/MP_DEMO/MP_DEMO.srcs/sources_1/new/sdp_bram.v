module sdp_bram #(
    parameter WIDTH = 8,
    parameter DEPTH = 1024,
    parameter AW    = $clog2(DEPTH)
)(
    input                  clk,
    input  [AW-1:0]        addra,
    input  [WIDTH-1:0]     dina,
    input                  wea,
    input  [AW-1:0]        addrb,
    output reg [WIDTH-1:0] doutb
);
    (* ram_style = "block" *) reg [WIDTH-1:0] mem [0:DEPTH-1];

    always @(posedge clk) begin
        if (wea) mem[addra] <= dina;
        doutb <= mem[addrb];
    end
endmodule