/*
*	ALU Control module for cayde
*/

module cayde_alu_controller (
	input logic [1:0] ALUop,
	input logic [6:0] funct7,
	input logic [2:0] funct3,

	output logic [3:0] op
	);

	assign op[0] = ((ALUop[1]==1'b1) && (funct7==7'b0000000) && ((funct3==3'b110)||(funct3==3'b100)||(funct3==3'b011));
	assign op[1] = ((ALUop[1]==1'b1) && (funct7==7'b0000000) && ((funct3==3'b000)||(funct3==3'b100)||(funct3==3'b010)));
	assign op[2] = 0;
	assign op[3] = 0;
endmodule	
