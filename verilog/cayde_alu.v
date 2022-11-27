module cayde_alu (
	op_i,
	op_a,
	op_b,
	res_var
);
	input wire [6:0] op_i;
	input wire [31:0] op_a;
	input wire [31:0] op_b;
	output reg [31:0] res_var;
	always @(*)
		case (op_i)
			7'd0: res_var = op_a + op_b;
			7'd1: res_var = op_a - op_b;
			7'd2: res_var = op_a ^ op_b;
			7'd3: res_var = op_a && op_b;
			7'd4: res_var = op_a || op_b;
			7'd5: res_var = $signed(op_a) << $signed(op_b);
			7'd6: res_var = op_a << op_b;
			7'd7: res_var = op_a << op_b;
			7'd8: res_var = op_a >> op_b;
			7'd9: res_var = $signed(op_a) >> $signed(op_b);
			default: res_var = 32'b00000000000000000000000000000000;
		endcase
endmodule
