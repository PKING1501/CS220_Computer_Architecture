`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:26:14 01/31/2024 
// Design Name: 
// Module Name:    BLINK 
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
`define OFF_TIME 25000000
`define ON_TIME (`OFF_TIME*2)
module BLINK(clk, led0
    );
input clk;
output led0;
reg led0;
reg [31:0] count;
initial begin
	count<=0;
	led0<=1'b1;
end
always @(posedge clk) begin
count<=count+1;
	if(count==`OFF_TIME) begin
		led0<=1'b0;
	end
	else if(count==`ON_TIME) begin
		led0<=1'b1;
		count<=0;
	end
end


endmodule
