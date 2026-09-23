module ID_Stage(input clk, reset, input [31:0] instr, pc, pc4, input [31:0] wbdata, input [4:0] waddr, input regwrite, output [31:0] rd1, rd2, imm, output [2:0] funct3, output [6:0] funct7, opcode);
    assign opcode=instr[6:0]; assign funct3=instr[14:12]; assign funct7=instr[31:25];
    RegisterFile rf(clk,reset,instr[19:15],instr[24:20],waddr,wbdata,regwrite,rd1,rd2);
    Immediate_Generator ig(instr,imm);
endmodule