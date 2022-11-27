module cayde_regfile (
	clk,
	rst,
	raddr_in1,
	raddr_in2,
	waddr_in,
	wdata_in,
	wen_in,
	rdata_out1,
	rdata_out2
);
	input wire clk;
	input wire rst;
	input wire [4:0] raddr_in1;
	input wire [4:0] raddr_in2;
	input wire [4:0] waddr_in;
	input wire [31:0] wdata_in;
	input wire wen_in;
	output wire [31:0] rdata_out11;
	output wire [31:0] rdata_out12;
	reg [31:0] x0 = 32'b00000000000000000000000000000000;
	reg [31:0] x1;
	reg [31:0] x2;
	reg [31:0] x3;
	reg [31:0] x4;
	reg [31:0] x5;
	reg [31:0] x6;
	reg [31:0] x7;
	reg [31:0] x8;
	reg [31:0] x9;
	reg [31:0] x10;
	reg [31:0] x11;
	reg [31:0] x12;
	reg [31:0] x13;
	reg [31:0] x14;
	reg [31:0] x15;
	reg [31:0] x16;
	reg [31:0] x17;
	reg [31:0] x18;
	reg [31:0] x19;
	reg [31:0] x20;
	reg [31:0] x21;
	reg [31:0] x22;
	reg [31:0] x23;
	reg [31:0] x24;
	reg [31:0] x25;
	reg [31:0] x26;
	reg [31:0] x27;
	reg [31:0] x28;
	reg [31:0] x29;
	reg [31:0] x30;
	reg [31:0] x31;
	always @(*)
		case (raddr_in1)
			5'b00000: rdata_out1 <= x0;
			5'b00001: rdata_out1 <= x1;
			5'b00010: rdata_out1 <= x2;
			5'b00011: rdata_out1 <= x3;
			5'b00100: rdata_out1 <= x4;
			5'b00101: rdata_out1 <= x5;
			5'b00110: rdata_out1 <= x6;
			5'b00111: rdata_out1 <= x7;
			5'b01000: rdata_out1 <= x8;
			5'b01001: rdata_out1 <= x9;
			5'b01010: rdata_out1 <= x10;
			5'b01011: rdata_out1 <= x11;
			5'b01100: rdata_out1 <= x12;
			5'b01101: rdata_out1 <= x13;
			5'b01110: rdata_out1 <= x14;
			5'b01111: rdata_out1 <= x15;
			5'b10000: rdata_out1 <= x16;
			5'b10001: rdata_out1 <= x17;
			5'b10010: rdata_out1 <= x18;
			5'b10011: rdata_out1 <= x19;
			5'b10100: rdata_out1 <= x20;
			5'b10101: rdata_out1 <= x21;
			5'b10110: rdata_out1 <= x22;
			5'b10111: rdata_out1 <= x23;
			5'b11000: rdata_out1 <= x24;
			5'b11001: rdata_out1 <= x25;
			5'b11010: rdata_out1 <= x26;
			5'b11011: rdata_out1 <= x27;
			5'b11100: rdata_out1 <= x28;
			5'b11101: rdata_out1 <= x29;
			5'b11110: rdata_out1 <= x30;
			5'b11111: rdata_out1 <= x31;
			default: rdata_out1 <= x0;
		endcase
	always @(*)
		case (raddr_in2)
			5'b00000: rdata_out2 <= x0;
			5'b00001: rdata_out2 <= x1;
			5'b00010: rdata_out2 <= x2;
			5'b00011: rdata_out2 <= x3;
			5'b00100: rdata_out2 <= x4;
			5'b00101: rdata_out2 <= x5;
			5'b00110: rdata_out2 <= x6;
			5'b00111: rdata_out2 <= x7;
			5'b01000: rdata_out2 <= x8;
			5'b01001: rdata_out2 <= x9;
			5'b01010: rdata_out2 <= x10;
			5'b01011: rdata_out2 <= x11;
			5'b01100: rdata_out2 <= x12;
			5'b01101: rdata_out2 <= x13;
			5'b01110: rdata_out2 <= x14;
			5'b01111: rdata_out2 <= x15;
			5'b10000: rdata_out2 <= x16;
			5'b10001: rdata_out2 <= x17;
			5'b10010: rdata_out2 <= x18;
			5'b10011: rdata_out2 <= x19;
			5'b10100: rdata_out2 <= x20;
			5'b10101: rdata_out2 <= x21;
			5'b10110: rdata_out2 <= x22;
			5'b10111: rdata_out2 <= x23;
			5'b11000: rdata_out2 <= x24;
			5'b11001: rdata_out2 <= x25;
			5'b11010: rdata_out2 <= x26;
			5'b11011: rdata_out2 <= x27;
			5'b11100: rdata_out2 <= x28;
			5'b11101: rdata_out2 <= x29;
			5'b11110: rdata_out2 <= x30;
			5'b11111: rdata_out2 <= x31;
			default: rdata_out2 <= x0;
		endcase
	always @(posedge clk)
		if (rst == 1) begin
			x1 <= 32'b00000000000000000000000000000000;
			x2 <= 32'b00000000000000000000000000000000;
			x3 <= 32'b00000000000000000000000000000000;
			x4 <= 32'b00000000000000000000000000000000;
			x5 <= 32'b00000000000000000000000000000000;
			x6 <= 32'b00000000000000000000000000000000;
			x7 <= 32'b00000000000000000000000000000000;
			x8 <= 32'b00000000000000000000000000000000;
			x9 <= 32'b00000000000000000000000000000000;
			x10 <= 32'b00000000000000000000000000000000;
			x11 <= 32'b00000000000000000000000000000000;
			x12 <= 32'b00000000000000000000000000000000;
			x13 <= 32'b00000000000000000000000000000000;
			x14 <= 32'b00000000000000000000000000000000;
			x15 <= 32'b00000000000000000000000000000000;
			x16 <= 32'b00000000000000000000000000000000;
			x17 <= 32'b00000000000000000000000000000000;
			x18 <= 32'b00000000000000000000000000000000;
			x19 <= 32'b00000000000000000000000000000000;
			x20 <= 32'b00000000000000000000000000000000;
			x21 <= 32'b00000000000000000000000000000000;
			x22 <= 32'b00000000000000000000000000000000;
			x23 <= 32'b00000000000000000000000000000000;
			x24 <= 32'b00000000000000000000000000000000;
			x25 <= 32'b00000000000000000000000000000000;
			x26 <= 32'b00000000000000000000000000000000;
			x27 <= 32'b00000000000000000000000000000000;
			x28 <= 32'b00000000000000000000000000000000;
			x29 <= 32'b00000000000000000000000000000000;
			x30 <= 32'b00000000000000000000000000000000;
			x31 <= 32'b00000000000000000000000000000000;
		end
		else if (wen_in)
			case (waddr_in)
				5'b00000: wdata_out <= x0;
				5'b00001: wdata_out <= x1;
				5'b00010: wdata_out <= x2;
				5'b00011: wdata_out <= x3;
				5'b00100: wdata_out <= x4;
				5'b00101: wdata_out <= x5;
				5'b00110: wdata_out <= x6;
				5'b00111: wdata_out <= x7;
				5'b01000: wdata_out <= x8;
				5'b01001: wdata_out <= x9;
				5'b01010: wdata_out <= x10;
				5'b01011: wdata_out <= x11;
				5'b01100: wdata_out <= x12;
				5'b01101: wdata_out <= x13;
				5'b01110: wdata_out <= x14;
				5'b01111: wdata_out <= x15;
				5'b10000: wdata_out <= x16;
				5'b10001: wdata_out <= x17;
				5'b10010: wdata_out <= x18;
				5'b10011: wdata_out <= x19;
				5'b10100: wdata_out <= x20;
				5'b10101: wdata_out <= x21;
				5'b10110: wdata_out <= x22;
				5'b10111: wdata_out <= x23;
				5'b11000: wdata_out <= x24;
				5'b11001: wdata_out <= x25;
				5'b11010: wdata_out <= x26;
				5'b11011: wdata_out <= x27;
				5'b11100: wdata_out <= x28;
				5'b11101: wdata_out <= x29;
				5'b11110: wdata_out <= x30;
				5'b11111: wdata_out <= x31;
				default: wdata_out <= x0;
			endcase
endmodule
