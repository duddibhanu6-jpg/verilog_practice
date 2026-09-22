`timescale 1ns/1ns

module tb_not_gate;
    reg a;
    wire y;

    not_gate uut (.a(a), .y(y));

    initial begin
        $dumpfile("not_gate.vcd");
        $dumpvars(0, tb_not_gate);

        $display("Time | A | Y");
        $display("----------------");

        a = 0; #10
        $display("%0t  | %b | %b", $time, a, y);

        a = 1; #10
        $display("%0t  | %b  | %b", $time, a,  y);

        $finish;
    end
endmodule