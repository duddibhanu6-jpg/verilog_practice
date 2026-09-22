`timescale 1ns/1ns

module tb_or_gate;
    reg a, b;      // inputs - we will drive these
    wire y;        // output - we will observe this

    // Instantiate the OR gate
    or_gate uut (.a(a), .b(b), .y(y));
    initial begin
        // Create waveform file to view in GTKWave
        $dumpfile("or_gate.vcd");
        $dumpvars(0, tb_or_gate);
        
        // Print header
        $display("Time | A B | Y");
        $display("-----------------");

        // Test all 4 combinations
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