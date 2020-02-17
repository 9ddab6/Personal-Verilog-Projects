`timescale 1ns / 1ps


module cnt_Z(
    input clk,rst,ud,
    input ce,
    output rcoZ,
    output reg [3:0]qZ
    );
    
    
       always@(posedge clk,posedge rst)
    begin
    if(rst)
        qZ<=0;
        else if(ce)
            if(ud)
            begin    
                if(qZ==5)
                qZ<=0;
        else
        qZ<=qZ+1;
            end
        else
            if(qZ==0)
            qZ<=5;
            else
            qZ<=qZ-1;
    end           
    
    assign rcoZ=((qZ==5&&ud)||(qZ==0&&ud==0))?1:0;

   
endmodule
