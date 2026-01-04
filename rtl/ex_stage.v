`timescale 1ns / 1ps

module ex_stage(
    input wire [31:0] ex_pc,
    input wire [31:0] ex_rs1_data,
    input wire [31:0] ex_rs2_data,
    input wire [31:0] ex_imm,
    input wire [4:0]  ex_rd,
    input wire [4:0]  ex_rs1,      // 🔥 REQUIRED
    input wire [4:0]  ex_rs2,      // 🔥 REQUIRED
    input wire [2:0]  ex_funct3,
    input wire [6:0]  ex_funct7,

    input wire ex_regwrite,
    input wire ex_memread,
    input wire ex_memwrite,
    input wire ex_memtoreg,
    input wire ex_alusrc,
    input wire ex_branch,
    input wire [1:0] ex_aluop,

    // 🔥 FORWARDING INPUTS
    input wire [1:0]  forward_a,
    input wire [1:0]  forward_b,
    input wire [31:0] exmem_alu_result,
    input wire [31:0] wb_wdata,

    output reg  [31:0] alu_result,
    output reg  [31:0] store_data,
    output reg  [4:0]  rd_out,
    output reg         branch_taken,
    output reg  [31:0] branch_target
);


    /* ===============================
       VALID INSTRUCTION DETECT
       =============================== */
    wire ex_valid;
    assign ex_valid = ex_regwrite | ex_memread | ex_memwrite | ex_branch;

    /* ===============================
       ALU CONTROL (GUARDED)
       =============================== */
    wire [3:0] alu_ctrl;
    alu_control u_ctrl (
        .aluop(ex_aluop),
        .funct3(ex_valid ? ex_funct3 : 3'b000),
        .funct7(ex_valid ? ex_funct7 : 7'b0000000),
        .alu_ctrl(alu_ctrl)
    );

    /* ===============================
       ALU INPUTS (GUARDED)
       =============================== */
    wire [31:0] alu_in2;
    assign alu_in2 = ex_alusrc ? ex_imm : ex_rs2_data;

    wire [31:0] alu_a = ex_valid ? ex_rs1_data : 32'b0;
    wire [31:0] alu_b = ex_valid ? alu_in2      : 32'b0;

    wire [31:0] alu_result_int;
    wire zero;

    alu u_alu (
        .a(alu_a),
        .b(alu_b),
        .alu_ctrl(alu_ctrl),
        .result(alu_result_int),
        .zero(zero)
    );

    /* ===============================
       OUTPUT GUARDING (NO X ALLOWED)
       =============================== */
    always @(*) begin
        if (!ex_valid) begin
            alu_result   = 32'b0;
            store_data   = 32'b0;
            rd_out       = 5'b0;
            branch_taken = 1'b0;
            branch_target= 32'b0;
        end else begin
            alu_result   = alu_result_int;
            store_data   = ex_rs2_data;
            rd_out       = ex_rd;
            branch_taken = ex_branch & zero;
            branch_target= ex_pc + ex_imm;
        end
    end

endmodule
