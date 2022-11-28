/*
*	Control module for cayde
*/

module cayde_controller(input logic [6:0]opcode,
			output logic RegWrite,
			output logic [1:0] ALUop,
		       );

	logic [6:0] R_TYPE = 7'b0110011;

	assign RegWrite = (opcode==R_TYPE);
	assign ALUop[0] = 1'b0;
	assign ALUop[1] = (opcode==R_TYPE);
endmodule
