`timescale 1ns / 1ps


module TOP(
    input rst,clk,
    input ud,
    output [7:0]an,
    output [7:0]sgm,
    output rco
    );
    
    wire tmpClk;
    wire [3:0]tmpQ;
    
    assign an=8'b11111110;
    
    div U1(
        .rst(rst),
        .clkI(clk),
        .clkO(tmpClk)
        );
    
    cntUd U2(
        .ce(tmpClk),
        .ud(ud),
        .rst(rst),
        .clk(clk),
        .q(tmpQ),
        .rco(rco)
        );    
    
    dcd7sgm U3(
        .di(tmpQ),
        .sgm(sgm)
        );       
    
    
endmodule
