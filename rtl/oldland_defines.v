`define INSTR_NOP 32'b11111100000000000000000000000000
`define CLASS_MEM	2'h2
`define CLASS_ARITH	2'h0
`define CLASS_MISC	2'h3
`define CLASS_BRANCH	2'h1
`define OPCODE_AND	4'h6
`define OPCODE_LSL	4'h4
`define OPCODE_LSR	4'h5
`define OPCODE_SUBC	4'h3
`define OPCODE_STR8	4'h6
`define OPCODE_XOR	4'h7
`define OPCODE_SUB	4'h2
`define OPCODE_BLT	4'h8
`define OPCODE_RET	4'h1
`define OPCODE_ADD	4'h0
`define OPCODE_STR32	4'h4
`define OPCODE_CALL	4'h0
`define OPCODE_ADDC	4'h1
`define OPCODE_LDR8	4'h2
`define OPCODE_BNE	4'h5
`define OPCODE_ASR	4'he
`define OPCODE_BST	4'h9
`define OPCODE_BIC	4'h8
`define OPCODE_BKP	4'h0
`define OPCODE_STR16	4'h5
`define OPCODE_ORLO	4'hd
`define OPCODE_NOP	4'hf
`define OPCODE_B	4'h4
`define OPCODE_LDR16	4'h1
`define OPCODE_MOVHI	4'hb
`define OPCODE_BGT	4'h7
`define OPCODE_LDR32	4'h0
`define OPCODE_BEQ	4'h6
`define OPCODE_OR	4'ha
`define OPCODE_CMP	4'hc
