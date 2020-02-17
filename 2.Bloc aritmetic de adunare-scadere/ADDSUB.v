`timescale 1ns / 1ps


module ADDSUB(
    input[3:0]X,[3:0]Y,
    input MODE,
    output [3:0]S,
    output OVU,OVS
    );
    
    wire [4:0]tmpC;
   
    
    generate
        genvar i;
        for(i=0;i<4;i=i+1)
        begin: instantiere
        addSub1b U2(
                    .x(X[i]),
                    .y(Y[i]),
                    .mode(MODE),
                    .ci(tmpC[i]),
                    .co(tmpC[i+1]),
                    .s(S[i])
                    );
                    end
                    endgenerate
assign OVU = tmpC[4];
assign OVS = tmpC[4] ^ tmpC[3];
assign tmpC[0] = MODE;

                    
          
                    
                
endmodule
