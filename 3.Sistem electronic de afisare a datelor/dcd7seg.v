`timescale 1ns / 1ps


module dcd7seg(
    input [3:0]di,
    output reg [7:0]sgm
    );
    
always@(di)
    case(di)
    0: sgm = 8'b00000011;
    1: sgm = 8'b10011111;
    2: sgm = 8'b00100101;
    3: sgm = 8'b00001101;
    4: sgm = 8'b10011001;
    5: sgm = 8'b01001001;
    6: sgm = 8'b01000001;
    7: sgm = 8'b00011111;
    8: sgm = 8'b00000001;
    9: sgm = 8'b00001001;
    10: sgm = 8'b00010001;
    11: sgm = 8'b11000001;
    12: sgm = 8'b01100011;
    13: sgm = 8'b10000101;
    14: sgm = 8'b01100001;
    15: sgm = 8'b01110001;
 default : sgm = 8'b11111111;
 endcase
   
endmodule
