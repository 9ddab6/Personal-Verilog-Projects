`timescale 1ns / 1ps


module dmux8(
    input [2:0]sel,
    input en,
    output reg [7:0]an
    );
    
    
always@(sel,en)
    case(sel)
    000:begin an={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,en}; end
    001:begin an={1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,en,1'b1}; end
    010:begin an={1'b1,1'b1,1'b1,1'b1,1'b1,en,1'b1,1'b1}; end
    011:begin an={1'b1,1'b1,1'b1,1'b1,en,1'b1,1'b1,1'b1}; end
    100:begin an={1'b1,1'b1,1'b1,en,1'b1,1'b1,1'b1,1'b1}; end
    101:begin an={1'b1,1'b1,en,1'b1,1'b1,1'b1,1'b1,1'b1}; end
    110:begin an={1'b1,en,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}; end
    111:begin an={en,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}; end
    default:  an=8'b11111111;
    endcase
    
endmodule
