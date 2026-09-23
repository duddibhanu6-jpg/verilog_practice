module EX_Stage(input [31:0] rd1, rd2, imm, pc,
    input [3:0] alu_ctrl, input alusrc,
    input [31:0] fwd_mem, fwd_wb, input [1:0] fwdA, fwdB,
    output [31:0] alu_result, output zero, output [31:0] branch_target, output [31:0] wdata_out);
    wire [31:0] A = (fwdA==2'b10)? fwd_mem : (fwdA==2'b01)? fwd_wb : rd1;
    wire [31:0] B_tmp = (fwdB==2'b10)? fwd_mem : (fwdB==2'b01)? fwd_wb : rd2;
    wire [31:0] B = alusrc? imm : B_tmp;
    ALU alu_unit(A, B, alu_ctrl, alu_result, zero);
    assign branch_target = pc + imm;
    assign wdata_out = B_tmp;
endmodule