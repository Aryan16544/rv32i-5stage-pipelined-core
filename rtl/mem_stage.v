`timescale 1ns / 1ps

module mem_stage (
    input  wire        clk,
    input  wire        rst,

    /* ===============================
       FROM EX/MEM
       =============================== */
    input  wire [31:0] mem_alu_result,
    input  wire [31:0] mem_store_data,
    input  wire [4:0]  mem_rd,

    input  wire        mem_regwrite,
    input  wire        mem_memread,
    input  wire        mem_memwrite,
    input  wire        mem_memtoreg,

    /* ===============================
       DATA MEMORY INTERFACE
       =============================== */
    output reg  [31:0] dmem_addr,
    output reg  [31:0] dmem_wdata,
    output reg         dmem_we,
    input  wire [31:0] dmem_rdata,

    /* ===============================
       TO MEM/WB
       =============================== */
    output reg  [31:0] wb_mem_data,
    output reg  [31:0] wb_alu_result,
    output reg  [4:0]  wb_rd,

    output reg         wb_regwrite,
    output reg         wb_memtoreg
);

    always @(posedge clk) begin
        if (rst) begin
            dmem_addr     <= 32'b0;
            dmem_wdata    <= 32'b0;
            dmem_we       <= 1'b0;

            wb_mem_data   <= 32'b0;
            wb_alu_result <= 32'b0;
            wb_rd         <= 5'b0;

            wb_regwrite   <= 1'b0;
            wb_memtoreg   <= 1'b0;
        end else begin
            /* ===== Memory access ===== */
            dmem_addr  <= mem_alu_result;
            dmem_wdata <= mem_store_data;
            dmem_we    <= mem_memwrite;   // asserted for exactly 1 cycle

            /* ===== Capture outputs ===== */
            wb_mem_data   <= dmem_rdata;  // sync DMEM data
            wb_alu_result <= mem_alu_result;
            wb_rd         <= mem_rd;

            wb_regwrite   <= mem_regwrite;
            wb_memtoreg   <= mem_memtoreg;
        end
    end

endmodule
