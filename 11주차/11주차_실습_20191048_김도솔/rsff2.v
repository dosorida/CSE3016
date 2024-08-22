`timescale 1ns / 1ps

module rsff2(
    input clk, r, s,
    output q, _q
    );
    
    wire out1;
    wire out2;
    
    assign out1 = r&clk;
    assign out2 = s&clk;
    assign q = ~(out1|_q);
    assign _q = ~(out2|q);
    
endmodule