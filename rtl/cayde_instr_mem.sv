/*
*	Instruction memory for cayde
*/

module cayde_instr_mem( input logic [31:0] rdata,
			input logic [6:0] raddr
);

	logic [31:0] instr_mem [(2**(7))-1:0];
	
	assign instr_mem[0] = 32'h7610AA00;
endmodule


