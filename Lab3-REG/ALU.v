`timescale 1ns / 1ps


module ALU(
    input [1:0]op,
    input [7:0]A,
    input [7:0]B,
    output reg [7:0]F
);

    always @(*)begin
        case(op)
            2'b00: begin
                F <= A + B;

            end
            2'b01: F <= A - B;
            2'b10:begin
                F <= ~A;
            end
            2'b11:begin
                F <= A * B;

            end
            default: F <= 8'bxxxxxxxx;
        endcase
    
    end

endmodule
