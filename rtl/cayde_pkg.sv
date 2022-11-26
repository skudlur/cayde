/*
* Enums and user-defined data for cayde
*/

package cayde_pkg;
	typedef enum logic [6:0] {
		ALU_ADD,
		ALU_SUB,
		ALU_XOR,
		ALU_AND,
		ALU_OR,
		ALU_SLT,
		ALU_SLTU,
		ALU_SLL,
		ALU_SRL,
		ALU_SRA
	} alu_op;
endpackage
