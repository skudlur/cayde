/*
* Enums and user-defined data for cayde
*/

package cayde_pkg;

	typedef enum logic [6:0] {
		OPC_LOAD = 7'b000_0011,
		OPC_STORE = 7'B010_0011,
		OPC_OP = 7'b011_0011,
		OPC_BRANCH = 7'b110_0011,
		OPC_JALR = 7'b110_0111,
		OPC_JAL = 7'b110_1111
	} opcode;

	typedef enum logic [6:0] {
		ALU_ADD,
		ALU_SUB,
		ALU_XOR,
		ALU_AND,
		ALU_OR
	} alu_op;

	typedef enum logic [1:0] {
		LOAD_BYTE_U;
		LOAD_HALF_WORD_U;
		LOAD_WORD;
	} load_op;

	typedef enum logic [1:0] {
		STORE_BYTE;
		STORE_HALF_WORD;
		STORE_WORD;
	} store_op;

endpackage
