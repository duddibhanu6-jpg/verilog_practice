module tb_alu;
reg [7:0]A;
reg [7:0]B;
reg [2:0]op;
wire [8:0]Y;
wire carry;
wire borrow;
wire zero;
alu uut (.A(A),.B(B),.op(op),.Y(Y),.carry(carry),.borrow(borrow),.zero(zero));
initial begin
$display("   TIME A B op Y cary borrow zero");
$monitor("%t   %b %b %b %b %b %b %b",$time,A,B,op,Y,carry,borrow,zero);
//add
A=8'd15; B=8'd10; op=3'b000; #10
//sub
A=8'd13; B=8'd18; op=3'b001; #10
//and
A=8'b10101110; B=8'b01101000; op=3'b010; #10
//or
op=3'b100;#10
//not
op=3'b101;#10
//left shift
op=3'b110;#10
//right shift
op=3'b111;#10
$finish;   
end
endmodule