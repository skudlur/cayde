/*
* Register file for cayde - RISC-V processor
*/

module cayde_regfile ( input logic clk,
		       input logic rst,
		       
		       input logic [4:0] raddr_in,
		       input logic [4:0] waddr_in,
		       input logic [31:0] wdata_in,
		       input logic wen_in,

		       output logic [31:0] rdata_out,
		     );
endmodule

