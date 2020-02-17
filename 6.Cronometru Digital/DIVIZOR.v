`timescale 1ns / 1ps


module DIVIZOR(
    input clk,rst,
    output clkO1,clkO1k
    );
    
    
    one_second DUT1(
    .clk(clk),
    .rst(rst),
    .clkO1(clkO1) 
    );
    
    div_1khz DUT2(
    .clk(clk),
    .rst(rst),
    .clkO1k(clkO1k)
    );
    
    
    
    
    
    
    
    
    
    
    
    
    
endmodule