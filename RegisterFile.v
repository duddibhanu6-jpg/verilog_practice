module RegisterFile(input clk, reset, input [4:0] rs1, rs2, rd, input [31:0] WriteData, input RegWrite, output [31:0] ReadData1, ReadData2);
    reg [31:0] regs[0:31];
    integer i;
    initial for(i=0;i<32;i=i+1) regs[i]=0;
    assign ReadData1 = (rs1==0)? 0 : regs[rs1];
    assign ReadData2 = (rs2==0)? 0 : regs[rs2];
    always @(posedge clk) if(RegWrite && rd!=0) regs[rd] <= WriteData;
endmodule
