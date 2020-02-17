`timescale 1ns / 1ps


module CALCUL(
    input upDown,rst,clk,
    input enable,clockEnable,
    output [3:0]doutU,doutZ
    );
    
    wire tmpRco;
    wire tmpCe;
    wire tmpCeZeci;
    
    cnt_U DUT1(
         .clk(clk),
         .rst(rst),
         .ud(upDown),
         .ce(tmpCe),
         .rcoU(tmpRco),
         .qU(doutU)
          );
          
    cnt_Z DUT2(
         .clk(clk),
         .rst(rst),
         .ud(upDown),
         .ce(tmpCeZeci),
         .qZ(doutZ)
    );
    
    assign tmpCe=enable&&clockEnable;
    assign tmpCeZeci=tmpRco&&enable&&clockEnable;
    
    
    
          
          
    
    
    
    
    
    
    
    
    
    
    
    
    
endmodule