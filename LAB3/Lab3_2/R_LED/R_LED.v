`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:37 01/31/2024 
// Design Name: 
// Module Name:    R_LED 
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
`define SHIFT_TIME 50000000
module R_LED(clk, led0, led1, led2, led3, led4, led5, led6, led7
    );
input clk;
output led0;
reg led0;
output led1;
reg led1;
output led2;
reg led2;
output led3;
reg led3;
output led4;
reg led4;
output led5;
reg led5;
output led6;
reg led6;
output led7;
reg led7;
reg [31:0] count;

initial begin
	led0<=1;
	count<=0;
end

always@(posedge clk) begin
	count<=count+1;
	if(count==`SHIFT_TIME) begin
		led1 <= led0;
		led2 <= led1;
		led3 <= led2;
		led4 <= led3;
		led5 <= led4;
		led6 <= led5;
		led7 <= led6;
		led0 <= led7;
		count<=0;
	end
end

endmodule

