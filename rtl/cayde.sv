/*
*	cayde top module
*/

module cayde (  input logic clk, rst,
		input logic RegWrite,
		output logic [6:0] opcode,
		output logic [6:0] funct7,
		output logic [2:0] funct3,
	        output logic [31:0] alu_output
	     );
	
	logic [8:0] PC, PCp4, PCval;
	logic [31:0] instr;
	logic [31:0] res;
	logic [31:0] alu_result, read_alu_result;
	logic [1:0] PCsel;
	logic [4:0] rs1, rs2, rd;
	logic [6:0] alu_op;
	logic [31:0] reg1, reg2;

	assign rs1 = instr[19:15];
	assign rd = instr[11:7];
	assign rs2 = instr[24:20];

	// PC update
	cayde_adder #(9) pcadd (PC, 9'b100, PCp4);
	cayde_dff #(9) pcreg (clk, rst, PCval, PC);

	// Instruction memory 
	cayde_instr_mem instr_memory (PC, instr);
	assign opcode = instr[6:0];
	assign funct7 = instr[31:25];
	assign funct3 = instr[14:12];

	cayde_decoder decoder (instr, alu_op)

	// Register file
	cayde_regfile regfile(clk, rst, rs1, rs2, rd, res, RegWrite, reg1, reg2)

	// ALU
	cayde_alu alu (alu_op, reg1, reg2, alu_result);
	
	assign res = alu_result;
	assign alu_output = res;
endmodule
