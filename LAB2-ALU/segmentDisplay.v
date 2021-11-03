`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/02 23:14:10
// Design Name: 
// Module Name: segmentDisplay
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


module segmentDisplay(
    input  clk,
    input [7:0]in,
    output  reg [6:0] a2g,
    output reg [7:0] an
);
    reg [3:0]d1,d2,d3,d4,d5,d6,d7,d8;
    reg [3:0] digit;
    reg [19:0]clkdiv;
    wire [2:0]s;


    assign s = clkdiv[19:17];

    always @(*) begin
        d1 = in % 10;
        d2 = (in/10) % 10;
        d3 = (in/100) % 10;
        d4 = (in/1000) % 10;
        d5 = (in/10000) % 10;
        d6 = (in/100000) % 10;
        d7 = (in/1000000) % 10;
        d8 = (in/10000000) % 10;
    end

    always @(clkdiv) begin
        case(s)
            0:digit = d1;
            1:digit = d2;
            2:digit = d3;
            3:digit = d4;
            4:digit = d5;
            5:digit = d6;
            6:digit = d7;
            7:digit = d8;
        endcase
    end

    always @(*) begin
        an <= 8'b11111111;
        an[s] <=0;
    end

    always @(posedge clk) begin
            clkdiv <= clkdiv + 1;
    end

    always @(*) begin
        a2g <= (digit == 4'h0) ? 7'b1000000 :
        (digit == 4'h1) ? 7'b1111001 :
        (digit == 4'h2) ? 7'b0100100 :
        (digit == 4'h3) ? 7'b0110000 :
        (digit == 4'h4) ? 7'b0011001 :
        (digit == 4'h5) ? 7'b0010010 :
        (digit == 4'h6) ? 7'b0000010 :
        (digit == 4'h7) ? 7'b1111000 :
        (digit == 4'h8) ? 7'b0000000 :
        (digit == 4'h9) ? 7'b0010000 :
        7'b1000000;
    end


endmodule

