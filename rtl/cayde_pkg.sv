/*
* Enums and user-defined data for Cayde
*/

package cayde_pkg;

	typedef enum logic [2:0] {
		ALU_ADD,
		ALU_SUB,
		ALU_XOR,
		ALU_AND,
		ALU_OR,
		ALU_NOT
	} alu_op;

endpackage
