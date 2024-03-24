`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:56:41 02/14/2024 
// Design Name: 
// Module Name:    Rotary_Shaft 
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
module rotary_shaft_encoder(clk,ROT_A,ROT_B,led0,led1,led2,led3,led4,led5,led6,led7);
	input clk;
	input ROT_A;
	input ROT_B;
	output led0, led0, led1, led2, led3, led4, led5, led6, led7;
	wire led0;
	wire led1;
	wire led2;
	wire led3;
	wire led4;
	wire led5;
	wire led6;
	wire led7;
	wire rotation_event;
	wire rotation_direction;


	rotation_event_module RE(clk,ROT_A,ROT_B,rotation_event,rotation_direction);
	shift_LED SL(clk, rotation_event, rotation_direction,led0,led1,led2,led3,led4,led5,led6,led7);


endmodule


module rotation_event_module(clk, ROT_A, ROT_B, rotation_event, rotation_direction);

	input clk;
	input ROT_A;
	input ROT_B;
	output rotation_event;
	output rotation_direction;
	reg rotation_event;
	reg rotation_direction;

	always@(posedge clk) begin
		if(ROT_A==1&ROT_B==1) begin
			rotation_event<=1;
		end
		else if(ROT_A==0 & ROT_B==0) begin
			rotation_event<=0;
		end
		else if(ROT_A==0 & ROT_B==1) begin
			rotation_direction<=1;
		end
		else if(ROT_A == 1 & ROT_B == 0) begin
			rotation_direction<=0;
		end
	end

endmodule

module shift_LED(clk, rotation_event, rotation_direction,led0,led1,led2,led3,led4,led5,led6,led7);
	input clk;
	input rotation_event;
	input rotation_direction;
	output led0, led1, led2, led3, led4, led5, led6, led7;
	reg led0;
	reg led1;
	reg led2;
	reg led3;
	reg led4;
	reg led5;
	reg led6;
	reg led7;
	reg prev_rotation_event;

	initial begin
		prev_rotation_event<=1;
		led0<=1;
		led1<=0;
		led2<=0;
		led3<=0;
		led4<=0;
		led5<=0;
		led6<=0;
		led7<=0;	
	end

	always @(posedge clk) begin
		prev_rotation_event<=rotation_event;
		if(prev_rotation_event==0&rotation_event==1) begin
			if(rotation_direction==1) begin
			led1 <= led0;
			led2 <= led1;
			led3 <= led2;
			led4 <= led3;
			led5 <= led4;
			led6 <= led5;
			led7 <= led6;
			led0 <= led7;
			end
			if(rotation_direction==0) begin
			led0 <= led1;
			led1 <= led2;
			led2 <= led3;
			led3 <= led4;
			led4 <= led5;
			led5 <= led6;
			led6 <= led7;
			led7 <= led0;
			end
		end
	end
endmodule
