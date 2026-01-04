`timescale 1ns / 1ps

module rv32i_core_top (
    input  wire        clk,
    input  wire        rst,

    // Instruction memory interface
    output wire [31:0] imem_addr,
    input  wire [31:0] imem_rdata,

    // Data memory interface
    output wire [31:0] dmem_addr,
    output wire [31:0] dmem_wdata,
    output wire        dmem_we,
    input  wire [31:0] dmem_rdata
);

    /* ===============================
       IF STAGE
       =============================== */
    wire [31:0] if_pc, if_pc4, if_instr;
    wire        if_stall, if_flush;
    wire        take_branch;
    wire [31:0] branch_target;

    if_stage IF (
        .clk(clk),
        .rst(rst),
        .stall(if_stall),
        .flush(if_flush),
        .branch_taken(take_branch),
        .branch_target(branch_target),
        .imem_rdata(imem_rdata),
        .imem_addr(imem_addr),
        .pc_out(if_pc),
        .pc4_out(if_pc4),
        .instr_out(if_instr)
    );

    /* ===============================
       IF/ID
       =============================== */
    wire [31:0] id_pc, id_instr;

    if_id_reg IF_ID (
        .clk(clk),
        .rst(rst),
        .stall(if_stall),
        .flush(if_flush),
        .if_pc(if_pc),
        .if_instr(if_instr),
        .id_pc(id_pc),
        .id_instr(id_instr)
    );

    /* ===============================
       ID STAGE
       =============================== */
    wire [31:0] id_rs1_data, id_rs2_data, id_imm;
    wire [4:0]  id_rs1, id_rs2, id_rd;
    wire [2:0]  id_funct3;
    wire [6:0]  id_funct7;
    wire        id_regwrite, id_memread, id_memwrite;
    wire        id_memtoreg, id_alusrc, id_branch;
    wire [1:0]  id_aluop;
   
    wire        wb_regwrite;
    wire [4:0]  wb_rd;
    wire [31:0] wb_wdata;
    wire is_ecall;
    wire  is_mret;

    id_stage ID (
        .clk(clk),
        .rst(rst),
        .id_pc(id_pc),
        .id_instr(id_instr),
        .wb_regwrite(wb_regwrite),
        .wb_rd(wb_rd),
        .wb_wdata(wb_wdata),
        .rs1_data(id_rs1_data),
        .rs2_data(id_rs2_data),
        .imm_out(id_imm),
        .rs1(id_rs1),
        .rs2(id_rs2),
        .rd(id_rd),
        .funct3(id_funct3),
        .funct7(id_funct7),
        .regwrite(id_regwrite),
        .memread(id_memread),
        .memwrite(id_memwrite),
        .memtoreg(id_memtoreg),
        .alusrc(id_alusrc),
        .branch(id_branch),
        .aluop(id_aluop),
        .is_ecall(is_ecall),
        .is_mret(is_mret)
    );
    assign csr_trap_enter  = is_ecall;
assign csr_trap_return = is_mret;

    /* ===============================
       ID/EX
       =============================== */
    wire [31:0] ex_pc, ex_rs1_data, ex_rs2_data, ex_imm;
    wire [4:0]  ex_rs1, ex_rs2, ex_rd;
    wire [2:0]  ex_funct3;
    wire [6:0]  ex_funct7;
    wire        ex_regwrite, ex_memread, ex_memwrite;
    wire        ex_memtoreg, ex_alusrc, ex_branch;
    wire [1:0]  ex_aluop;

    id_ex_reg ID_EX (
        .clk(clk),
        .rst(rst),
        .flush(if_flush),
        .id_pc(id_pc),
        .id_rs1_data(id_rs1_data),
        .id_rs2_data(id_rs2_data),
        .id_imm(id_imm),
        .id_rs1(id_rs1),
        .id_rs2(id_rs2),
        .id_rd(id_rd),
        .id_funct3(id_funct3),
        .id_funct7(id_funct7),
        .id_regwrite(id_regwrite),
        .id_memread(id_memread),
        .id_memwrite(id_memwrite),
        .id_memtoreg(id_memtoreg),
        .id_alusrc(id_alusrc),
        .id_branch(id_branch),
        .id_aluop(id_aluop),
        .ex_pc(ex_pc),
        .ex_rs1_data(ex_rs1_data),
        .ex_rs2_data(ex_rs2_data),
        .ex_imm(ex_imm),
        .ex_rs1(ex_rs1),
        .ex_rs2(ex_rs2),
        .ex_rd(ex_rd),
        .ex_funct3(ex_funct3),
        .ex_funct7(ex_funct7),
        .ex_regwrite(ex_regwrite),
        .ex_memread(ex_memread),
        .ex_memwrite(ex_memwrite),
        .ex_memtoreg(ex_memtoreg),
        .ex_alusrc(ex_alusrc),
        .ex_branch(ex_branch),
        .ex_aluop(ex_aluop)
    );

    /* ===============================
       HAZARD UNIT (FIXED POSITION)
       =============================== */
    wire hazard_stall;

    assign hazard_stall =
        ex_memread &&
        (ex_rd != 0) &&
        ((ex_rd == id_rs1) || (ex_rd == id_rs2));

    assign if_stall    = hazard_stall;
    assign if_flush    = hazard_stall | ex_branch_taken;
    assign take_branch = ex_branch_taken;

    /* ===============================
       FORWARDING UNIT
       =============================== */
    wire [1:0] forward_a, forward_b;

    forwarding_unit FU (
        .exmem_regwrite(mem_regwrite),
        .exmem_rd(mem_rd),
        .memwb_regwrite(wb_regwrite),
        .memwb_rd(wb_rd),
        .idex_rs1(ex_rs1),
        .idex_rs2(ex_rs2),
        .forward_a(forward_a),
        .forward_b(forward_b)
    );

    /* ===============================
       EX STAGE
       =============================== */
    wire [31:0] ex_alu_result, ex_store_data;
    wire        ex_branch_taken;
    wire [4:0]  ex_rd_out;

    ex_stage EX (
        .ex_pc(ex_pc),
        .ex_rs1_data(ex_rs1_data),
        .ex_rs2_data(ex_rs2_data),
        .ex_imm(ex_imm),
        .ex_rd(ex_rd),
        .ex_rs1(ex_rs1),
        .ex_rs2(ex_rs2),
        .ex_funct3(ex_funct3),
        .ex_funct7(ex_funct7),
        .ex_regwrite(ex_regwrite),
        .ex_memread(ex_memread),
        .ex_memwrite(ex_memwrite),
        .ex_memtoreg(ex_memtoreg),
        .ex_alusrc(ex_alusrc),
        .ex_branch(ex_branch),
        .ex_aluop(ex_aluop),
        .forward_a(forward_a),
        .forward_b(forward_b),
        .exmem_alu_result(mem_alu_result),
        .wb_wdata(wb_wdata),
        .alu_result(ex_alu_result),
        .store_data(ex_store_data),
        .rd_out(ex_rd_out),
        .branch_taken(ex_branch_taken),
        .branch_target(branch_target)
    );

    /* ===============================
       EX/MEM, MEM, WB
       =============================== */
    // (UNCHANGED - your code here is already correct)



    /* ===============================
       EX/MEM PIPELINE
       =============================== */
    wire [31:0] mem_alu_result, mem_store_data;
    wire [4:0]  mem_rd;
    wire        mem_regwrite, mem_memread, mem_memwrite, mem_memtoreg;

    ex_mem_reg EX_MEM (
        .clk(clk),
        .rst(rst),
        .flush(ex_branch_taken),
        .ex_alu_result(ex_alu_result),
        .ex_store_data(ex_store_data),
        .ex_rd(ex_rd_out),   // ✅ FIX 2
        .ex_regwrite(ex_regwrite),
        .ex_memread(ex_memread),
        .ex_memwrite(ex_memwrite),
        .ex_memtoreg(ex_memtoreg),
        .mem_alu_result(mem_alu_result),
        .mem_store_data(mem_store_data),
        .mem_rd(mem_rd),
        .mem_regwrite(mem_regwrite),
        .mem_memread(mem_memread),
        .mem_memwrite(mem_memwrite),
        .mem_memtoreg(mem_memtoreg)
    );

    /* ===============================
       MEM STAGE
       =============================== */
    wire [31:0] mem_wb_mem_data, mem_wb_alu_result;
    wire [4:0]  mem_wb_rd;
    wire        mem_wb_regwrite, mem_wb_memtoreg;

    mem_stage MEM (
        .clk(clk),           // ✅ FIX 3
        .rst(rst),           // ✅ FIX 3
        .mem_alu_result(mem_alu_result),
        .mem_store_data(mem_store_data),
        .mem_rd(mem_rd),
        .mem_regwrite(mem_regwrite),
        .mem_memread(mem_memread),
        .mem_memwrite(mem_memwrite),
        .mem_memtoreg(mem_memtoreg),
        .dmem_addr(dmem_addr),
        .dmem_wdata(dmem_wdata),
        .dmem_we(dmem_we),
        .dmem_rdata(dmem_rdata),
        .wb_mem_data(mem_wb_mem_data),
        .wb_alu_result(mem_wb_alu_result),
        .wb_rd(mem_wb_rd),
        .wb_regwrite(mem_wb_regwrite),
        .wb_memtoreg(mem_wb_memtoreg)
    );

    /* ===============================
       MEM/WB + WB STAGE
       =============================== */
    wire [31:0] wb_mem_data_r, wb_alu_result_r;

    mem_wb_reg MEM_WB (
        .clk(clk),
        .rst(rst),
        .mem_mem_data(mem_wb_mem_data),
        .mem_alu_result(mem_wb_alu_result),
        .mem_rd(mem_wb_rd),
        .mem_regwrite(mem_wb_regwrite),
        .mem_memtoreg(mem_wb_memtoreg),
        .wb_mem_data(wb_mem_data_r),
        .wb_alu_result(wb_alu_result_r),
        .wb_rd(wb_rd),
        .wb_regwrite(wb_regwrite),
        .wb_memtoreg(wb_memtoreg)
    );

    wb_stage WB (
        .wb_mem_data(wb_mem_data_r),
        .wb_alu_result(wb_alu_result_r),
        .wb_rd(wb_rd),
        .wb_regwrite(wb_regwrite),
        .wb_memtoreg(wb_memtoreg),
        .regwrite_out(wb_regwrite),
        .rd_out(wb_rd),
        .wdata_out(wb_wdata)
    );
wire csr_trap_enter;
wire csr_trap_return;
wire [31:0] csr_mtvec;
wire [31:0] csr_mepc;
csr_file CSR (
    .clk(clk),
    .rst(rst),

    .csr_we(1'b0),
    .csr_addr(12'b0),
    .csr_wdata(32'b0),
    .csr_rdata(),

    .trap_enter(csr_trap_enter),
    .trap_return(csr_trap_return),
    .trap_pc(ex_pc),
    .trap_cause(32'd11), // ECALL from M-mode

    .mtvec(csr_mtvec),
    .mepc(csr_mepc)
);
assign csr_trap_enter  = is_ecall;
assign csr_trap_return = is_mret;

endmodule
