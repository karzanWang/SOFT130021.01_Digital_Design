`timescale 1ns / 1ps

module top_test();

    reg  CLK100MHZ;
    reg [15:0]SW;



    wire [7:0]F1;
    wire [7:0]F2;
    wire [7:0]F3;

    REG_File regfile(CLK100MHZ, SW[13], SW[12], SW[4:0], SW[10:5], F3, F1, F2);
    ALU alu(SW[15:14], F1, F2, F3);


    parameter period = 100;
    always begin
        CLK100MHZ = 1'b0;
        #(period/2) CLK100MHZ = 1'b1;
        #(period/2);
    end

    initial begin
        #50;
        SW[13] = 1;

        #50;
        SW[13] = 0;
        SW[4:0] = 5'b00001;
        SW[15:14] = 2'b00;
        SW[12] = 0;
        SW[10:5] = 5'b00001;
        #50;
        SW[13] = 0;
        SW[4:0] = 5'b00001;
        SW[15:14] = 2'b00;
        SW[12] = 0;
        SW[10:5] = 5'b00001;
        #50;
        SW[13] = 0;
        SW[4:0] = 5'b00001;
        SW[15:14] = 2'b00;
        SW[12] = 1;
        SW[10:5] = 5'b00001;

        #50;

        SW[13] = 0;
        SW[4:0] = 5'b00001;
        SW[15:14] = 2'b00;
        SW[12] = 0;
        SW[10:5] = 5'b00000;

        #50;

        SW[13] = 0;
        SW[4:0] = 5'b00000;
        SW[15:14] = 2'b00;
        SW[12] = 0;
        SW[10:5] = 5'b00001;

        #50;

        SW[13] = 0;
        SW[4:0] = 5'b00100;
        SW[15:14] = 2'b01;
        SW[12] = 0;
        SW[10:5] = 5'b00001;

        #50;

        SW[13] = 0;
        SW[4:0] = 5'b00010;
        SW[15:14] = 2'b10;
        SW[12] = 0;
        SW[10:5] = 5'b00001;
        #50;
        SW[13] = 0;
        SW[4:0] = 5'b00000;
        SW[15:14] = 2'b11;
        SW[12] = 0;
        SW[10:5] = 5'b00001;

        #50;
    end

endmodule
