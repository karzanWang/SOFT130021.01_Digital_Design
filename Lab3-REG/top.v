`timescale 1ns / 1ps


module top(
    input  CLK100MHZ,
    input [15:0]SW,
    output  [6:0] A2G,
    output  [7:0] AN
);

    reg [30:0]count;
    reg clk2;
    initial begin
        clk2 = 1'b0;
        count = 0;
    end

    always@(posedge CLK100MHZ)
    begin
        count = count + 1;
        if(count > 200000000)
        begin
            count = 0;
            clk2 = ~clk2;
        end
    end
    wire [7:0]F1;
    wire [7:0]F2;
    reg [7:0]F3;
    wire [7:0]F4;
    assign F4 = F3;


    REG_File regfile(clk2, SW[13], SW[12], SW[4:0], SW[10:5], F3, F1, F2);
    ALU alu(SW[15:14], F1, F2, F4);
    segmentDisplay segmentDisplay1(CLK100MHZ, F1, F2, A2G, AN[3:0]);

endmodule
