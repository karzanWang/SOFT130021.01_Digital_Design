`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/02 23:50:09
// Design Name: 
// Module Name: top
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


module top(
    input  CLK100MHZ,
    input [15:0]SW,
    output  [6:0] A2G,
    output  [7:0] AN,
    output  [15:0] LED
);
wire [7:0] f;


ALU alu(SW[15:14],SW[3:0], SW[7:4], f, LED);
segmentDisplay segmentdisplay(CLK100MHZ, f, A2G, AN);

 
endmodule
