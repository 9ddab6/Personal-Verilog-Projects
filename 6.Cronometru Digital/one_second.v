`timescale 1ns / 1ps


module one_second#(
    parameter MAX=99999999      
    )
    (
    input clk,rst,
    output clkO1 
    );
    
    reg [26:0]tmp;
    
    always@(posedge clk,posedge rst)
    begin
    if(rst)
    tmp<=0;
    else if(tmp==MAX)
    tmp<=0;
    else
    tmp<=tmp+1;
    end
    
    assign clkO1=(tmp==MAX)?1'b1:1'b0;
    
endmodule
