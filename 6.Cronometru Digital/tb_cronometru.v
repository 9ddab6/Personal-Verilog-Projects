`timescale 1ns / 1ps


module tb_cronometru(
    );
    
    
    reg upDown,enable,clk;
    reg rst;
    wire [3:0]an;
    wire [7:0]sgm;
    
    top UUT(
        .upDown(upDown),
        .enable(enable),
        .clk(clk),
        .rst(rst),
        .an(an),
        .sgm(sgm)
    );
    
    
    initial
    begin
    clk=0;
    rst=1;
    upDown=1;
    enable=1;
    #10 rst=0;
    end
    
    
    always #1 clk = ~clk;
  
    
   
    
endmodule