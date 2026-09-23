module Branch_Unit(input [2:0] funct3, input Zero, input Branch, output reg take_branch);
    always @(*) begin
        if(!Branch) take_branch=0;
        else case(funct3)
            3'b000: take_branch = Zero; // BEQ
            3'b001: take_branch = ~Zero; // BNE
            default: take_branch=0;
        endcase
    end
endmodule