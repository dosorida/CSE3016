`timescale 1ns / 1ps

module decade_counter(
    clk, rst, out
    );
    
    input clk, rst;
    output[3:0] out;
    reg[3:0] out;
  
    initial out = 4'b0000;
  
    always @(posedge clk) begin
        if(!rst)
            out <= 4'b0000;
        else if(out >= 4'b1001)
            out <= 4'b0000;
        else
            out <= out + 1;
    end
    
endmodule

module bcd_to_2421(
    in, out
    );
    
    input[3:0] in;
    output[3:0] out;
  
    assign out[3] = in[3]|(in[2]&in[0])|(in[2]&in[1]);
    assign out[2] = in[3]|(in[2]&in[1])|(in[2]&~in[0]);
    assign out[1] = (in[2]&~in[1]&in[0])|in[3]|(~in[2]&in[1]);
    assign out[0] = in[0];
    
endmodule

module decade_counter_2421(
    clk, rst, out
    );

    input clk, rst;
    output[3:0] out;
  
    wire[3:0] conv;
  
    decade_counter dc(
        .clk(clk), 
        .rst(rst),
        .out(conv)
    );
  
    bcd_to_2421 bt2(
        .in(conv),
        .out(out)
    );
endmodule
