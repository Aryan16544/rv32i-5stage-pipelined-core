`timescale 1ns / 1ps

module mem_wb_reg (
    input  wire        clk,
    input  wire        rst,

    /* ===============================
       FROM MEM STAGE
       =============================== */
    input  wire [31:0] mem_mem_data,
    input  wire [31:0] mem_alu_result,
    input  wire [4:0]  mem_rd,

    input  wire        mem_regwrite,
    input  wire        mem_memtoreg,

    /* ===============================
       TO WB STAGE
       =============================== */
    output reg  [31:0] wb_mem_data,
    output reg  [31:0] wb_alu_result,
    output reg  [4:0]  wb_rd,

    output reg         wb_regwrite,
    output reg         wb_memtoreg
);

    always @(posedge clk) begin
        if (rst) begin
            wb_mem_data   <= 32'b0;
            wb_alu_result <= 32'b0;
            wb_rd         <= 5'b0;

            wb_regwrite   <= 1'b0;
            wb_memtoreg   <= 1'b0;

        end else if (!mem_regwrite) begin
            // 🔥 NO VALID WB → FORCE CLEAN NOP
            wb_mem_data   <= 32'b0;
            wb_alu_result <= 32'b0;
            wb_rd         <= 5'b0;

            wb_regwrite   <= 1'b0;
            wb_memtoreg   <= 1'b0;

        end else begin
            // NORMAL WRITEBACK
            wb_mem_data   <= mem_mem_data;
            wb_alu_result <= mem_alu_result;
            wb_rd         <= mem_rd;

            wb_regwrite   <= mem_regwrite;
            wb_memtoreg   <= mem_memtoreg;
        end
    end

endmodule
