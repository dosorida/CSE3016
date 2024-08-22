`timescale 1ns / 1ps

module udc_tb;

reg clk, rst, state;
wire[3:0] out;
wire[6:0] seg;
wire digit;

udc u_udc (
.clk (clk ),
.rst (rst ),
.state (state ),
.out (out ),
.seg (seg ),
.digit (digit )
);

initial begin
clk = 1'b0;
rst = 1'b0;
state = 1'b1;
end

always #10 clk = ~clk;
always #400 state = ~state;
always #600 rst = ~rst;

initial begin 
    #1000
    $finish;
end

endmodule
