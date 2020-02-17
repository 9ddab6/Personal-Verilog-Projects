`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Alessandro Bolog
// 
// Create Date: 03/29/2019 11:24:49 PM
// Design Name: 
// Module Name: regBank
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


parameter N=4;

module regBank(
    input clk, rst, wr,
    input [3:0] en,
    output [7:0] q3, q2, q1, q0,
    input [7:0] d
    );
    
    rpp4 U3 (.en(en[3]),
            .clk(clk),
            .rst(rst),
            .ld(wr),
            .d(d),
            .q(q3)  );
            
    rpp4 U2 (.en(en[2]),
            .clk(clk),
            .rst(rst),
            .ld(wr),
            .d(d),
            .q(q2)  );
            
    rpp4 U1 (.en(en[1]),
            .clk(clk),
            .rst(rst),
            .ld(wr),
            .d(d),
            .q(q1)  );
                     
    rpp4 U0 (.en(en[0]),
            .clk(clk),
            .rst(rst),
            .ld(wr),
            .d(d),
            .q(q0));

endmodule
