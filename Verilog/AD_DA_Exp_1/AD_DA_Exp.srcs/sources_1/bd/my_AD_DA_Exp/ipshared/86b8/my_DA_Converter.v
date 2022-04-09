`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2019 01:33:18 PM
// Design Name: 
// Module Name: my_DA_Converter
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


module my_DA_Converter #
(
   parameter integer DATA_WIDTH  = 16

)
(
   // PS Signale
   input                 rstn_i      ,  //!< PS reset - active low

   // Clock Signal vom ADC
   input               adc_clk,
   
   // Daten zum Ausgeben
   input    [ DATA_WIDTH-1: 0] dat_a_i        , // !< ADC IC CHA data connection
   input    [ DATA_WIDTH-1: 0] dat_b_i        , // 
   
   // Verbindung zum DAC IC
   output   [ 14-1: 0] dac_dat_o          ,  //!< DAC IC combined data
   output              dac_wrt_o          ,  //!< DAC IC write enable
   output              dac_sel_o          ,  //!< DAC IC channel select
   output              dac_clk_o          ,  //!< DAC IC clock
   output              dac_rst_o            //!< DAC IC reset   

   );
   
   //  Fast DAC - DDR interface
   
   wire  dac_clk_fb      ; // Feedback Signal
   wire  dac_clk_fb_buf  ; // gepuffertes Feedback Signal
   wire  dac_clk_out     ; // von PLL erzeugtes Signale
   wire  dac_2clk_out    ; // von PLL erzeugtes Signale 
   wire  dac_2ph_out     ; // von PLL erzeugtes  Signale
   wire  dac_clk_buf     ;
   wire  dac_2clk_buf    ;
   wire  dac_2ph_buf     ;
   wire  dac_locked      ;
   reg   dac_rst         ;
   
   
   //
   // Aufruf von PLLE2_ADV 
   // Dabei werden die Parameter für die PLL übergeben
   // Der Phasenregelkreis dient dazu die benötigten Signale für das
   // Ansteuern des DAC zu generieren
   // 
   PLLE2_ADV
   #(
      .BANDWIDTH            ( "OPTIMIZED"   ),
      .COMPENSATION         ( "ZHOLD"       ),
      .DIVCLK_DIVIDE        (  1            ),
      .CLKFBOUT_MULT        (  8            ),
      .CLKFBOUT_PHASE       (  0.000        ),
      .CLKOUT0_DIVIDE       (  8            ),
      .CLKOUT0_PHASE        (  0.000        ),
      .CLKOUT0_DUTY_CYCLE   (  0.5          ),
      .CLKOUT1_DIVIDE       (  4            ),
      .CLKOUT1_PHASE        (  0.000        ),
      .CLKOUT1_DUTY_CYCLE   (  0.5          ),
      .CLKOUT2_DIVIDE       (  4            ),
      .CLKOUT2_PHASE        ( -45.000        ), // negative Phase ist wichtig! Sonst Störungen von 8MHz!
      .CLKOUT2_DUTY_CYCLE   (  0.5          ),
      .CLKOUT3_DIVIDE       (  4            ),  // 4->250MHz, 2->500MHz
      .CLKOUT3_PHASE        (  0.000        ),
      .CLKOUT3_DUTY_CYCLE   (  0.5          ),
      .CLKIN1_PERIOD        (  8.000        ), // Periodendauer 8ns (125MHz)
      .REF_JITTER1          (  0.010        )
   )
   i_dac_plle2
   (
      // Output clocks
      .CLKFBOUT     (  dac_clk_fb     ),
      .CLKOUT0      (  dac_clk_out    ),
      .CLKOUT1      (  dac_2clk_out   ),
      .CLKOUT2      (  dac_2ph_out    ),
      .CLKOUT3      (        ),
      .CLKOUT4      (        ),
      .CLKOUT5      (        ),
      // Input clock control
      .CLKFBIN      (  dac_clk_fb_buf ),
      .CLKIN1       (  adc_clk        ),
      .CLKIN2       (  1'b0           ),
      // Tied to always select the primary input clock
      .CLKINSEL     (  1'b1           ),
      // Ports for dynamic reconfiguration
      .DADDR        (  7'h0           ),
      .DCLK         (  1'b0           ),
      .DEN          (  1'b0           ),
      .DI           (  16'h0          ),
      .DO           (        ),
      .DRDY         (        ),
      .DWE          (  1'b0           ),
      // Other control and status signals
      .LOCKED       (  dac_locked     ),
      .PWRDWN       (  1'b0           ),
      .RST          ( !rstn_i         )  // System Reset Reset bei 1'b1
   );
   
   // *************************************
   // Signale aus der PLL werden gepuffert
   // *************************************
   BUFG i_dacfb_buf   (.O(dac_clk_fb_buf), .I(dac_clk_fb));
   BUFG i_dac1_buf    (.O(dac_clk_buf),    .I(dac_clk_out));
   BUFG i_dac2_buf    (.O(dac_2clk_buf),   .I(dac_2clk_out));
   BUFG i_dac2ph_buf  (.O(dac_2ph_buf),    .I(dac_2ph_out));
   
   // Zwischenspeichern der Werte für den DA-Wandler
   reg  [16-1: 0] dac_dat_a  ;
   reg  [16-1: 0] dac_dat_b  ;
   
   //
   // Es werden die oberen DATA_WIDTH Bit verwendert. 
   // Die restlichnen werden mit 1'b0 aufgefüllt
   // Da der DC-Konverter nur 14bit breit ist, werden
   // die 16bit um 2bit (>>2) verschoben
   //
   always @(posedge dac_clk_buf) begin
      dac_dat_a <= { dat_a_i[DATA_WIDTH-1], ~dat_a_i[DATA_WIDTH-2:0], {16-DATA_WIDTH{1'b1}} } ; // 
      dac_dat_b <= { dat_b_i[DATA_WIDTH-1], ~dat_b_i[DATA_WIDTH-2:0], {16-DATA_WIDTH{1'b1}} } ; // 
      dac_rst   <= !dac_locked;          // Sobald die PLL lockt Reset
   end
   
   
   // *******************************************************
   // Erzeugen der Signale für den DA-Wandler
   // Damit die Signale richtig am DA-Wandler ankommen,
   // IRD ODDR verwendet
   // *******************************************************
   ODDR i_dac_clk ( .Q(dac_clk_o), .D1(1'b0), .D2(1'b1), .C(dac_2ph_buf),  .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_wrt ( .Q(dac_wrt_o), .D1(1'b0), .D2(1'b1), .C(dac_2clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_sel ( .Q(dac_sel_o), .D1(1'b1), .D2(1'b0), .C(dac_clk_buf),  .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_rst ( .Q(dac_rst_o), .D1(dac_rst), .D2(dac_rst), .C(dac_clk_buf), .CE(1'b1), .R(1'b0), .S(1'b0) );
   
   ODDR i_dac_0  ( .Q(dac_dat_o[ 0]), .D1(dac_dat_b[ 2]), .D2(dac_dat_a[ 2]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_1  ( .Q(dac_dat_o[ 1]), .D1(dac_dat_b[ 3]), .D2(dac_dat_a[ 3]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_2  ( .Q(dac_dat_o[ 2]), .D1(dac_dat_b[ 4]), .D2(dac_dat_a[ 4]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_3  ( .Q(dac_dat_o[ 3]), .D1(dac_dat_b[ 5]), .D2(dac_dat_a[ 5]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_4  ( .Q(dac_dat_o[ 4]), .D1(dac_dat_b[ 6]), .D2(dac_dat_a[ 6]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_5  ( .Q(dac_dat_o[ 5]), .D1(dac_dat_b[ 7]), .D2(dac_dat_a[ 7]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_6  ( .Q(dac_dat_o[ 6]), .D1(dac_dat_b[ 8]), .D2(dac_dat_a[ 8]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_7  ( .Q(dac_dat_o[ 7]), .D1(dac_dat_b[ 9]), .D2(dac_dat_a[ 9]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_8  ( .Q(dac_dat_o[ 8]), .D1(dac_dat_b[10]), .D2(dac_dat_a[10]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_9  ( .Q(dac_dat_o[ 9]), .D1(dac_dat_b[11]), .D2(dac_dat_a[11]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_10 ( .Q(dac_dat_o[10]), .D1(dac_dat_b[12]), .D2(dac_dat_a[12]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_11 ( .Q(dac_dat_o[11]), .D1(dac_dat_b[13]), .D2(dac_dat_a[13]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_12 ( .Q(dac_dat_o[12]), .D1(dac_dat_b[14]), .D2(dac_dat_a[14]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   ODDR i_dac_13 ( .Q(dac_dat_o[13]), .D1(dac_dat_b[15]), .D2(dac_dat_a[15]), .C(dac_clk_buf), .CE(1'b1), .R(dac_rst), .S(1'b0) );
   
endmodule
