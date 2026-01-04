`timescale 1ns / 1ps

module if_stage(
    input  wire        clk,
    input  wire        rst,

    // Control
    input  wire        stall,
    input  wire        flush,
    input  wire        branch_taken,
    input  wire [31:0] branch_target,

    // ===== CSR TRAP CONTROL =====
    input  wire        csr_trap_enter,   // ECALL / exception
    input  wire        csr_trap_return,  // MRET
    input  wire [31:0] csr_mtvec,
    input  wire [31:0] csr_mepc,

    // Instruction memory interface (SYNC)
    input  wire [31:0] imem_rdata,
    output reg  [31:0] imem_addr,

    // Outputs to next stage
    output reg  [31:0] pc_out,
    output reg  [31:0] pc4_out,
    output reg  [31:0] instr_out
);

    /* ===============================
       PROGRAM COUNTER
       =============================== */
    reg [31:0] pc;

    always @(posedge clk) begin
        if (rst) begin
            pc <= 32'h00000000;
        end else if (!stall) begin
            // 🔥 Priority: CSR > Branch > PC+4
            if (csr_trap_enter)
                pc <= csr_mtvec;
            else if (csr_trap_return)
                pc <= csr_mepc;
            else if (branch_taken)
                pc <= branch_target;
            else
                pc <= pc + 32'd4;
        end
    end

    /* ===============================
       IMEM ADDRESS REGISTER
       =============================== */
    always @(posedge clk) begin
        if (rst)
            imem_addr <= 32'h00000000;
        else if (!stall)
            imem_addr <= pc;
    end

    /* ===============================
       IF/ID OUTPUT REGISTER
       =============================== */
    always @(posedge clk) begin
        if (rst || flush || csr_trap_enter || csr_trap_return) begin
            instr_out <= 32'h00000013; // NOP
            pc_out    <= 32'b0;
            pc4_out   <= 32'b0;
        end else if (!stall) begin
            instr_out <= imem_rdata;   // sync IMEM data
            pc_out    <= pc;
            pc4_out   <= pc + 32'd4;
        end
    end

endmodule
