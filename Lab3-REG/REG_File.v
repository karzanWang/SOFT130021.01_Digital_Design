`timescale 1ns / 1ps


module REG_File(
    input clk,
    input rst,
    input we,
    input [4:0] N1,
    input [4:0] N2,

    input [7:0] DI,
    output reg [7:0] Q1,
    output reg [7:0] Q2

);

    reg [7:0] data [0:31];
    reg[31:0] i;




    always@(posedge clk) begin


        Q1 <= data[N1];
        Q2 <= data[N2];

    end

    always@(posedge rst or negedge clk) begin
    if(we) begin
        data[N1]<=DI;
    end

    i = 0;
    if(rst)begin
        for(i=0;i<32;i=i+1) begin
            data[i]<= i;
        end

    end
    end

endmodule
