`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:38:02 01/31/2024
// Design Name:   R_LED
// Module Name:   /users/btech/pk/Documents/Lab3_2/R_LED/R_LED_top.v
// Project Name:  R_LED
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: R_LED
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`define SHIFT_TIME 50000000
module R_LED_top;

	// Inputs
	reg clk;

	// Outputs
	wire led0;
	wire led1;
	wire led2;
	wire led3;
	wire led4;
	wire led5;
	wire led6;
	wire led7;

	// Instantiate the Unit Under Test (UUT)
	 R_LED uut (
		.clk(clk), 
		.led0(led0), 
		.led1(led1), 
		.led2(led2), 
		.led3(led3), 
		.led4(led4), 
		.led5(led5), 
		.led6(led6), 
		.led7(led7) 
	);

	initial begin
		forever begin
			clk=0;
			#5
			clk=1;
			#5
			clk=0;
		end
	end
	always @(led0 or led1 or led2 or led3 or led4 or led5 or led6 or led7) begin
		$display("time=%d: led0=%b, led1=%b, led2=%b, led3=%b, led4=%b, led5=%b, led6=%b, led7=%b\n", $time, led0, led1, led2, led3, led4, led5, led6, led7);
	end
	initial begin
		#(5*`SHIFT_TIME)
		$finish;
	end
      
endmodule
