`timescale 1ns / 1ps


module top(
    input upDown,enable,clk,
    input rst,
    output [3:0]an,
    output [7:0]sgm
    );
    
    wire tmpClk1,tmpClk1k;
    wire [3:0]tmpZ,tmpU;
    
    DIVIZOR DUT1(
        .clk(clk),
        .rst(rst),
        .clkO1(tmpClk1),
        .clkO1k(tmpClk1k)
    ); 
    
        CALCUL DUT2(
            .upDown(upDown),
            .enable(enable),
            .clk(clk),
            .clockEnable(tmpClk1),
            .rst(rst),
            .doutZ(tmpZ),
            .doutU(tmpU)
        );
        
        AFISARE DUT3(
            .clk(tmpClk1k),
            .diZ(tmpZ),
            .diU(tmpU),
            .an(an),
            .sgm(sgm),
            .rst(rst)
        );
    
    
    
    
    
    
    
    
    
    
    
    
endmodule