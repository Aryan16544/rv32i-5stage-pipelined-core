`timescale 1ns / 1ps

module soc_test_top (
    input wire clk,
    input wire rst
);

    // Instruction bus
    wire [31:0] imem_addr;
    wire [31:0] imem_rdata;

    // Data bus
    wire [31:0] dmem_addr;
    wire [31:0] dmem_wdata;
    wire        dmem_we;
    wire [31:0] dmem_rdata;

    // ================= CORE =================
    rv32i_core_top core (
        .clk(clk),
        .rst(rst),

        .imem_addr(imem_addr),
        .imem_rdata(imem_rdata),

        .dmem_addr(dmem_addr),
        .dmem_wdata(dmem_wdata),
        .dmem_we(dmem_we),
        .dmem_rdata(dmem_rdata)
    );

    // ============== INSTRUCTION MEMORY ==============
    imem IMEM (
        .clk(clk),
        .rst(rst),
        .addr(imem_addr),
        .rdata(imem_rdata)
    );

    // ================= DATA MEMORY ==================
    dmem DMEM (
        .clk(clk),
        .rst(rst),
        .we(dmem_we),
        .addr(dmem_addr),
        .wdata(dmem_wdata),
        .rdata(dmem_rdata)
    );

endmodule
