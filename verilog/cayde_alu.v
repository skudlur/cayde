module cayde_alu (
	op_i,
	op_a,
	op_b,
	res_var
);
	input wire [2:0] op_i;
	input wire [31:0] op_a;
	input wire [31:0] op_b;
	output reg [31:0] res_var;
	always @(*)
		case (op_i)
			3'd0: res_var = op_a + op_b;
			3'd1: res_var = op_a - op_b;
			3'd2: res_var = op_a ^ op_b;
			3'd3: res_var = op_a && op_b;
			3'd4: res_var = op_a || op_b;
			3'd5: res_var = !op_a;
			default: res_var = 32'b00000000000000000000000000000000;
		endcase
endmodule
