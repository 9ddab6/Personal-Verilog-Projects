`timescale 1ns / 1ps


module TOP#(
    parameter XL=0,
    parameter XR=630,
    parameter YU=0,
    parameter YD=470
)(
    input clk, // frontul activ este frontul pozitiv
    input rst, // intrare de initializare asincrona ~ activ pe 1 ~ pt blocul de afisare
    input [11:0]pixel, // intrare de date , se furniz comp RGB ale pixel curent
    output [11:0]rgb, // furnizeaza comp RGB la portu VGA al fpga pt a fi transmise pe ecran.
    output hs, // iesire pt sinc pe orizontala
    output vs  // iesire pt sinc pe verticala
    );
    
    wire tmpClk;
    wire [9:0]tmpX,tmpY;
    wire tmpReadPixel;
    
    
    VGAPLL DUT0 (
  // Clock out ports
  .clk_out1(tmpClk),
  // Status and control signals
  .reset(rst),
 // Clock in ports
   .clk_in1(clk)
 );
    
    VGASYNCH DUT1(
        .clk(tmpClk),
        .rst(rst), // utilizata pt initializarea starii numaratoarelor pe 0 
        .hSynch(hs), // semnal de sinc pe orizontala
        .vSynch(vs), // semnal de sinc pe verticala 
        .x(tmpX), //  [N-1]x ~ N =dim iesirea nr CNT
        .y(tmpY) 
    );
    
    PIXELCONTROL DUT2(
        .xL(XL),
        .xR(XR),
        .yU(YU),
        .yD(YD),
        .x(tmpX),
        .y(tmpY),
        .readPixel(tmpReadPixel)
    );
    
    VIDEOBUFFER DUT3(
        .readPixel(tmpReadPixel),
        .pixel(pixel),
        .rgb(rgb)
    );
 
    
    
    
    
    
    
    
endmodule
