`timescale 1ns / 1ps

module mux(
    input a, b, A, B, C, D,
    output e
    );

    assign e = (A&~a&~b)|(B&a&~b)|(C&~a&b)|(D&a&b);
    
endmodule