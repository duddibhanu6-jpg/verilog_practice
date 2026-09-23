module ID_EX_Reg(input clk, reset,
    input [31:0] pc_in, rd1_in, rd2_in, imm_in,
    input [4:0] rs1_in, rs2_in, rd_in,
    input [6:0] opcode_in, funct3_in, funct7_in,
    input Branch_in, MemRead_in, MemWrite_in, ALUSrc_in, RegWrite_in, MemtoReg_in,
    input [1:0] ALUOp_in,
    output reg [31:0] pc_out, rd1_out, rd2_out, imm_out,
    output reg [4:0] rs1_out, rs2_out, rd_out,
    output reg [6:0] opcode_out, funct3_out, funct7_out,
    output reg Branch_out, MemRead_out, MemWrite_out, ALUSrc_out, RegWrite_out, MemtoReg_out,
    output reg [1:0] ALUOp_out);
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            pc_out<=0; rd1_out<=0; rd2_out<=0; imm_out<=0; rs1_out<=0; rs2_out<=0; rd_out<=0;
            Branch_out<=0; MemRead_out<=0; MemWrite_out<=0; ALUSrc_out<=0; RegWrite_out<=0; MemtoReg_out<=0; ALUOp_out<=0;
        end else begin
            pc_out<=pc_in; rd1_out<=rd1_in; rd2_out<=rd2_in; imm_out<=imm_in;
            rs1_out<=rs1_in; rs2_out<=rs2_in; rd_out<=rd_in;
            Branch_out<=Branch_in; MemRead_out<=MemRead_in; MemWrite_out<=MemWrite_in;
            ALUSrc_out<=ALUSrc_in; RegWrite_out<=RegWrite_in; MemtoReg_out<=MemtoReg_in; ALUOp_out<=ALUOp_in;
        end
    end
endmodule