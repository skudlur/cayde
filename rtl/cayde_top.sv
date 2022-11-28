/*
*	top module for cayde
*/

module cayde_top ( input logic clk, rst,
		   output logic [31:0] out
		 );

	logic [6:0] opcode;
	logic RegWrite;
	logic [1:0] ALUop;
	logic [6:0] funct7;
	logic [2:0] funct3;
	logic [6:0] alu_op;

	cayde_controller controller (opcode, RegWrite, ALUop);
	cayde top (clk, rst, RegWrite, opcode, funct7, funct3, out);
endmodule	
