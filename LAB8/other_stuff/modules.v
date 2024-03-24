`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:10:39 03/13/2024 
// Design Name: 
// Module Name:    adder 
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
module full_adder(a,b,c,s,cout
    );
        input a,b,c;
        output s,cout;
        wire s,cout;
        assign s=a^b^c;
        assign cout=(a&b)|(b&c)|(c&a);
endmodule

module comparator(a,b,c
    );
	 input[15:0]a;
	 input[15:0]b;
	 output wire [15:0]c;
	 assign c=($signed(a)<$signed(b))?1:0;


endmodule

module detector(clk,A,B,rot
    );
        input clk,A,B;
        output rot;
        reg rot;
        always@(posedge clk) begin
                if(A==1'b1 & B==1'b1) begin
                        rot <= 1'b1;
                end
                else if(A==1'b0 & B==1'b0)      begin
                        rot <= 1'b0;
                end
        end
endmodule

module right_shift(clk,a,shift,res
    );
	 input[15:0] a;
	 input clk;
	 input[3:0] shift;
	 output reg[15:0] res;
	 always@(posedge clk)begin
	 res <= ($signed(a) >>> shift);
	 end


endmodule


module xorval(a,b,c
    );
	 input[15:0]a;
	 input[15:0]b;
	 output wire [15:0]  c;
	assign c=a^b;

endmodule