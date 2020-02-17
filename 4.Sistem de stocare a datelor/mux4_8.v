`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2019 10:18:56 AM
// Design Name: 
// Module Name: mux4_8
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


module mux4_8(
    input [7:0] d3, d2, d1, d0,
    input [1:0] sel,
    output reg [7:0] dout
    );
    
    always @(sel or d0 or d1 or d2 or d3)
      case (sel)
      2'b00:  dout=d0;
      2'b01:  dout=d1;
      2'b10:  dout=d2;
      2'b11:  dout=d3;
      default: dout=8'b0;
      
      endcase 
    
endmodule
