`timescale 1ns / 1ps

module imem #(
    parameter DEPTH = 1024,
    parameter ADDR_WIDTH = $clog2(DEPTH)
)(
    input  wire        clk,
    input  wire        rst,
    input  wire [31:0] addr,
    output reg  [31:0] rdata
);

    reg [31:0] mem [0:DEPTH-1];

    wire [ADDR_WIDTH-1:0] word_addr;
    assign word_addr = addr[ADDR_WIDTH+1:2];

    always @(posedge clk) begin
        if (rst)
            rdata <= 32'h00000013; // NOP
        else if (word_addr < DEPTH)
            rdata <= mem[word_addr];
        else
            rdata <= 32'h00000013; // NOP padding (🔥 kills X)
    end

    initial begin
        $readmemh("program.mem", mem);
    end

endmodule
