`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:32 03/13/2024 
// Design Name: 
// Module Name:    top_mod 
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
module top_mod(data, clk, A, B, reset, lcd_rs, lcd_w, lcd_e, lcd_bus
    );
	input [3:0]data;
	input clk, A, B, reset;
	output lcd_rs, lcd_w, lcd_e;

	output lcd_bus;
	wire lcd_rs, lcd_w, lcd_e;
	wire [3:0]lcd_bus;
	wire rot;

	wire [127:0]line_1;
	wire [127:0]line_2;

	detector D0(clk,A,B,rot);
	interface I0(data, clk, rot, reset, line_1, line_2);
	lcd_driver L0(line_1, line_2, clk, lcd_rs, lcd_w, lcd_e, lcd_bus);
endmodule
