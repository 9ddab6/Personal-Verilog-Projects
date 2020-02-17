`timescale 1ns / 1ps


module add1b(
    input a,b,
    input ci,
    output co,s
    );
    
    assign {co,s} = a+b+ci;
    
   
   
endmodule
