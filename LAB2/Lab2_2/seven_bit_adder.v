`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:44:08 01/24/2024 
// Design Name: 
// Module Name:    seven_bit_adder 
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
module full_adder(a, b, cin, sum, cout);
	input a;
	input b;
	input cin;
	output sum;
	wire sum;
	output cout;
	wire cout;
	assign sum = a^b^cin;
	assign cout = (a & b) | (b & cin) | (cin & a);
endmodule

module seven_bit_adder(y,U4,K17,H13,D18,Z,carry);
	input wire [3:0]y;
	reg [6:0]A;
	reg [6:0]B;
	input wire U4,K17,H13,D18;
	output wire [6:0]Z;
	output wire carry;
	wire [5:0]carry0;
	always @(posedge U4)begin
		A[3:0] <= y;
	end
	always @(posedge K17)begin
		A[6:4] <= y[2:0];
	end
	always @(posedge D18)begin
		B[3:0] <= y;
	end
	always @(posedge H13)begin
		B[6:4] <= y[2:0];
	end
	full_adder FA0(A[0],B[0],0,Z[0],carry0[0]);
	full_adder FA1(A[1],B[1],carry0[0],Z[1],carry0[1]);
	full_adder FA2(A[2],B[2],carry0[1],Z[2],carry0[2]);
	full_adder FA3(A[3],B[3],carry0[2],Z[3],carry0[3]);
	full_adder FA4(A[4],B[4],carry0[3],Z[4],carry0[4]);
	full_adder FA5(A[5],B[5],carry0[4],Z[5],carry0[5]);
	full_adder FA6(A[6],B[6],carry0[5],Z[6],carry);
	
endmodule
