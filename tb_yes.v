module tb_yes;
reg a,b;
wire y;
yes uut (.a(a),.b(b),.y(y));
initial begin
$dumpfile("yes.vcd");
        $dumpvars(0, tb_yes);
$display("                time  a b y");
$monitor("%t  %b %b %b",$time ,a,b,y );
a=0 ; b=0; #10
a=0 ; b=1; #10
a=1 ; b=0; #10
a=1 ; b=1; #10
$finish;
end
endmodule