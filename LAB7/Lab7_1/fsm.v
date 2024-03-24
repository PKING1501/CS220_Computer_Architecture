`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:12:49 03/06/2024 
// Design Name: 
// Module Name:    fsm 
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
`define clkTime 100000000

module rotary_shaft(clk, ROT_A, ROT_B, rotation_event);
	input clk, ROT_A, ROT_B;
	output rotation_event;
	reg rotation_event;

	always@(posedge clk) begin
		if(ROT_A == 1 & ROT_B == 1) begin
			rotation_event <= 1;
		end
		else if(ROT_A == 0 & ROT_B == 0) begin
			rotation_event <= 0;
		end
	end
endmodule

module fsm_top(clk, cin, ROT_A, ROT_B, next_state);
	input clk;
	input [1:0] cin;
	input ROT_A, ROT_B;
	output [3:0] next_state;
	wire [3:0] next_state;
	reg [3:0] curr_state = 0;
	reg [31:0] counter = 0;
	reg [1:0] x;
	wire rotation_event;
	reg prev_rotation_event = 1;

	fsm FSmicroCodeRom(clk, x, curr_state, next_state);

	always@(posedge clk) begin
		counter <= counter + 1;
		if(prev_rotation_event == 0 && rotation_event == 1) begin
			curr_state <= next_state;
			x <= cin;
			counter <= 0;
		end
		else if(counter == `clkTime) begin
			curr_state <= next_state;
			counter <= 0;
		end
		prev_rotation_event <= rotation_event;
	end
	rotary_shaft RS(clk, ROT_A, ROT_B, rotation_event);
endmodule

module fsm(clk, x, curr_state, next_state);
	input clk;
	input [1:0] x;
	input [3:0] curr_state;
	output [3:0] next_state;
	reg [3:0] next_state;
	reg [2:0] microCodeRom[12:0];
	reg [3:0] dispatchRom1[3:0], dispatchRom2[3:0];
	reg counter = 0;

	initial begin
		dispatchRom1[0] <= 4'b0100;
		dispatchRom1[1] <= 4'b0101;
		dispatchRom1[2] <= 4'b0110;
		dispatchRom1[3] <= 4'b0110;

		dispatchRom2[0] <= 4'b1011;
		dispatchRom2[1] <= 4'b1100;
		dispatchRom2[2] <= 4'b1100;
		dispatchRom2[3] <= 4'b1100;

		microCodeRom[0] <= 3'b000;
		microCodeRom[1] <= 3'b000;
		microCodeRom[2] <= 3'b000;
		microCodeRom[3] <= 3'b001;
		microCodeRom[4] <= 3'b010;
		microCodeRom[5] <= 3'b010;
		microCodeRom[6] <= 3'b010;
		microCodeRom[7] <= 3'b000;
		microCodeRom[8] <= 3'b000;
		microCodeRom[9] <= 3'b000;
		microCodeRom[10] <= 3'b011;
		microCodeRom[11] <= 3'b100;
		microCodeRom[12] <= 3'b100;
	end

	always@(posedge clk) begin
		case(microCodeRom[curr_state])
			3'b000: next_state <= curr_state + 1;
			3'b001: next_state <= dispatchRom1[x];
			3'b010: next_state <= 7;
			3'b011: next_state <= dispatchRom2[x];
			3'b100: next_state <= 0;
		endcase
	end
endmodule


