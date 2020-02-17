`timescale 1ns / 1ps

// Are rolul de a genera semnale de sincronizare pe orizontala+verticala
// VGA 640x480@60Hz
// Furnizeaza coordonate punctului de afisare (x,y)

module VGASYNCH(
    input clk,
    input rst, // utilizata pt initializarea starii numaratoarelor pe 0 
    output hSynch, // semnal de sinc pe orizontala
    output vSynch, // semnal de sinc pe verticala 
    output [9:0]x, //  [N-1]x ~ N =dim iesirea nr CNT
    output [9:0]y 
    );
    
    wire tmpRco;
    wire ce=1'b1;
    
    cntH DUT0(
        .ce(ce),
        .clk(clk),
        .rst(rst),
        .synch(hSynch), // == puls de sincronizare pe orizonatala 
        .q(x), // punct de afisare x
        .rco(tmpRco)
    );
    
    cntV DUT1(
        .ce(tmpRco),
        .rst(rst),
        .clk(clk),
        .q(y),
        .synch(vSynch) // puls sincronizare pe verticala 
    );
    
    
    
    
    
endmodule