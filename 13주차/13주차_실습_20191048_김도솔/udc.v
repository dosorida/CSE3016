`timescale 1ns / 1ps

module udc(
    clk, rst, state, out, seg, digit
    );
    
    input clk, rst, state;
    output[3:0] out;
    output[6:0] seg;
    output digit;
    reg[3:0] out;
    reg[6:0] seg;
    reg digit;
    
    initial out <= 4'b0000;
    initial digit = 1;
    
    always @(posedge clk) begin
        if (rst == 1'b1)
            out <= 4'b0000;
        else begin
            if(state == 1'b1) begin
                if (out == 4'b1111) begin
                    out <= 4'b0000;
                end
                else begin
                    out <= out + 4'b0001;
                end
                seg <= 7'b0111110;
            end
            else begin
                if (out == 4'b0000) begin
                    out <= 4'b1111;
                end
                else begin
                    out <= out - 4'b0001;
                end
                seg <= 7'b0111101;
            end
        end
    end
endmodule