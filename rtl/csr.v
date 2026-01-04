`timescale 1ns / 1ps

module csr_file (
    input  wire        clk,
    input  wire        rst,

    // CSR access
    input  wire        csr_we,
    input  wire [11:0] csr_addr,
    input  wire [31:0] csr_wdata,
    output reg  [31:0] csr_rdata,

    // Trap interface
    input  wire        trap_enter,
    input  wire        trap_return,
    input  wire [31:0] trap_pc,
    input  wire [31:0] trap_cause,

    output reg  [31:0] mtvec,
    output reg  [31:0] mepc
);

    reg [31:0] mstatus;
    reg [31:0] mcause;

    /* ===============================
       WRITE LOGIC
       =============================== */
    always @(posedge clk) begin
        if (rst) begin
            mstatus <= 32'b0;
            mtvec   <= 32'h00000100; // trap vector base
            mepc    <= 32'b0;
            mcause  <= 32'b0;
        end else begin
            if (csr_we) begin
                case (csr_addr)
                    12'h300: mstatus <= csr_wdata;
                    12'h305: mtvec   <= csr_wdata;
                    12'h341: mepc    <= csr_wdata;
                    12'h342: mcause  <= csr_wdata;
                endcase
            end

            if (trap_enter) begin
                mepc   <= trap_pc;
                mcause <= trap_cause;
            end
        end
    end

    /* ===============================
       READ LOGIC
       =============================== */
    always @(*) begin
        case (csr_addr)
            12'h300: csr_rdata = mstatus;
            12'h305: csr_rdata = mtvec;
            12'h341: csr_rdata = mepc;
            12'h342: csr_rdata = mcause;
            default: csr_rdata = 32'b0;
        endcase
    end

endmodule
