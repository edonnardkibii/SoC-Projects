`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/15/2020 01:54:32 PM
// Design Name: 
// Module Name: top
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


module top(
//PS connections
    inout [14:0]    DDR_addr,
    inout [2:0]     DDR_ba,
    inout           DDR_cas_n,
    inout           DDR_ck_n,
    inout           DDR_ck_p,
    inout           DDR_cke,
    inout           DDR_cs_n,
    inout [1:0]     DDR_dm,
    inout [15:0]    DDR_dq,
    inout [1:0]     DDR_dqs_n,
    inout [1:0]     DDR_dqs_p,
    inout           DDR_odt,
    inout           DDR_ras_n,
    inout           DDR_reset_n,
    inout           DDR_we_n,
  //  output FCLK_CLK0_0,
  //  output FCLK_RESET0_N_0,
    inout           FIXED_IO_ddr_vrn,
    inout           FIXED_IO_ddr_vrp,
    inout [31:0]    FIXED_IO_mio,
    inout           FIXED_IO_ps_clk,
    inout           FIXED_IO_ps_porb,
    inout           FIXED_IO_ps_srstbh,
  
//Expansion Connection
    inout [ 7: 0] exp_p_io,
    inout [ 7: 0] exp_n_io
    );
    
    
wire CLK_50MHz, CLK_100MHz, CLK_200MHz;
wire RESET;

//Instance from system_wrapper    
    system_wrapper system_wrapper_i
       (.DDR_addr           (DDR_addr),
        .DDR_ba             (DDR_ba),
        .DDR_cas_n          (DDR_cas_n),
        .DDR_ck_n           (DDR_ck_n),
        .DDR_ck_p           (DDR_ck_p),
        .DDR_cke            (DDR_cke),
        .DDR_cs_n           (DDR_cs_n),
        .DDR_dm             (DDR_dm),
        .DDR_dq             (DDR_dq),
        .DDR_dqs_n          (DDR_dqs_n),
        .DDR_dqs_p          (DDR_dqs_p),
        .DDR_odt            (DDR_odt),
        .DDR_ras_n          (DDR_ras_n),
        .DDR_reset_n        (DDR_reset_n),
        .DDR_we_n           (DDR_we_n),
        .FCLK_CLK0_50MHz    (CLK_50MHz),
        .FCLK_CLK1_100MHz   (CLK_100MHz),
        .FCLK_CLK2_200MHz   (CLK_200MHz),
        .FCLK_RESET0_N_0    (RESET),
        .FIXED_IO_ddr_vrn   (FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp   (FIXED_IO_ddr_vrp),
        .FIXED_IO_mio       (FIXED_IO_mio),
        .FIXED_IO_ps_clk    (FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb   (FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb  (FIXED_IO_ps_srstb)
        );
        


wire [7:0] exp_p_in;
wire [7:0] exp_p_out;
wire [7:0] exp_p_dir;

wire [7:0] exp_n_in;
wire [7:0] exp_n_out;
wire [7:0] exp_n_dir;


genvar GV;

generate
for( GV = 0 ; GV <8 ; GV = GV + 1)
begin : exp_iobuf
    IOBUF i_iobufp (.O(exp_p_in[GV]), .I(exp_p_out[GV]), .T(!exp_p_dir[GV]), .IO(exp_p_io[GV]) );
    IOBUF i_iobufn (.O(exp_n_in[GV]), .I(exp_n_out[GV]), .T(!exp_n_dir[GV]), .IO(exp_n_io[GV]) );
end
endgenerate


my_module i_my_module
(
    .exp_p_in   (exp_p_in),
    .exp_p_out  (exp_p_out),
    .exp_p_dir  (exp_p_dir),
    .exp_n_in   (exp_n_in),
    .exp_n_out  (exp_n_out),
    .exp_n_dir  (exp_n_dir),
    
    .clk0 (CLK_50MHz),
    .clk1 (CLK_100MHz),
    .clk2 (CLK_200MHz)
);

endmodule
