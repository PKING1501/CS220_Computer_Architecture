`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:37 01/31/2024 
// Design Name: 
// Module Name:    comparator 
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
module single_bit(a,b,ls1,gt1,eq1,ls2,gt2,eq2);

input a;
input b;
input ls1;
input gt1;
input eq1;

output ls2;
wire ls2;
output gt2;
wire gt2;
output eq2;
wire eq2;

assign gt2=(gt1|((~ls1 & b & ~a) & eq1 ));
assign ls2=(ls1|((~gt1 & ~b & a) & eq1 ));
assign eq2=(eq1 & ((a & b )|(~a & ~b)));

endmodule
	
module compare(PB1,PB2,PB3,PB4,s,l,g,e);

input PB1;
input PB2;
input PB3;
input PB4;
input [3:0]s;
reg [7:0]a;
reg [7:0]b;
output [7:0]l;
wire [7:0]l;
output [7:0]g;
wire [7:0]g;
output [7:0]e;
wire [7:0]e;


always @(posedge PB1) begin
	a[3:0] <= s[3:0];
end
always @(posedge PB2) begin
	a[7:4] <= s[2:0];
end
always @(posedge PB3) begin
	b[3:0] <=s[3:0];
end
always @(posedge PB4) begin
	b[7:4] <= s[2:0];
end


single_bit SB0 (a[7],b[7],1'b0,1'b0,1'b1,l[7],g[7],e[7]);
single_bit SB1 (a[6],b[6],l[7],g[7],e[7],l[6],g[6],e[6]);
single_bit SB2 (a[5],b[5],l[6],g[6],e[6],l[5],g[5],e[5]);
single_bit SB3 (a[4],b[4],l[5],g[5],e[5],l[4],g[4],e[4]);
single_bit SB4 (a[3],b[3],l[4],g[4],e[4],l[3],g[3],e[3]);
single_bit SB5 (a[2],b[2],l[3],g[3],e[3],l[2],g[2],e[2]);
single_bit SB6 (a[1],b[1],l[2],g[2],e[2],l[1],g[1],e[1]);
single_bit SB7 (a[0],b[0],l[1],g[1],e[1],l[0],g[0],e[0]);



endmodule