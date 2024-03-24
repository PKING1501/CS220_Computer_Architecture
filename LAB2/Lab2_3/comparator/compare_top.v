`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:39:18 01/31/2024
// Design Name:   compare
// Module Name:   /btech/pk/documents/Lab2_3/comparator/comparator_top.v
// Project Name:  comparator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: compare
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comparator_top;

	// Inputs
	reg PB1;
	reg PB2;
	reg PB3;
	reg PB4;
	reg [3:0] s;

	// Outputs
	wire [7:0] l;
	wire [7:0] g;
	wire [7:0] e;

	// Instantiate the Unit Under Test (UUT)
	compare uut (
		.PB1(PB1), 
		.PB2(PB2), 
		.PB3(PB3), 
		.PB4(PB4), 
		.s(s), 
		.l(l), 
		.g(g), 
		.e(e)
	);

always @(e[0] or l[0] or g[0])
 begin
   $display("time=%d: equal = %b, less = %b, greater = %b\n",$time,e[0], l[0], g[0]);   
 end

	initial begin
		#20
		$finish;
	end
 
initial begin 
	PB1=1'b1;s[3:0]=4'b0101;
	#2
	PB2=1'b1;s[3:0]=3'b1110;
	#2
	PB3=1'b1;s[3:0]=4'b0101;
	#2
	PB4=1'b1;s[3:0]=3'b1010;
end
endmodule