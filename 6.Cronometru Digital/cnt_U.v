`timescale 1ns / 1ps


module cnt_U(
    input clk,rst,ud,
    input ce,
    output rcoU,
    output reg [3:0]qU
    );
    
    
       always@(posedge clk,posedge rst)
    begin
    if(rst)
        qU<=0;
        else if(ce)
            if(ud)
            begin    
                if(qU==9)
                qU<=0;
        else
        qU<=qU+1;
            end
        else
            if(qU==0)
            qU<=9;
            else
            qU<=qU-1;
    end            
    
    assign rcoU=((qU==9&&ud)||(qU==0&&ud==0))?1:0;
    
 
    
endmodule