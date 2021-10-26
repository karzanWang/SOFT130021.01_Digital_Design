`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/26 18:47:43
// Design Name: 
// Module Name: controlUnit_mainDecoder
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


module controlUnit_mainDecoder(
    input    [5:0] op,
    output  memtoreg, memwrite,
    output  branch, alusrc,
    output  regdst, regwrite,
    output jump,
    output  [1:0] aluop
);

    reg [8:0] controls;

    assign {regwrite, regdst, alusrc, branch,
    memwrite, memtoreg, jump, aluop} = controls;

    always @(*)begin
        case(op)
            6'b000000: controls <= 9'b110000010; //rtype
            6'b100011: controls <= 9'b101001000; //LW
            6'b101011: controls <= 9'b001010000; //SW
            6'b000100: controls <= 9'b000100001; //beq
            6'b001000: controls <= 9'b101000000; //addi
            6'b000010: controls <= 9'b000000100; //j
            6'b000110: controls <= 9'b101000010; //andi
            6'b001101: controls <= 9'b101000010; //ori
            6'b001010: controls <= 9'b101000010; //slti 
            default: controls <= 9'bxxxxxxxx; //???
        endcase
    end
endmodule
