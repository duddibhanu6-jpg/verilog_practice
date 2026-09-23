module Forwarding_Unit(
    input [4:0] ID_EX_rs1, ID_EX_rs2,
    input [4:0] EX_MEM_rd, MEM_WB_rd,
    input EX_MEM_RegWrite, MEM_WB_RegWrite,
    output reg [1:0] ForwardA, ForwardB
);
    always @(*) begin
        ForwardA = 2'b00;
        ForwardB = 2'b00;
        if(EX_MEM_RegWrite && EX_MEM_rd!=0 && EX_MEM_rd==ID_EX_rs1) ForwardA = 2'b10;
        else if(MEM_WB_RegWrite && MEM_WB_rd!=0 && MEM_WB_rd==ID_EX_rs1) ForwardA = 2'b01;
        if(EX_MEM_RegWrite && EX_MEM_rd!=0 && EX_MEM_rd==ID_EX_rs2) ForwardB = 2'b10;
        else if(MEM_WB_RegWrite && MEM_WB_rd!=0 && MEM_WB_rd==ID_EX_rs2) ForwardB = 2'b01;
    end
endmodule
