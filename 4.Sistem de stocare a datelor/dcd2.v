`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/29/2019 11:56:36 PM
// Design Name: 
// Module Name: dcd2
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


module dcd2(
    input [1:0] di,
    output reg [3:0] dout
    );
    
    always @(di)
      case (di)
              0    : dout = 4'b0001; // 1
              1    : dout = 4'b0010; // 2
              2    : dout = 4'b0100; // 4
              3    : dout = 4'b1000; // 6 
              default : dout = 4'b0; // 0
              
    endcase
endmodule
