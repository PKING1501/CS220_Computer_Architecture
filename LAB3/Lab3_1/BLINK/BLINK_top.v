`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:27:33 01/31/2024
// Design Name:   BLINK
// Module Name:   /users/btech/pk/Documents/Lab3_1/BLINK/BLINK_top.v
// Project Name:  BLINK
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BLINK
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

`define OFF_TIME 25000000
`define ON_TIME (`OFF_TIME*2)
module BLINK_top;

	// Inputs
	reg clk;

	// Outputs
	wire led0;

	// Instantiate the Unit Under Test (UUT)
	BLINK uut (
		.clk(clk), 
		.led0(led0)
	);
initial begin
	forever begin
		clk=0;
		#1;
		clk=1;
		#1;
		clk=0;
	end
end

always @(led0) begin
	$display("time=%d: led0 = %b\n", $time, led0); 
end
initial begin
	#(5*`ON_TIME)
	$finish;
end

      
endmodule
