`timescale 1ns / 1ps

module fs(
    input x, y, bin,
    output d, bout
    );

    assign d = (x^y)^bin;
    assign bout = ((~(x^y))&bin)|(~x&y);

endmodule

module psub(
    input[3:0] a, b,
    input bin,
    output[3:0] d,
    output bout
    );
    
    wire b1, b2, b3;
    
    fs fs0(a[0], b[0], bin, d[0], b1);
    fs fs1(a[1], b[1], b1, d[1], b2);
    fs fs2(a[2], b[2], b2, d[2], b3);
    fs fs3(a[3], b[3], b3, d[3], bout);

endmodule
