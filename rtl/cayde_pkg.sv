/*
* Enums and user-defined data for cayde
*/

package cayde_pkg;

	typedef enum logic [6:0] {
		OPCODE_LOAD = 7'b000_0011,
		OPCODE_STORE = 7'B010_0011,
		OPCODE_OP = 7'b011_0011,
		OPCODE_BRANCH = 7'b110_0011,
		OPCODE_JALR = 7'b110_0111,
		OPCODE_JAL = 7'b110_1111
	} opcode;

	typedef enum logic [6:0] {
		ALU_ADD,
		ALU_SUB,
		ALU_XOR,
		ALU_AND,
		ALU_OR
	} alu_op;

endpackage
