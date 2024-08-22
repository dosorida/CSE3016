`timescale 1ns / 1ps

module rc_tb;

reg clk, rst;
wire[3:0] out;

rc u_rc (
.clk (clk ),
.rst (rst ),
.out (out )
);

initial begin
clk = 1'b0;
rst = 1'b0;
end

always #10 clk = ~clk;
always #200 rst = ~rst;

initial begin 
    #1000
    $finish;
end

endmodule