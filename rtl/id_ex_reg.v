`timescale 1ns / 1ps

module id_ex_reg (
    input wire clk,
    input wire rst,
    input wire flush,
    input wire stall,   // 🔥 ADDED (VERY IMPORTANT)

    // From ID
    input wire [31:0] id_pc,
    input wire [31:0] id_rs1_data,
    input wire [31:0] id_rs2_data,
    input wire [31:0] id_imm,
    input wire [4:0]  id_rs1,
    input wire [4:0]  id_rs2,
    input wire [4:0]  id_rd,
    input wire [2:0]  id_funct3,
    input wire [6:0]  id_funct7,

    input wire        id_regwrite,
    input wire        id_memread,
    input wire        id_memwrite,
    input wire        id_memtoreg,
    input wire        id_alusrc,
    input wire        id_branch,
    input wire [1:0]  id_aluop,

    // To EX
    output reg [31:0] ex_pc,
    output reg [31:0] ex_rs1_data,
    output reg [31:0] ex_rs2_data,
    output reg [31:0] ex_imm,
    output reg [4:0]  ex_rs1,
    output reg [4:0]  ex_rs2,
    output reg [4:0]  ex_rd,
    output reg [2:0]  ex_funct3,
    output reg [6:0]  ex_funct7,

    output reg        ex_regwrite,
    output reg        ex_memread,
    output reg        ex_memwrite,
    output reg        ex_memtoreg,
    output reg        ex_alusrc,
    output reg        ex_branch,
    output reg [1:0]  ex_aluop
);

    always @(posedge clk) begin
        if (rst) begin
            // RESET → known safe state
            ex_pc        <= 32'b0;
            ex_rs1_data  <= 32'b0;
            ex_rs2_data  <= 32'b0;
            ex_imm       <= 32'b0;

            ex_rs1       <= 5'b0;
            ex_rs2       <= 5'b0;
            ex_rd        <= 5'b0;
            ex_funct3    <= 3'b0;
            ex_funct7    <= 7'b0;

            ex_regwrite  <= 1'b0;
            ex_memread   <= 1'b0;
            ex_memwrite  <= 1'b0;
            ex_memtoreg  <= 1'b0;
            ex_alusrc    <= 1'b0;
            ex_branch    <= 1'b0;
            ex_aluop     <= 2'b00;

        end else if (flush) begin
            // FLUSH → inject NOP
            ex_pc        <= 32'b0;
            ex_rs1_data  <= 32'b0;
            ex_rs2_data  <= 32'b0;
            ex_imm       <= 32'b0;

            ex_rs1       <= 5'b0;
            ex_rs2       <= 5'b0;
            ex_rd        <= 5'b0;
            ex_funct3    <= 3'b0;
            ex_funct7    <= 7'b0;

            ex_regwrite  <= 1'b0;
            ex_memread   <= 1'b0;
            ex_memwrite  <= 1'b0;
            ex_memtoreg  <= 1'b0;
            ex_alusrc    <= 1'b0;
            ex_branch    <= 1'b0;
            ex_aluop     <= 2'b00;

        end else if (stall) begin
            // 🔥 STALL → HOLD VALUES (NO CHANGE)
            ex_pc        <= ex_pc;
            ex_rs1_data  <= ex_rs1_data;
            ex_rs2_data  <= ex_rs2_data;
            ex_imm       <= ex_imm;

            ex_rs1       <= ex_rs1;
            ex_rs2       <= ex_rs2;
            ex_rd        <= ex_rd;
            ex_funct3    <= ex_funct3;
            ex_funct7    <= ex_funct7;

            ex_regwrite  <= ex_regwrite;
            ex_memread   <= ex_memread;
            ex_memwrite  <= ex_memwrite;
            ex_memtoreg  <= ex_memtoreg;
            ex_alusrc    <= ex_alusrc;
            ex_branch    <= ex_branch;
            ex_aluop     <= ex_aluop;

        end else begin
            // NORMAL FLOW
            ex_pc        <= id_pc;
            ex_rs1_data  <= id_rs1_data;
            ex_rs2_data  <= id_rs2_data;
            ex_imm       <= id_imm;

            ex_rs1       <= id_rs1;
            ex_rs2       <= id_rs2;
            ex_rd        <= id_rd;
            ex_funct3    <= id_funct3;
            ex_funct7    <= id_funct7;

            ex_regwrite  <= id_regwrite;
            ex_memread   <= id_memread;
            ex_memwrite  <= id_memwrite;
            ex_memtoreg  <= id_memtoreg;
            ex_alusrc    <= id_alusrc;
            ex_branch    <= id_branch;
            ex_aluop     <= id_aluop;
        end
    end

endmodule
