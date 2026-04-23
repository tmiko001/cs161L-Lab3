//=========================================================================
// Name & Email must be EXACTLY as in Gradescope roster!
// Name: Thomas Miko
// Email: tmiko001@ucr.edu
// 
// Assignment name: 
// Lab section: 
// TA: 
// 
// I hereby certify that I have not received assistance on this assignment,
// or used code, from ANY outside source other than the instruction team
// (apart from what was provided in the starter file).
//
//=========================================================================

// --------------------------------------
// Opcodes 
// --------------------------------------

`define OPCODE_R_TYPE       6'b000000
`define OPCODE_LOAD_WORD    6'b100011
`define OPCODE_STORE_WORD   6'b101011
`define OPCODE_BRANCH_EQ    6'b000100
`define OPCODE_ADDI         6'b001000

module control  (
    input  wire [5:0] instr_op, 
    output reg       reg_dst,   
    output reg       branch,     
    output reg       mem_read,  
    output reg       mem_to_reg,
    output reg [1:0] alu_op,        
    output reg       mem_write, 
    output reg       alu_src,    
    output reg       reg_write
    );

// ------------------------------
// Insert your solution below
// ------------------------------ 

//vscode autocomplete used the turnary operator - i would not have done it myself
always @(instr_op)
begin 
   // Put your solution here
    reg_dst = (instr_op == `OPCODE_R_TYPE) ? 1 : 0;
    alu_src = (instr_op == `OPCODE_LOAD_WORD || instr_op == `OPCODE_ADDI || instr_op == `OPCODE_STORE_WORD) ? 1 : 0;
    mem_to_reg = (instr_op == `OPCODE_LOAD_WORD) ? 1 : 0;
    reg_write = (instr_op == `OPCODE_R_TYPE || instr_op == `OPCODE_LOAD_WORD || instr_op == `OPCODE_ADDI) ? 1 : 0;
    mem_read = (instr_op == `OPCODE_LOAD_WORD) ? 1 : 0;
    mem_write = (instr_op == `OPCODE_STORE_WORD) ? 1 : 0;
    branch = (instr_op == `OPCODE_BRANCH_EQ) ? 1 : 0;
    alu_op[1] = (instr_op == `OPCODE_R_TYPE) ? 1 : 0;
    alu_op[0] = (instr_op == `OPCODE_BRANCH_EQ) ? 1 : 0;

end 
endmodule