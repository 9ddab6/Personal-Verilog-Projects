`timescale 1ns / 1ps


module test_ADDSUB(

    );
    
    reg [3:0]A;
    reg [3:0]B;
    reg MODE;
    wire S[3:0];
    wire OVU,OVS;
    
        generate
        genvar i;
        for(i=0;i<4;i=i+1)
        begin: instantiere
        ADDSUB U3(
                    .X(A[i]),
                    .Y(B[i]),
                    .MODE(MODE),
                    .S(S[i]),
                    .OVU(OVU),
                    .OVS(OVS)      
                    );
                    end
                    endgenerate
                    
initial 
    begin
    MODE=0;
    A=4'b0101;
    B=4'b0001;
    #10
    A=4'b1011;
    B=4'b0101;
    #20
   
    $finish;
    end
endmodule
