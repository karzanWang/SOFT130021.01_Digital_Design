`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/27 01:37:09
// Design Name: 
// Module Name: test_controlUnit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_controlUnit(

);
    reg [5:0] op, funct;
    reg zero;
    wire memtoreg, memwrite;
    wire pcsrc, alusrc;
    wire  regdst, regwrite;
    wire  [2:0] alucontrol;

    ControlUnit M(op, funct, zero, memtoreg, memwrite, pcsrc, alusrc, regdst, regwrite, alucontrol);

    initial begin
        op = 6'b000000; funct = 6'b100000; //add
        #0.001  op = 6'b000000; funct = 6'b100010; //sub
        #0.001  op = 6'b000000; funct = 6'b100100; //and
        #0.001  op = 6'b000000; funct = 6'b100101; //or
        #0.001  op = 6'b000000; funct = 6'b101010; //slt
        
        #0.001  op = 6'b100011; funct = 6'b000000; //lw
        #0.001  op = 6'b101011; funct = 6'b000000; //sw
        #0.001  op = 6'b001000; funct = 6'b000000; //addi
        #0.001  op = 6'b000100; funct = 6'b000000; //beq
        #0.001  op = 6'b000010; funct = 6'b000000; //j
        #0.001  op = 6'b001101; funct = 6'b100101; //ori
        #0.001  op = 6'b000110; funct = 6'b100000; //andi
        #0.001  op = 6'b001010; funct = 6'b101010; //slti
        
        #0.001  op = 6'b000000; funct = 6'b111111; //nop
        #2;
    end
endmodule
