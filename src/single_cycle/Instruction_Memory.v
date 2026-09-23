module Instruction_Memory(input [31:0] addr, output [31:0] instr);
 reg [31:0] mem[0:255];
 integer i;
 initial begin for(i=0;i<256;i=i+1) mem[i]=32'h00000013; $readmemh("program.hex", mem); end
 assign instr = mem[addr[9:2]];
endmodule
