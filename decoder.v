module decoder( y0,y1,y2,y3,s0,s1);
output y0,y1,y2,y3;
input  s0,s1;
assign  y0= ~s0 & ~s1;
assign  y1= ~s0 & s1;
assign  y2= s0 & ~s1;
assign  y3= s0 & s1;
endmodule