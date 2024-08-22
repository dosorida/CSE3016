`timescale 1ns / 1ps

module fa(
    input x, y, cin,
    output s, cout
    );

    assign s = (x^y)^cin;
    assign cout = (cin&(x^y))|(x&y);

endmodule

module padd(
    input[3:0] a, b,
    input cin,
    output[3:0] s,
    output cout
    );
    
    wire c1, c2, c3;
    
    fa fa0(a[0], b[0], cin, s[0], c1);
    fa fa1(a[1], b[1], c1, s[1], c2);
    fa fa2(a[2], b[2], c2, s[2], c3);
    fa fa3(a[3], b[3], c3, s[3], cout);

endmodule