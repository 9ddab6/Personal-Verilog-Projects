`timescale 1ns / 1ps

// Utilizat pt
// Baleierea liniilor care contin un cadru al imaginii afisate
// generare semnal sinc pe orizontala la iesirea hSynch 
// Pt generarea valorii x a coordonatei pe axa OX , a pixel curent.
// Pt generarea CE al cntV
// Numara in intervalul [0,799]

module cntH#(
    parameter max=799,
    parameter PWL=656,
    parameter PWH=751
)(
    input ce,
    input clk,
    input rst,
    output synch, // == puls de sincronizare pe orizonatala 
    output reg [9:0]q=0, // punct de afisare x
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
