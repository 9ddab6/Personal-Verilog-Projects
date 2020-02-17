`timescale 1ns / 1ps


module div#
(
    parameter MAX=99999999      
)
(
    input clkI,rst,
    output clkO
    );
    
    reg [26:0]tmp;
    
    always@(posedge clkI,posedge rst)
    begin
    if(rst)
    tmp<=0;
    else if(tmp==MAX)
    tmp<=0;
    else
    tmp<=tmp+1;
    end
    
    assign clkO =(tmp==MAX)?1'b1:1'b0;
    
    
endmodule
