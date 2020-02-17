`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2019 10:20:44 AM
// Design Name: 
// Module Name: TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TOP(
    input clk, rst, wr,
    input [7:0] d,
    input [1:0] addr,
    output [7:0] q
    );
    wire [3:0] tmpEn;
    wire [7:0] tmpD3, tmpD2, tmpD1, tmpD0;
    
    dcd2  UUT1 (.di(addr),
                .dout(tmpEn)
                );
                            
    regBank UUT2 (.en(tmpEn),
                  .clk(clk),
                  .rst(rst),
                  .wr(wr),
                  .d(d),
                  .q3(tmpD3),
                  .q2(tmpD2),
                  .q1(tmpD1),
                  .q0(tmpD0)
                  );
                  
     mux4_8 UUT3 (.sel(addr),
                  .d3(tmpD3),
                  .d2(tmpD2),
                  .d1(tmpD1),
                  .d0(tmpD0),
                  .dout(q)
                  );                 
endmodule
