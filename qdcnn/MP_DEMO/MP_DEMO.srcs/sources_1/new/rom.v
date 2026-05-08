module rom #(
    parameter WIDTH     = 8,
    parameter DEPTH     = 1024,
    parameter INIT_FILE = "",
    parameter AW        = $clog2(DEPTH)
)(
    input                  clk,
    input                  ena,
    input  [AW-1:0]        addra,
    output reg [WIDTH-1:0] douta
);
    (* ram_style = "block" *) reg [WIDTH-1:0] mem [0:DEPTH-1];

    initial begin
        if (INIT_FILE != "")
            $readmemh(INIT_FILE, mem);
    end

    always @(posedge clk)
        if (ena) douta <= mem[addra];
endmodule