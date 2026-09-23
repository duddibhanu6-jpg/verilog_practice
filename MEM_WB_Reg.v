module MEM_WB_Reg(input clk, reset,
    input [31:0] alu_in, memdata_in,
    input RegWrite_in, MemtoReg_in,
    input [4:0] rd_in,
    output reg [31:0] alu_out, memdata_out,
    output reg RegWrite_out, MemtoReg_out,
    output reg [4:0] rd_out);
    always @(posedge clk or posedge reset) begin
        if(reset) begin alu_out<=0; memdata_out<=0; RegWrite_out<=0; MemtoReg_out<=0; rd_out<=0; end
        else begin alu_out<=alu_in; memdata_out<=memdata_in; RegWrite_out<=RegWrite_in; MemtoReg_out<=MemtoReg_in; rd_out<=rd_in; end
    end
endmodule