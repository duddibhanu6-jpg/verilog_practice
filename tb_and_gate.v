`timescale 1ns/1ns

module tb_and_gate;
    reg a, b;
    wire y;

    and_gate uut (.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("and_gate.vcd");
        $dumpvars(0, tb_and_gate);

        $display("Time | A B | Y");
        $display("----------------");

        a = 0; b = 0; #10;
        $display("%0t  | %b %b | %b", $time, a, b, y);

        a = 0; b = 1; #10;
        $display("%0t  | %b %b | %b", $time, a, b, y);

        a = 1; b = 0; #10;
        $display("%0t  | %b %b | %b", $time, a, b, y);

        a = 1; b = 1; #10;
        $display("%0t  | %b %b | %b", $time, a, b, y);

        $finish;
    end
endmodule