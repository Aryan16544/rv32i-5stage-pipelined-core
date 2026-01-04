`timescale 1ns / 1ps

module id_stage(
    input  wire        clk,
    input  wire        rst,
    input  wire [31:0] id_pc,
    input  wire [31:0] id_instr,

    // WB feedback
    input  wire        wb_regwrite,
    input  wire [4:0]  wb_rd,
    input  wire [31:0] wb_wdata,

    // To EX stage
    output wire [31:0] rs1_data,
    output wire [31:0] rs2_data,
    output wire [31:0] imm_out,

    output wire [4:0]  rs1,
    output wire [4:0]  rs2,
    output wire [4:0]  rd,

    output wire [2:0]  funct3,
    output wire [6:0]  funct7,

    output wire        regwrite,
    output wire        memread,
    output wire        memwrite,
    output wire        memtoreg,
    output wire        alusrc,
    output wire        branch,
    output wire [1:0]  aluop,
    output wire        is_ecall,
    output wire        is_mret
    );

    /* ===============================
       SAFE INSTRUCTION DECODE
       =============================== */

    // Detect NOP (ADDI x0,x0,0)
    wire is_nop;
    assign is_nop = (id_instr == 32'h00000013);

    // Opcode
    wire [6:0] opcode;
    assign opcode = id_instr[6:0];

    // Register fields (guarded)
    assign rd     = is_nop ? 5'b0 : id_instr[11:7];
    assign funct3 = is_nop ? 3'b0 : id_instr[14:12];
    assign rs1    = is_nop ? 5'b0 : id_instr[19:15];
    assign rs2    = is_nop ? 5'b0 : id_instr[24:20];
    assign funct7 = is_nop ? 7'b0 : id_instr[31:25];

    /* ===============================
       REGISTER FILE
       =============================== */
    register_file u_regfile (
        .clk(clk),
        .rst(rst),
        .rs1(rs1),
        .rs2(rs2),
        .rd(wb_rd),
        .rd_we(wb_regwrite),
        .rd_data(wb_wdata),
        .rs1_data(rs1_data),
        .rs2_data(rs2_data)
    );

    /* ===============================
       IMMEDIATE GENERATOR (SAFE)
       =============================== */
    immediate_gen u_immgen (
        .instr(is_nop ? 32'b0 : id_instr),
        .imm_out(imm_out)
    );

    /* ===============================
       CONTROL UNIT (GUARDED)
       =============================== */
    wire cu_regwrite, cu_memread, cu_memwrite;
    wire cu_memtoreg, cu_alusrc, cu_branch;
    wire [1:0] cu_aluop;

    control_unit u_control (
        .opcode(is_nop ? 7'b0 : opcode),
        .regwrite(cu_regwrite),
        .memread(cu_memread),
        .memwrite(cu_memwrite),
        .memtoreg(cu_memtoreg),
        .alusrc(cu_alusrc),
        .branch(cu_branch),
        .aluop(cu_aluop)
    );

    // Final gated controls
    assign regwrite = is_nop ? 1'b0 : cu_regwrite;
    assign memread  = is_nop ? 1'b0 : cu_memread;
    assign memwrite = is_nop ? 1'b0 : cu_memwrite;
    assign memtoreg = is_nop ? 1'b0 : cu_memtoreg;
    assign alusrc   = is_nop ? 1'b0 : cu_alusrc;
    assign branch   = is_nop ? 1'b0 : cu_branch;
    assign aluop    = is_nop ? 2'b00 : cu_aluop;
    // ===============================
// CSR INSTRUCTION DETECT
// ===============================
assign is_ecall = (id_instr == 32'h00000073);
assign is_mret  = (id_instr == 32'h30200073);


endmodule
