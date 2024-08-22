`timescale 1ns / 1ps

module fs(
    input x, y, bin,
    output D, bout
    );

    assign D = (x^y)^bin;
    assign bout = ((~(x^y))&bin)|(~x&y);

endmodule