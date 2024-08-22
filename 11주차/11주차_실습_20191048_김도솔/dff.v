`timescale 1ns / 1ps

module dff(
    input clk, d,
    output q, _q
    );
    
    wire out1;
    wire out2;
    
    assign out1 = ~d&clk;
    assign out2 = d&clk;
    assign q = ~(out1|_q);
    assign _q = ~(out2|q);
    
endmodule