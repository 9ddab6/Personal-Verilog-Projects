`timescale 1ns / 1ps

//  Stocheaza informatia ce urmeaza a fi afisata pe ecran
// (in acest lab aceasta comp lipseste)
// Informatia fiind aplicata direct in exterior la intr pixel
module VIDEOBUFFER(
    input readPixel,
    input [11:0]pixel,
    output [11:0]rgb
    );
    
    wire [11:0]tmp0=0;
    
   mux12b DUT0(
        .di0(tmp0),
        .di1(pixel),
        .sel(readPixel),
        .dout(rgb)
    );
    
    
    
    
    
endmodule


