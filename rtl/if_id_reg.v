`timescale 1ns / 1ps

module if_id_reg (
    input  wire        clk,
    input  wire        rst,

    // Control
    input  wire        stall,
    input  wire        flush,

    // From IF stage
    input  wire [31:0] if_pc,
    input  wire [31:0] if_instr,

    // To ID stage
    output reg  [31:0] id_pc,
    output reg  [31:0] id_instr
);

    always @(posedge clk) begin
        if (rst) begin
            id_pc    <= 32'b0;
            id_instr <= 32'h00000013; // NOP
        end
        else if (flush) begin
            // FLUSH has highest priority
            id_pc    <= 32'b0;
            id_instr <= 32'h00000013; // Inject NOP
        end
        else if (stall) begin
            // Explicit hold (prevents X)
            id_pc    <= id_pc;
            id_instr <= id_instr;
        end
        else begin
            id_pc    <= if_pc;
            id_instr <= if_instr;
        end
    end

endmodule
