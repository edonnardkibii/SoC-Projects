`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2020 23:19:47
// Design Name: 
// Module Name: MS_FlipFlop_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MS_FlipFlop_tb(

    );
    
    reg D_tb, Clk_tb;
    
    wire Q_tb, Qn_tb;
    
    MS_FlipFlop dut(
        .D(D_tb),
        .Clk(Clk_tb),
        .Q(Q_tb),
        .Qn(Qn_tb)
    );
    
    initial begin
        D_tb   = 0;
        Clk_tb = 0;
        
      //   repeat(4) #11 Clk_tb=~Clk_tb;  
    end;
    
    always begin
    //Zeitverzögerung um 11*1ns = 11ns
        //O for 11ns then 1 for 11ns 
        #11;
        Clk_tb = ~Clk_tb;
        //1 for 11ns then 0 for 11ns
        //#11;
        $display("Zeit: %t, Q: %b", $time, Q_tb);
     end;
    
    always begin
    //Zeitverzögerung um 3*1ns = 3ns
        #3;
        D_tb = ~D_tb;
    end;
    
endmodule
