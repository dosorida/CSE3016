`timescale 1ns / 1ps

module rsff1(
    input clk, r, s,
    output q, _q
    );
    
    wire out1;
    wire out2;
    
    assign out1 = ~(r&clk);
    assign out2 = ~(s&clk);
    assign q = ~(out2&_q);
    assign _q = ~(out1&q);
    
endmodule