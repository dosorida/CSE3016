`timescale 1ns / 1ps

module sr_tb;

reg clk, rst, in;
wire[3:0] out;

sr u_sr (
.clk (clk ),
.rst (rst ),
.in (in ),
.out (out )
);

initial begin
clk = 1'b0;
rst = 1'b0;
in = 1'b1;
end

always #10 clk = ~clk;
always #50 in = ~in;
always #200 rst = ~rst;

initial begin 
    #1000
    $finish;
end

endmodule