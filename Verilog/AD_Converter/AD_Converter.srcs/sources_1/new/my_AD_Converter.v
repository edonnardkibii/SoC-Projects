`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.11.2020 00:15:02
// Design Name: 
// Module Name: my_AD_Converter
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


module my_AD_Converter #
(
parameter integer DATA_WIDTH = 16
)
(
// ADC IC
input [ 16-1: 2] adc_dat_a_i , //ADC IC CHA Daten
input [ 16-1: 2] adc_dat_b_i , //ADC IC CHB Daten
input adc_clk_p_i , //ADC IC Takt P Anschluss
input adc_clk_n_i , //ADC IC Takt N Anschluss
output reg [DATA_WIDTH-1:0] adc_dat_a , //Ausgabe der Eingelesene Daten
output reg [DATA_WIDTH-1:0] adc_dat_b , //Ausgabe der Eingelesene Daten
output adc_clk //Takt
);
wire adc_clk_in ;
// Differentielles Takt-Signal vom ADC --> Single Ended
IBUFDS i_clk ( .I(adc_clk_p_i), .IB(adc_clk_n_i), .O(adc_clk_in));
// Takt-Signal puffern
BUFG i_adc_buf (.O(adc_clk), .I(adc_clk_in));
// BEi positiver Flanke Daten Speichern
always @(posedge adc_clk) begin
adc_dat_a <= {adc_dat_a_i[16-1], ~adc_dat_a_i[16-2:2], 2'b00 }; // die unteren Bits reserviert für 16bit ADC
adc_dat_b <= {adc_dat_b_i[16-1], ~adc_dat_b_i[16-2:2], 2'b00 }; // die unteren Bits reserviert für 16bit ADC
end
endmodule