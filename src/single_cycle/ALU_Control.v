module ALU_Control(
    input [1:0] ALUOp,
    input [2:0] funct3,
    input [6:0] funct7,
    output reg [3:0] alu_ctrl
);
    always @(*) begin
        case(ALUOp)
            2'b00: alu_ctrl = 4'b0010;
            2'b01: alu_ctrl = 4'b0110;
            2'b10: begin
                case(funct3)
                    3'b000: alu_ctrl = (funct7[5]? 4'b0110 : 4'b0010);
                    3'b111: alu_ctrl = 4'b0000;
                    3'b110: alu_ctrl = 4'b0001;
                    default: alu_ctrl = 4'b0010;
                endcase
            end
            2'b11: alu_ctrl = 4'b0010;
            default: alu_ctrl = 4'b0010;
        endcase
    end
endmodule
