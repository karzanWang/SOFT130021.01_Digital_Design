`timescale 1ns / 1ps

module test_REGfiles(
);
    reg clk;
    reg rst;
    reg we;
    reg [4:0] N1;
    reg [4:0] N2;

    reg [7:0] DI;
    wire [7:0] Q1;
    wire [7:0] Q2;

    REG_File regfile(clk, rst, we, N1, N2, DI, Q1, Q2);

    initial begin
        clk = 0;
        rst = 0;
        we = 0;
        N1 = 0;
        N2 = 0;
        #100;
        rst = 1;
        #100;
        rst = 0;
        N1 = 5;
        N2 = 6;
        #100;
        rst = 0;
        N1 = 2;
        N2 = 3;
        #100;
        rst = 0;
        N1 = 1;
        N2 = 3;
        we = 1;
        DI = 3;
        #100;
        we = 0;
        rst = 0;
        N1 = 1;
        N2 = 2;
        #100;
    end

    parameter period = 200;
    always begin
        clk = 1'b0;
        #(period/2) clk = 1'b1;
        #(period/2);
    end

endmodule
