`timescale 1ns / 1ps

module tb_soc;

    reg clk = 0;
    reg rst = 1;

    always #5 clk = ~clk;

    soc_test_top DUT (
        .clk(clk),
        .rst(rst)
    );

    initial begin
        $display("==============================================");
        $display(" RV32I SoC Simulation Started ");
        $display("==============================================");
        rst = 1;
        #20 rst = 0;
        $display("[%0t] RESET DEASSERTED", $time);
    end

    always @(posedge clk) begin
        if (!rst) begin
            $display(
                "%8t | PC=%08h | INSTR=%08h",
                $time,
                DUT.core.if_pc,
                DUT.core.if_instr
            );

            if (DUT.core.MEM.dmem_we) begin
                $display(
                    "        STORE  ADDR=%08h  DATA=%08h",
                    DUT.core.MEM.dmem_addr,
                    DUT.core.MEM.dmem_wdata
                );
            end

            if (DUT.core.wb_regwrite) begin
                $display(
                    "        WB     x%0d <= %08h",
                    DUT.core.wb_rd,
                    DUT.core.wb_wdata
                );
            end
        end
    end

    always @(posedge clk) begin
        if (!rst && DUT.core.if_instr == 32'h0000006f) begin
            $display("==============================================");
            $display(" HALT");
            $display("==============================================");
            $stop;
        end
    end

endmodule
