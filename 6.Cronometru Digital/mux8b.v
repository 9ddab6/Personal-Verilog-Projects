`timescale 1ns / 1ps




module mux8b(
    input [7:0]di0,di1,
    input sel,
    output reg [7:0]dout
    );
    
    always@(sel,di0,di1)
    begin
    case(sel)
    0:dout=di0;
    1:dout=di1;
    default:dout=8'bxxxx_xxxx;
    endcase
    end
      
    
    
    
endmodule
