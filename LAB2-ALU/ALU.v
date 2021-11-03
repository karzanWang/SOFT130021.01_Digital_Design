`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/02 23:02:13
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [15:14]op,
    input [3:0]A,
    input [7:4]B,
    output reg [7:0]F,
    output  reg [15:0] D
);

    always @(*)begin
        case(op)
            2'b00: begin
                F <= A + B;

            end
            2'b01: F <= A - B;
            2'b10:begin
                F <= ~A;
                F[7:4] <= 4'b0000;
            end
            2'b11:begin
                F <= A * B;

            end
            default: F <= 8'bxxxxxxxx;
        endcase
        D[7:0] = F;
        if(F[7:4] >=1 ) begin
            D[15] = 1;
        end
    end

endmodule
