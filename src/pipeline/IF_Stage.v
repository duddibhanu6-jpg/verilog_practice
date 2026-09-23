module IF_Stage(input clk, reset, input take_branch, input [31:0] branch_target, output reg [31:0] pc, output [31:0] pc_plus4);
    assign pc_plus4 = pc + 4;
    always @(posedge clk or posedge reset) begin
        if(reset) pc <= 0;
        else if(take_branch) pc <= branch_target;
        else pc <= pc_plus4;
    end
endmodule