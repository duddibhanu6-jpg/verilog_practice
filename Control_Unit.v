module Control_Unit(input [6:0] opcode, output reg Branch, MemRead, MemtoReg, MemWrite, ALUSrc, RegWrite, output reg [1:0] ALUOp);
 always @(*) begin
  Branch=0; MemRead=0; MemtoReg=0; MemWrite=0; ALUSrc=0; RegWrite=0; ALUOp=2'b00;
  case(opcode)
   7'b0110011: begin RegWrite=1; ALUOp=2'b10; end // R-type
   7'b0010011: begin RegWrite=1; ALUSrc=1; ALUOp=2'b11; end // I-type ADDI
   7'b0000011: begin RegWrite=1; ALUSrc=1; MemRead=1; MemtoReg=1; ALUOp=2'b00; end // LW
   7'b0100011: begin ALUSrc=1; MemWrite=1; ALUOp=2'b00; end // SW
   7'b1100011: begin Branch=1; ALUOp=2'b01; end // BEQ
  endcase
 end
endmodule
