`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/20 09:18:54
// Design Name: 
// Module Name: decoder_38
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
module decoder_38(
        input [2:0] SW,
        output [7:0] LED
);
decoder(SW, LED);
endmodule


module decoder(
        input [2:0] a,
        output [7:0] D
    );
 assign D[0] = (!a[0]) && (!a[1]) && (!a[2]);
 assign D[1] = (!a[0]) && (!a[1]) && (a[2]);
 assign D[2] = (!a[0]) && (a[1]) && (!a[2]);
 assign D[3] = (!a[0]) && (a[1]) && (a[2]);
 assign D[4] = (a[0]) && (!a[1]) && (!a[2]);
 assign D[5] = (a[0]) && (!a[1]) && (a[2]);
 assign D[6] = (a[0]) && (a[1]) && (!a[2]);
 assign D[7] = (a[0]) && (a[1]) && (a[2]);
 
endmodule
