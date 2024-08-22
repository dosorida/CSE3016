`timescale 1ns / 1ps

module hs(
    input x, y,
    output D, b
    );

    assign D = x^y;
    assign b = ~x&y;

endmodule