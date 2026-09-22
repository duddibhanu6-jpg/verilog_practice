module tb_decoder;
wire y0,y1,y2,y3;
reg s0,s1;
decoder uut (.s0(s0),.s1(s1),.y0(y0),.y1(y1),.y2(y2),.y3(y3));
initial begin
 $dumpfile("tb_decoder.vcd");
        $dumpvars(0, tb_decoder);

$display("time  s0 s1 y0 y1  y2  y3");
$monitor("%t %b %b %b %b %b %b ",$time, s0, s1, y0, y1, y2, y3);
s0= 0; s1=0; #10
s0=0;s1=1;#10
s0=1;s1=0; #10
s0=1;s1=1;#10
$finish;
end 
endmodule