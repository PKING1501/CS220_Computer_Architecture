`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:58 02/28/2024 
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
		if(ROT_A == 1 & ROT_B == 1) begin
			rotation_event <= 1;
		end
		else if(ROT_A == 0 & ROT_B == 0) begin
			rotation_event <= 0;
		end
	end

endmodule

module seven_bit_adder(clk, ROT_A, ROT_B, switch, sum, overflow);
	input clk, ROT_A, ROT_B;
	input [3:0] switch;
	output [6:0] sum;
	output overflow;
	wire [6:0] sum;
	wire overflow;
	wire [6:0] cout;
	wire rotation_event;
	reg operation;
	reg [6:0] a, b;
	reg previous_rotation_event = 1;
	reg [2:0] counter = 3'b000;

always@(posedge clk) begin
	if(previous_rotation_event == 0 && rotation_event == 1) begin
		if(counter== 3'b000) begin
			a[3:0] <= switch;
			counter <= counter+1;
		end
		else if(counter ==3'b001) begin
			a[6:4] <= switch[2:0];
			counter <= counter+1;
		end
		else if(counter== 3'b010) begin
			b[3:0] <= switch;
			counter <= counter+1;
		end
		else if(counter ==3'b011) begin
			b[6:4] <= switch[2:0];
			counter <= counter+1;
		end
		else if(counter ==3'b100) begin
			operation <= switch[0];
			counter <= counter+1;
		end
		else if(counter== 3'b101) begin
			counter <= 3'b000;
		end
	end
	previous_rotation_event <= rotation_event;
end
	rotary_shaft RS(clk, ROT_A, ROT_B, rotation_event);
	one_bit_adder FA0(a[0], b[0], operation, operation, sum[0], cout[0]);
	one_bit_adder FA1(a[1], b[1], cout[0], operation, sum[1], cout[1]);
	one_bit_adder FA2(a[2], b[2], cout[1], operation, sum[2], cout[2]);
	one_bit_adder FA3(a[3], b[3], cout[2], operation, sum[3], cout[3]);
	one_bit_adder FA4(a[4], b[4], cout[3], operation, sum[4], cout[4]);
	one_bit_adder FA5(a[5], b[5], cout[4], operation, sum[5], cout[5]);
	one_bit_adder FA6(a[6], b[6], cout[5], operation, sum[6], cout[6]);

	//always @(posedge clk) begin
	//	if(cout[6]==0 & cout[5]==0) begin
	//		overflow = 0;
	//	end
	//	else if(cout[6]==1 & cout[5]==0) begin
	//		overflow = 1;
	//	end
	//	else if(cout[6]==0 & cout[5]==1) begin
	//		overflow = 1;
	//	end
	//	else if(cout[6]==1 & cout[5]==1) begin
	//		overflow = 0;
	//	end
	//end
	assign overflow = (cout[6]^cout[5]);

endmodule
