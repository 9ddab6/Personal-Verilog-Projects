`timescale 1ns / 1ps

module mux12b(
    input [11:0]di0,
    input [11:0]di1,
    input sel,
    output reg [11:0]dout=0
    );
    
    always@*
    begin
    case(sel)
    0:dout=di0;
    1:dout=di1;
    default:dout=12'bx;
    endcase
    end
    
    
endmodule
