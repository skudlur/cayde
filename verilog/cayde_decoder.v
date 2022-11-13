module cayde_decoder (
	instr_in,
	alu_op
);
	input wire [31:0] instr_in;
	output reg [6:0] alu_op;
	reg illegal_instr;
	wire [31:0] instr;
	wire [6:0] funct7;
	wire [2:0] funct3;
	wire [4:0] rs1;
	wire [4:0] rs2;
	wire [4:0] rd;
	wire [6:0] opcode_in;
	assign instr = instr_in;
	assign funct7 = instr[31:25];
	assign funct3 = instr[14:12];
	assign rs1 = instr[19:15];
	assign rs2 = instr[24:20];
	assign rd = instr[11:7];
	always @(*)
		case (opcode_in)
			7'b0110011:
				case ({funct7, funct3})
					10'b0000000000: alu_op = 7'd0;
					10'b0100000000: alu_op = 7'd1;
					10'b0000000100: alu_op = 7'd2;
					10'b0000000111: alu_op = 7'd3;
					10'b0000000110: alu_op = 7'd4;
				endcase
			default: illegal_instr = 1;
		endcase
endmodule
