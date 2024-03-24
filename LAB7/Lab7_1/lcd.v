`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:44 03/06/2024 
// Design Name: 
// Module Name:    lcd 
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

module lcd_top(clk, x, switches, lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7);
	input clk;
	input [2:0] x;
	input [3:0] switches;
	output lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7;
	wire lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7;
	reg [2:0] a, b, c, d;
	wire [1:0] min_pos;
	reg [7:0] asc[7:0]; 

	initial begin
		asc[0] = 8'd48;
		asc[1] = 8'd49;
		asc[2] = 8'd50;
		asc[3] = 8'd51;
		asc[4] = 8'd52;
		asc[5] = 8'd53;
		asc[6] = 8'd54;
		asc[7] = 8'd55;
	end

	reg [0:127] first_line;
	reg [0:127] second_line;

	always@(posedge switches[1]) begin
		b <= x;
	end
	always@(posedge switches[2]) begin
		c <= x;
	end
	always@(posedge switches[3]) begin
		d <= x;
	end
	always@(posedge switches[0]) begin
		a <= x;
	end

	returnMin MIN(a, b, c, d, min_pos);

	always@(posedge clk) begin
		first_line <= {asc[a], 8'd44, 8'd32, asc[b], 8'd44, 8'd32, asc[c], 8'd44, 8'd32, asc[d], 48'd0};
		if(min_pos == 0) begin
			second_line <= {asc[0], 120'd0};
		end
		else if(min_pos == 1) begin
			second_line <= {asc[1], 120'd0};
		end
		else if(min_pos == 2) begin
			second_line <= {asc[2], 120'd0};
		end
		else begin
			second_line <= {asc[3], 120'd0};
		end
	end

	lcd LCD (first_line, second_line, clk, lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7);
endmodule

module returnMin(a, b, c, d, min_pos);
	input [2:0] a, b, c, d;
	output [1:0] min_pos;
	reg min_pos;

	always@(a, b, c, d) begin
		if(a < b) begin
			if(a < c) begin
				if(a < d) begin
					min_pos <= 0;
				end
				else begin
					min_pos <= 3;
				end
			end
			else begin
				if(c < d) begin
					min_pos <= 2;
				end
				else begin
					min_pos <= 3;
				end
			end
		end
		else begin
			if(b < c) begin
				if(b < d) begin
					min_pos <= 1;
				end
				else begin
					min_pos <= 3;
				end
			end
			else begin
				if(c < d) begin
					min_pos <= 2;
				end
				else begin
					min_pos <= 3;
				end
			end
		end
	end
endmodule

module lcd( first_line, second_line, clk, lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7 );

	input [0:127] first_line;
	input [0:127] second_line;
	input clk;
	output lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7;
	reg lcd_rs, lcd_rw, lcd_e, lcd4, lcd5, lcd6, lcd7;

	reg [7:0] first_line_index = 0;
	reg [1:0] first_line_state = 3;
	 
	reg [7:0] second_line_index = 0;
	reg [1:0] second_line_state = 3;
	 
	reg [31:0] counter = 500000000;
	reg [2:0] next_state = 0;
	 
	reg [2:0] line_break_state = 7;
	 
	reg [5:0] init_ROM [0:13];
	reg [3:0] init_ROM_index = 0;
	 
	initial begin
		init_ROM[0] = 6'h03;
		init_ROM[1] = 6'h03;
		init_ROM[2] = 6'h03;
		init_ROM[3] = 6'h02;
		init_ROM[4] = 6'h02;
		init_ROM[5] = 6'h08;
		init_ROM[6] = 6'h00;
		init_ROM[7] = 6'h06;
		init_ROM[8] = 6'h00;
		init_ROM[9] = 6'h0c;
		init_ROM[10] = 6'h00;
		init_ROM[11] = 6'h01;
		init_ROM[12] = 6'h08;
		init_ROM[13] = 6'h00;
	end
	
	always @ (posedge clk) begin
	   	if (counter == 0) begin
		   	counter <= 2_000_000;
			
			if (init_ROM_index == 14) begin
				next_state <= 4;
				init_ROM_index <= 0;
				first_line_state <= 0;
			end
					
			if ((next_state != 4) && (init_ROM_index != 14)) begin
			  	case (next_state)
			    		0: begin
						lcd_e <= 0;
						next_state <= 1;
                  end
					
                  1: begin
						{lcd_rs, lcd_rw, lcd7, lcd6, lcd5, lcd4} <= init_ROM[init_ROM_index];
						next_state <= 2;
			    		end
					
			    		2: begin
						lcd_e <= 1;
						next_state <= 3;
			    		end
					
			    		3: begin
						lcd_e <= 0;
						next_state <= 1;
						init_ROM_index <= init_ROM_index + 1;
			    		end
			  	endcase
			end
			
			if (first_line_index == 128) begin
				first_line_state <= 3;
				first_line_index <= 0;
				line_break_state <= 0;
			end
			if ((first_line_state != 3) && (first_line_index != 128)) begin
				case (first_line_state)
					0: begin
						{lcd_rs, lcd_rw, lcd7, lcd6, lcd5, lcd4} <= {2'h2,first_line[first_line_index],first_line[first_line_index+1],first_line[first_line_index+2],first_line[first_line_index+3]};
						first_line_state <= 1;
					end
						
					1: begin
						lcd_e <= 1;
						first_line_state <= 2;
					end
					
					2: begin
						lcd_e <= 0;
						first_line_state <= 0;
						first_line_index <= first_line_index+4;
					end
				endcase
			end
			
			if (line_break_state != 7) begin
				case (line_break_state)
					0: begin
						{lcd_rs, lcd_rw, lcd7, lcd6, lcd5, lcd4} <= 6'h0c;
						line_break_state <= 1;
					end
						
					1: begin
						lcd_e <= 1;
						line_break_state <= 2;
					end
						
					2: begin
						lcd_e <= 0;
						line_break_state <= 3;
					end
						
					3: begin
						{lcd_rs, lcd_rw, lcd7, lcd6, lcd5, lcd4} <= 6'h00;
						line_break_state <= 4;
					end
						
					4: begin
						lcd_e <= 1;
						line_break_state <= 5;
					end
						
					5: begin
						lcd_e <= 0;
						line_break_state <= 7;
						second_line_state <= 0;
					end
				endcase
			end
			
			if (second_line_index == 128) begin
				second_line_state <= 3;
				second_line_index <= 0;
			end
			if ((second_line_state != 3) && (second_line_index != 128)) begin
				case (second_line_state)
					0: begin
						{lcd_rs, lcd_rw, lcd7, lcd6, lcd5, lcd4} <= {2'h2,second_line[second_line_index],second_line[second_line_index+1],second_line[second_line_index+2],second_line[second_line_index+3]};
						second_line_state <= 1;
					end
						
					1: begin
						lcd_e <= 1;
						second_line_state <= 2;
					end
					
					2: begin
						lcd_e <= 0;
						second_line_state <= 0;
						second_line_index <= second_line_index+4;
					end
				endcase
			end
		end
		else 
		begin 
		   	counter <= counter - 1;
		end
	end
endmodule

