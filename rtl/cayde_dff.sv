/*
*	flip-flop for PC value for cayde
*/

module cayde_dff #( parameter WIDTH = 32 )
	( input logic clk, rst,
	  input logic [WIDTH-1:0] d,
	  output logic [WIDTH-1:0] q
	);

	always_ff @(posedge clk) begin
		if(rst)
			q <= 0;
		else
			q <= d;
	end
endmodule
