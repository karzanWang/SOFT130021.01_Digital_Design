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
    output  [2:0] aluop
);

    reg [9:0] controls;

    assign {regwrite, regdst, alusrc, branch,
    memwrite, memtoreg, jump, aluop} = controls;

    always @(*)begin
        case(op)
            6'b000000: controls <= 10'b1100000110; //rtype
            6'b100011: controls <= 10'b1010010000; //LW
            6'b101011: controls <= 10'b0010100000; //SW
            6'b000100: controls <= 10'b0001000001; //beq
            6'b001000: controls <= 10'b1010000000; //addi
            6'b000010: controls <= 10'b0000001xxx; //j
            6'b000110: controls <= 10'b1010000100; //andi
            6'b001101: controls <= 10'b1010000011; //ori
            6'b001010: controls <= 10'b1010000010; //slti 
            6'b111111: controls <= 10'b1010000101; //nop
            default: controls <= 9'bxxxxxxxx; //???
        endcase
    end
endmodule
