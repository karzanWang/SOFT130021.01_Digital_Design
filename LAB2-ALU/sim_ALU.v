`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/03 03:07:39
// Design Name: 
// Module Name: sim_ALU
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


module sim_ALU(
    );
    reg [15:14]op;
    reg [3:0]A;
    reg [7:4]B;
    wire [7:0]F;
    wire [15:0] D; 
    
    ALU alu(op, A, B, F, D);
    
    initial begin            
        op = 2'b00;A = 4'b0111; B = 4'b0111;
        #0.005 op = 2'b00;A = 4'b1111; B = 4'b0111;
        #0.005 op = 2'b01;A = 4'b0111; B = 4'b0111;
        #0.005 op = 2'b01;A = 4'b0011; B = 4'b1111;
        #0.005 op = 2'b10;A = 4'b0111; B = 4'b0000;
        #0.005 op = 2'b10;A = 4'b1100; B = 4'b0000;
        #0.005 op = 2'b11;A = 4'b0111; B = 4'b0111;
        #0.005 op = 2'b11;A = 4'b0111; B = 4'b0100;
        #0.005 op = 2'b11;A = 4'b1000; B = 4'b0111;#2;
    end       
    
    
endmodule
