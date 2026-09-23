module Hazard_Detection_Unit(input [4:0] id_rs1, id_rs2, ex_rd, input ex_memread, output reg stall);
    always @(*) begin
        stall = (ex_memread && ((ex_rd==id_rs1)||(ex_rd==id_rs2)))?1:0;
    end
endmodule