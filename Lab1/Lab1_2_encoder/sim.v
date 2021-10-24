`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/24 18:43:00
// Design Name: 
// Module Name: sim
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


module sim(

    );
    wire [1:0] out;
    reg [3:0] in;
    encode_24 M1(in, out);    
    initial begin            
        in[0] = 1'b1;in[1] = 1'b0;in[2] = 1'b0;in[3] = 1'b0;
        #0.001 in[0] = 1'b0;in[1] = 1'b1;in[2] = 1'b0;in[3] = 1'b0;
        #0.001 in[0] = 1'b0;in[1] = 1'b0;in[2] = 1'b1;in[3] = 1'b0; 
        #0.001 in[0] = 1'b0;in[1] = 1'b0;in[2] = 1'b0;in[3] = 1'b1;#2;
    end                
endmodule
