module alu(
    input [7:0]A,
    input [7:0]B,
    output reg [8:0]Y,
    input [2:0]op,
  output reg carry,
  output reg borrow,
  output reg zero

);
always@(*)begin
Y=9'b0;
carry=1'b0;
borrow=1'b0;
case(op)
3'b000:begin
Y = {1'b0, A} + {1'b0, B};
carry = Y[8];
end
3'b001:begin
Y = {1'b0, A} - {1'b0, B};
borrow=(A<B);
end
3'b010:begin
Y=A&B;
end
3'b100:begin
Y=A|B;
end
3'b101:begin
Y=~A;
end
3'b110:begin
Y = A << 1;
end
3'b111:begin
Y = A >> 1;
end
endcase
if(Y==9'b000000000)
zero=1'b1;
 else
 zero=1'b0;
 end
 endmodule