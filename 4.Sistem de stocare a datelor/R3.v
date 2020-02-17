`timescale 1ns / 1ps

module rpp4(
    input en, clk, rst, ld,
    input [7:0] d,
    output reg [7:0] q
    );
    
    always @ (posedge clk, posedge rst)
       if (rst)
           q<=8'b0;
           else if (en)
                   if (ld)
                      q<=d;
endmodule

