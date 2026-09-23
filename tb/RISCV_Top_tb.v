module RISCV_Top_tb;
 reg clk, reset;
 RISCV_Top uut(clk, reset);
 initial begin clk=0; forever #5 clk=~clk; end
 initial begin $dumpfile("dump.vcd"); $dumpvars(0, RISCV_Top_tb); end
 initial begin reset=1; #15; reset=0; #300; $display("DONE regs[1]=%h regs[2]=%h regs[3]=%h", uut.RF.regs[1], uut.RF.regs[2], uut.RF.regs[3]); $finish; end
endmodule
