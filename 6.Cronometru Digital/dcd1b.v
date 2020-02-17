`timescale 1ns / 1ps


module dcd1b(
    input di,
    output reg [7:0]dout
    );
    
    always@(di)
    case(di)
    0: dout={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0}; 
    1: dout={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1}; 
    default dout=8'b1111_1111;
    endcase
    
    
    
endmodule
