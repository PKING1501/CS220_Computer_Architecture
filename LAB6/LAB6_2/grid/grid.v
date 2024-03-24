`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:51 02/28/2024 
// Design Name: 
// Module Name:    grid 
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
module one_bit_adder(a, b, cin, operation, sum, cout);
	input a, b, cin, operation;
	output sum, cout;
	wire sum, cout;
	assign sum = a^(b^operation)^cin;
	assign cout = ((a&(b^operation))|((b^operation)&cin)|(a&cin));
endmodule

module rotary_shaft(clk, ROT_A, ROT_B, rotation_event);
	input clk, ROT_A, ROT_B;
	output rotation_event;
	reg rotation_event;

	always@(posedge clk) begin
		if(ROT_A == 1 & ROT_B ==1) begin
			rotation_event <= 1;
		end
		else if(ROT_A== 0 & ROT_B == 0) begin
			rotation_event <= 0;
		end
	end
endmodule

module five_bit_adder(x, y, switch, sum_x, sum_y);
	input [3:0] x, y, switch;
	output [4:0] sum_x, sum_y;

	wire [4:0] sum_x, sum_y;
	wire operation;
	wire [1:0] addx, addy;
	wire [4:0] coutx, couty;

	assign operation = switch[1];
	assign addx = {switch[3]&switch[0], switch[2]&switch[0]};
	assign addy = {switch[3]&(~switch[0]), switch[2]&(~switch[0])};

	one_bit_adder FA0(x[0], addx[0], operation, operation, sum_x[0], coutx[0]);
	one_bit_adder FA1(y[0], addy[0], operation, operation, sum_y[0], couty[0]);

	one_bit_adder FA3(x[1], addx[1], coutx[0], operation, sum_x[1], coutx[1]);
	one_bit_adder FA4(y[1], addy[1], couty[0], operation, sum_y[1], couty[1]);

	one_bit_adder FA5(x[2], 0, coutx[1], operation, sum_x[2], coutx[2]);
	one_bit_adder FA6(y[2], 0, couty[1], operation, sum_y[2], couty[2]);

	one_bit_adder FA7(x[3], 0, coutx[2], operation, sum_x[3], coutx[3]);
	one_bit_adder FA8(y[3], 0, couty[2], operation, sum_y[3], couty[3]);

	one_bit_adder FA9(1'b0, 0, coutx[3], operation, sum_x[4], coutx[4]);
	one_bit_adder FA10(1'b0, 0, couty[3], operation, sum_y[4], couty[4]);

endmodule

module grid(clk, ROT_A, ROT_B, z, x, y);
	input clk, ROT_A, ROT_B;
	input [3:0] z;
	output [3:0] x, y;
	reg [3:0] x = 0, y = 0;

	reg [3:0] switch;
	wire [4:0] sum_x, sum_y;
	wire rotation_event;
	reg previous_rotation_event = 1;
	reg change = 0;

	always@(posedge clk) begin
		if(change == 1) begin
			// North
			if(switch[1] == 0 && switch[0] == 0) begin
				if(sum_y[4] == 1) begin
					y <= 4'b1111;
				end
				else begin
					y <= sum_y[3:0];
				end
			end
			// East
			else if(switch[1] == 0 && switch[0] == 1) begin
				if(sum_x[4] == 1) begin
					x <= 4'b1111;
				end
				else begin
					x <= sum_x[3:0];
				end
			end
			// South
			else if(switch[1] == 1 && switch[0] == 0) begin
				if(sum_y[4] == 1) begin
					y <= 0;
				end
				else begin
					y <= sum_y[3:0];
				end
			end
			// West
			else if(switch[1] == 1 && switch[0] == 1) begin
				if(sum_x[4] == 1) begin
					x <= 0;
				end
				else begin
					x <= sum_x[3:0];
				end
			end
			change <= 0;
		end
		if(previous_rotation_event == 0 && rotation_event == 1) begin
			switch <= z;
			change <= 1;
		end
		previous_rotation_event <= rotation_event;
	end
	rotary_shaft RS(clk, ROT_A, ROT_B, rotation_event);
	five_bit_adder FBA(x, y, switch, sum_x, sum_y);
endmodule
