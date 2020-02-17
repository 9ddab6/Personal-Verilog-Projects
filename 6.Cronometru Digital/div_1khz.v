`timescale 1ns / 1ps


module div_1khz#(
    parameter MAX=99999      
    )
    (
    input clk,rst,
    output clkO1k 
    );
    
    reg [16:0]tmp;
    
    always@(posedge clk,posedge rst)
    begin
    if(rst)
    tmp<=0;
    else if(tmp==MAX)
    tmp<=0;
    else
    tmp<=tmp+1;
    end
    
    assign clkO1k=(tmp==MAX)?1'b1:1'b0;
   
endmodule
