`timescale 1ns / 1ps


module AFISARE(
    input clk,rst,
    input [3:0]diZ,diU,
    output [7:0]an,sgm
    );
    
    wire tmpCtrl;
    wire [7:0]tmpW1,tmpW0;
    
   tffCtrl DUT0(
        .clk(clk),
        .rst(rst),
        .q(tmpCtrl)
    );
    
    dcd1b DUT1(
        .di(tmpCtrl),
        .dout(an)
    );
    
    dcd7sgm DUT3(
        .di(diZ),
        .sgm(tmpW1)
    );
    
     dcd7sgm DUT4(
        .di(diU),
        .sgm(tmpW0)
    );
    
    mux8b DUT5(
    .di0(tmpW0),
    .di1(tmpW1),
    .sel(tmpCtrl),
    .dout(sgm)
    );
endmodule