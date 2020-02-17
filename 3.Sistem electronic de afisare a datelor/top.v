`timescale 1ns / 1ps


module top(
    input [2:0]sel,
    input en,
    input [3:0]di,
    output [7:0]an,
    output [7:0]sgm
    );
    
    dmux8 U1(
   .sel(sel),
   .en(en),
   .an(an)
);

dcd7seg U2(
   .di(di),
   .sgm(sgm)
);
       

endmodule
