`timescale 1ns / 1ps


module cntUd(
    input ce,
    input clk,rst,
    input ud,
    output reg [3:0]q,
    output rco
    );
    
    always@(posedge clk,posedge rst)
    begin
    if(rst)
    q<=0;
    else if(ce)
    case(ud)
    0:q<=q-1;
    1:q<=q+1;
    endcase
    end
    
    assign rco =((q==9&&ud)||(q==0&&ud==0))?1:0;
    
endmodule
