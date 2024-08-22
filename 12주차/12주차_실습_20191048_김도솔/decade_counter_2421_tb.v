`timescale 1ns / 1ps

module decade_counter_2421_tb;

reg clk, rst;
wire[3:0] out;

decade_counter_2421 u_decade_counter_2421 (
.clk (clk ),
.rst (rst ),
.out (out )
);

always #10 clk = ~clk;

initial begin
clk = 1'b0;
rst = 1'b0;
#20 rst <= 1'b1;
#80 rst <= 1'b0;
#50 rst <= 1'b1;
end  

initial begin 
    #1000
    $finish;
end

endmodule
