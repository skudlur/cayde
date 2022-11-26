/*
* ALU Module for cayde - RISC-V processor
*/

module cayde_alu ( input cayde_pkg::alu_op op_i,
		   input logic [31:0] op_a,
		   input logic [31:0] op_b,

		   output logic [31:0] res_var
		);
	import cayde_pkg::*;

	always_comb begin
		unique case (op_i)
			ALU_ADD: res_var = op_a + op_b;
			ALU_SUB: res_var = op_a - op_b;
			ALU_XOR: res_var = op_a ^ op_b;
			ALU_AND: res_var = op_a && op_b;
			ALU_OR: res_var = op_a || op_b;
			ALU_NOT: res_var = !op_a;
			ALU_SLT: res_var = op_a <s op_b;
			ALU_SLTU: res_var = op_a <u op_b;
			ALU_SLL: res_var = op_a << op_b;
			ALU_SRL: res_var = op_a >>u op_b;
			ALU_SRA: res_var = op_a >>s op_b;
			default: res_var = 32'b0;
		endcase
	end
endmodule
	
