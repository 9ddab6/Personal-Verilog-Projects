`timescale 1ns / 1ps

// cntV = numarator modulo 521 [0,520]
module cntV#(
    parameter max=520,
    parameter PWL=490,
    parameter PWH=492
)(
    input ce,
    input rst,
    input clk,
    output reg [9:0]q=0,
    output synch, // puls sincronizare pe verticala 
    output rco
    );
    
    always@(posedge clk,posedge rst)
    begin
    if(rst)
        q<=0;
        else if(ce)
            if(q==max)
            q<=0;
    else
        q<=q+1;
    end          
      
    assign synch=((q>=PWL)&&(q<=PWH))?0:1;
    assign rco=(q==max)?1:0;
    
    
    
    
    
    
    
    
    
endmodule