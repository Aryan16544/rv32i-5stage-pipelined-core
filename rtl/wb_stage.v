`timescale 1ns / 1ps

module wb_stage (
    input  wire [31:0] wb_mem_data,
    input  wire [31:0] wb_alu_result,
    input  wire [4:0]  wb_rd,

    input  wire        wb_regwrite,
    input  wire        wb_memtoreg,

    output wire        regwrite_out,
    output wire [4:0]  rd_out,
    output wire [31:0] wdata_out
);

    // Writeback data (GUARDED)
    assign wdata_out = (wb_regwrite) ?
                       (wb_memtoreg ? wb_mem_data : wb_alu_result)
                       : 32'b0;

    // Register destination (GUARDED)
    assign rd_out = (wb_regwrite) ? wb_rd : 5'b0;

    // Write enable
    assign regwrite_out = wb_regwrite;

endmodule
