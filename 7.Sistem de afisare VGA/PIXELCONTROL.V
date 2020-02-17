`timescale 1ns / 1ps

// Are rolul de a genera semnale de control
// controleaza operatia de afisare pt pixel curent ,
// furnizat pe intr pixel la (x,y) ale punctului de afisare
// Furnizeaza coordonatele ferestrei de afisare a imaginii
module PIXELCONTROL(
    input [9:0]xL,xR,
    input [9:0]yU,yD,
    input [9:0]x,
    input [9:0]y,
    output readPixel
    );

    readPixelCtrl DUT0(
    .xL(xL),
    .xR(xR),
    .yU(yU),
    .yD(yD),
    .x(x),
    .y(y),
    .readPixel(readPixel)
   );
   
   
   endmodule