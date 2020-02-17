`timescale 1ns / 1ps

// readPixelCtrl utilizat pt generarea semnalului care controleaza
// momentul afisarii pixelului curent in pct de afisare de coord(x,y)
// xL<xR xL[0,639] xR[0,639]
// yU<yD yU[0,479] yD[0,479]
module readPixelCtrl(
    input [9:0]xL,xR,
    input [9:0]yU,yD,
    input [9:0]x,
    input [9:0]y,
    output reg readPixel=0 // repr comanda de citire/afisare a pixel curent
                    // activ pe 1 logic
    );
    
    
    always@(xL,xR,yU,yD,x,y)
    begin
    if(((x>=xL)&&(xR>=x))&&((y>=yU)&&(yD>=y)))
        readPixel=1;
        else
        readPixel=0; 
    end
    
    
    
endmodule
