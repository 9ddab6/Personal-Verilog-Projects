`timescale 1ns / 1ps


module addSub1b(
    input mode,ci, // mode = 0 - adunare ; mode = 1 - scadere
    input x,y,
    output s,
    output co
    );
    wire tmpY;
    assign tmpY = mode^y;
    
    add1b U1(
            .a(x),
            .b(tmpY),
            .ci(ci),
            .co(co),
            .s(s)
            );
            
            
endmodule
