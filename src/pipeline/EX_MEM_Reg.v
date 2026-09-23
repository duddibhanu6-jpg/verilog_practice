module EX_MEM_Reg(input clk, reset,
    input [31:0] alu_in, wdata_in, pc_branch_in,
    input zero_in, Branch_in, MemRead_in, MemWrite_in, RegWrite_in, MemtoReg_in,
    input [4:0] rd_in,
    output reg [31:0] alu_out, wdata_out, pc_branch_out,
    output reg zero_out, Branch_out, MemRead_out, MemWrite_out, RegWrite_out, MemtoReg_out,
    output reg [4:0] rd_out);
    always @(posedge clk or posedge reset) begin
        if(reset) begin alu_out<=0; wdata_out<=0; pc_branch_out<=0; zero_out<=0; Branch_out<=0; MemRead_out<=0; MemWrite_out<=0; RegWrite_out<=0; MemtoReg_out<=0; rd_out<=0; end
        else begin alu_out<=alu_in; wdata_out<=wdata_in; pc_branch_out<=pc_branch_in; zero_out<=zero_in; Branch_out<=Branch_in; MemRead_out<=MemRead_in; MemWrite_out<=MemWrite_in; RegWrite_out<=RegWrite_in; MemtoReg_out<=MemtoReg_in; rd_out<=rd_in; end
    end
endmodule