`timescale 1ns / 1ps

module dmem #(
    parameter DEPTH = 1024,
    parameter ADDR_WIDTH = $clog2(DEPTH)
)(
    input  wire        clk,
    input  wire        rst,
    input  wire        we,
    input  wire [31:0] addr,
    input  wire [31:0] wdata,
    output reg  [31:0] rdata
);

    reg [31:0] mem [0:DEPTH-1];
    integer i;

    wire [ADDR_WIDTH-1:0] word_addr;
    assign word_addr = addr[ADDR_WIDTH+1:2];

    // Memory init (🔥 kills X forever)
    initial begin
        for (i = 0; i < DEPTH; i = i + 1)
            mem[i] = 32'b0;
    end

    always @(posedge clk) begin
        if (rst) begin
            rdata <= 32'b0;
        end else if (we) begin
            mem[word_addr] <= wdata;
            rdata <= wdata;          // write-through
        end else begin
            rdata <= mem[word_addr]; // always defined
        end
    end

endmodule
