module tb_mux;
reg a,b;
reg s;
wire y;
mux uut(.a(a),.b(b),.s(s),.y(y));
initial begin
$dumpfile("mux.vcd");
        $dumpvars(0, tb_mux);
$display("time|a|b|s|y ");
$monitor("%0t   %b|%b|%b|%b",$time, a, b, s, y);
a=1'b0;b=1'b0;s=0;#5
a=1'b0;b=1'b1;s=0;#5
a=1'b1;b=1'b0;s=0;#5
a=1'b1;b=1'b1;s=0;#5
a=1'b0;b=1'b0;s=1;#5
a=1'b0;b=1'b1;s=1;#5
a=1'b1;b=1'b0;s=1;#5
a=1'b1;b=1'b1;s=1;#5

$finish;
end
endmodule