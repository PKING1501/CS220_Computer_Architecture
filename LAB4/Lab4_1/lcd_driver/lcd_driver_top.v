`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:35 02/07/2024 
// Design Name: 
// Module Name:    lcd_driver_top 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module lcd_driver_top(clk,led_e,led_rs,led_w,data);

    input clk;

    output wire led_e,led_rs,led_w;
    output wire [3:0]data;
    //wire [127:0]line1,line2;
    lcd_driver L(clk,"WELCOME TO CSE  ","IIT KANPUR.     ", led_e, led_w, led_rs, data);

endmodule
