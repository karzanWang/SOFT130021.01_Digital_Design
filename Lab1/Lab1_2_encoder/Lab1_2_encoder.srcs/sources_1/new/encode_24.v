`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/20 13:26:52
// Design Name: 
// Module Name: encode_24
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


module encode_24(
        input [3:0] SW,
        output [1:0] LED
    );
assign LED[0] = SW[2] || SW[3];
assign LED[1] = SW[3] || (SW[1] && (!SW[2]));
endmodule
