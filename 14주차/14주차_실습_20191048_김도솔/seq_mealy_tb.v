`timescale 1ns / 1ps

module seq_mealy_tb;

reg clk, rst, in;
wire out;

seq_mealy u_seq_mealy (
.clk (clk ),
.rst (rst ),
.in (in ),
.out (out )
);

initial begin
clk = 1'b0;
rst = 1'b0;
in = 1'b0;
end

always #10 clk = ~clk;
always #200 rst = ~rst;
always@(in) begin
    in = #10 ~in;
    in = #10 ~in;
    in = #10 ~in;
    in = #30 ~in;
    in = #10 ~in;
    in = #10 ~in;
    in = #10 ~in;
    in = #20 ~in;
    in = #10 ~in;
    in = #40 ~in;
    in = #30 ~in;
    in = #30 ~in;
    in = #10 ~in;
    in = #20 ~in;
    in = #10 ~in;
    in = #30 ~in;
    in = #10 ~in;
    in = #10 ~in;
    in = #10 ~in;
    in = #10 ~in;
    in = #20 ~in;
end

initial begin 
    #1000
    $finish;
end

endmodule
