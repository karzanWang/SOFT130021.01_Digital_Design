`timescale 1ns / 1ps

module ControlUnit(
    input [5:0] op, funct,
    input zero,
    output  memtoreg, memwrite,
    output  pcsrc, alusrc,
    output  regdst, regwrite,
    output  [2:0] alucontrol
);

    wire [1:0] aluop;
    wire branch;

    controlUnit_mainDecoder md(op, memtoreg, memwrite, 
                                                            branch,  alusrc, regdst,
                                                             regwrite, jump, aluop);
    controlUnit_ALUDecoder ad(funct, aluop, alucontrol);

    assign pcsrc = branch & zero;

endmodule
