`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/02/2019 11:11:56 AM
// Design Name: 
// Module Name: tb
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


module tb();
  reg clk;
  reg rst;
  reg wr;
  reg [7:0] d;
  reg[1:0] addr;
  wire [7:0] q;
  
  TOP DUT(.clk(clk),
          .rst(rst),
          .wr(wr),
          .d(d),
          .addr(addr),
          .q(q)
          );
          
      initial 
        begin 
           rst=1'b0;
           clk=1'b0;
           addr=2'b00;
           d=8'b0;
           wr=1'b0;
         
          #100$stop;
       end     
          
           always #10 wr<=1'b1;       
           always #10 rst <= 1'b1;   
           always #5 clk<=~clk;         
           always #10 d<= 4'b0001;   

endmodule

