`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:14:59 01/24/2024
// Design Name:   seven_bit_adder
// Module Name:   /users/btech/pk/Documents/Lab2_2/seven_bit_adder/seven_bit_adder_top.v
// Project Name:  seven_bit_adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: seven_bit_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module seven_bit_adder_top;

	// Inputs
	reg [3:0]y;
	reg U4;
	reg K17;
	reg H13;
	reg D18;
	wire [6:0]Z;

	// Outputs
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	seven_bit_adder uut (
		.y(y), 
		.U4(U4), 
		.K17(K17), 
		.H13(H13), 
		.D18(D18), 
		.Z(Z), 
		.carry(carry)
	);

	always @(carry or Z)begin
		$display("Time: %d, %b %b%b%b%b%b%b%b \n",$time,carry,Z[6],Z[5],Z[4],Z[3],Z[2],Z[1],Z[0]);
	end

	initial begin
		//y[0] = 1; y[1] = 0; y[2] = 1; y[3] = 1;
		y[3:0] = 4'b1011;
		U4 = 1;// K17 = 0; H13 = 0; D18 = 0;
		#10
		y[2:0] = 3'b000;
		U4 = 0; K17 = 1; H13 = 0; D18 = 0;
		#10
		y[3:0] = 4'b1011;
		U4 = 0; K17 = 0; H13 = 0; D18 = 1;
		#10
		y[2:0] = 3'b000;
		U4 = 0; K17 = 0; H13 = 1; D18 = 0;
		#10
		$finish;
		
	end
      
endmodule

