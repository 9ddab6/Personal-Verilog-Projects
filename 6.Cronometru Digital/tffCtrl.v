`timescale 1ns / 1ps


module tffCtrl(
    input clk,rst,
    output q
    );
    
    reg refresh_cnt=0;

always@(posedge clk,posedge rst)
begin
    if(rst==1)
        refresh_cnt<=0;
    else
        refresh_cnt<=refresh_cnt+1;
end
    assign q=refresh_cnt;
    
   
endmodule
