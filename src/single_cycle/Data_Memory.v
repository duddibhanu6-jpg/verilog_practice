module Data_Memory(input clk, MemRead, MemWrite, input [31:0] addr, wdata, output reg [31:0] rdata);
 reg [31:0] mem[0:255];
 integer i; initial for(i=0;i<256;i=i+1) mem[i]=0;
 always @(posedge clk) if(MemWrite) mem[addr[9:2]] <= wdata;
 always @(*) if(MemRead) rdata = mem[addr[9:2]]; else rdata=0;
endmodule
