`timescale 1ns / 1ps

module ex_mem_reg (
    input  wire        clk,
    input  wire        rst,
    input  wire        flush,

    /* ===============================
       FROM EX STAGE
       =============================== */
    input  wire [31:0] ex_alu_result,
    input  wire [31:0] ex_store_data,
    input  wire [4:0]  ex_rd,

    input  wire        ex_regwrite,
    input  wire        ex_memread,
    input  wire        ex_memwrite,
    input  wire        ex_memtoreg,

    /* ===============================
       TO MEM STAGE
       =============================== */
    output reg  [31:0] mem_alu_result,
    output reg  [31:0] mem_store_data,
    output reg  [4:0]  mem_rd,

    output reg         mem_regwrite,
    output reg         mem_memread,
    output reg         mem_memwrite,
    output reg         mem_memtoreg
);

    always @(posedge clk) begin
        if (rst || flush) begin
            // Inject NOP
            mem_alu_result <= 32'b0;
            mem_store_data <= 32'b0;
            mem_rd         <= 5'b0;

            mem_regwrite   <= 1'b0;
            mem_memread    <= 1'b0;
            mem_memwrite   <= 1'b0;
            mem_memtoreg   <= 1'b0;
        end
        else begin
            mem_alu_result <= ex_alu_result;
            mem_store_data <= ex_store_data;
            mem_rd         <= ex_rd;

            mem_regwrite   <= ex_regwrite;
            mem_memread    <= ex_memread;
            mem_memwrite   <= ex_memwrite;
            mem_memtoreg   <= ex_memtoreg;
        end
    end

endmodule
