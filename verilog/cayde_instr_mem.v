module cayde_instr_mem (
	rdata,
	raddr
);
	input wire [31:0] rdata;
	input wire [6:0] raddr;
	wire [31:0] instr_mem [127:0];
	assign instr_mem[0] = 32'h7610aa00;
endmodule
