module mux(a,b,s,y);
input a;
input b;
input s;
output y;
assign y=s?b:a;
endmodule