`timescale 1ns / 1ps

module control_unit (
    input  wire [6:0] opcode,

    output reg        regwrite,
    output reg        memread,
    output reg        memwrite,
    output reg        memtoreg,
    output reg        alusrc,
    output reg        branch,
    output reg [1:0]  aluop
);

    always @(*) begin
        // Default
        regwrite = 0;
        memread  = 0;
        memwrite = 0;
        memtoreg = 0;
        alusrc   = 0;
        branch   = 0;
        aluop    = 2'b00;

        case (opcode)

            // R-type
            7'b0110011: begin
                regwrite = 1;
                alusrc   = 0;
                aluop    = 2'b10;
            end

            // I-type (ADDI)
            7'b0010011: begin
                regwrite = 1;
                alusrc   = 1;
                aluop    = 2'b11;
            end

            // Load (LW)
            7'b0000011: begin
                regwrite = 1;
                memread  = 1;
                memtoreg = 1;
                alusrc   = 1;
                aluop    = 2'b00;
            end

            // Store (SW)
            7'b0100011: begin
                memwrite = 1;
                alusrc   = 1;
                aluop    = 2'b00;
            end

            // Branch (BEQ)
            7'b1100011: begin
                branch = 1;
                aluop  = 2'b01;
            end

            default: begin
                // NOP
            end
        endcase
    end

endmodule
