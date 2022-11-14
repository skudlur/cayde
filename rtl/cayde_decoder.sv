/*
* Decoder for cayde - RISC-V processor
*/

module cayde_decoder ( input logic [31:0] instr_in,

		       output cayde_pkg::alu_op alu_op,
		       output cayde_pkg::load_op load_op,
		       output cayde_pkg::store_op store_op
		     );
	import cayde_pkg::*;

	logic illegal_instr;

	logic [31:0] instr;
	logic [6:0] funct7;
	logic [2:0] funct3;
	logic [4:0] rs1, rs2, rd;
	opcode opcode_in;

	assign instr = instr_in;
	assign funct7 = instr[31:25];
	assign funct3 = instr[14:12];
	assign rs1 = instr[19:15];
	assign rs2 = instr[24:20];
	assign rd = instr[11:7];
	
	always_comb begin
		unique case (opcode_in)
			OPC_OP: begin
				unique case ({funct7, funct3})
					{7'b000_0000, 3'b000}: alu_op = ALU_ADD;
					{7'b010_0000, 3'b000}: alu_op = ALU_SUB;
					{7'b000_0000, 3'b100}: alu_op = ALU_XOR;
					{7'b000_0000, 3'b111}: alu_op = ALU_AND;
					{7'b000_0000, 3'b110}: alu_op = ALU_OR;
					default: illegal_instr = 1'b1;
				endcase
			end

			OPC_LOAD: begin
				unique case (instr[13:12])
					2'b00: load_op = LOAD_BYTE_U;
					2'b01: load_op = LOAD_HALF_WORD_U;
					2'b10: load_op = LOAD_WORD;
					default: illegal_instr = 1'b1;
				endcase
			end

			OPC_STORE: begin
				unique case (instr[13:12])
					2'b00: store_op = STORE_BYTE;
					2'b01: store_op = STORE_HALF_WORD;
					2'b10: store_op = STORE_WORD;
					default: illegal_instr = 1'b1;
				endcase
			end			
							
			default: illegal_instr = 1'b1;
		endcase
	end
endmodule
