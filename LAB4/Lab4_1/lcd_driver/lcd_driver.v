`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:24:28 02/07/2024 
// Design Name: 
// Module Name:    lcd_driver 
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
module lcd_driver( clk, line1, line2, led_e, led_w, led_rs, data);

	input clk;
	input [127:0]line1,line2;
	output wire led_e, led_w, led_rs;
	output wire [3:0] data;

	reg led1, led2, led3;
	reg [3:0] sen;
	reg [1:0] flag;
	reg [7:0] i1,i2,i3,i4;
	reg [22:0] c;
	reg [2:0] inc;

	initial 
	begin
		led1=0; led2=0; led3 =0;flag=0; i1 = 55; c=0; inc=0;i2=127;i3=7;i4=127;
	end

	wire[55:0] c_data;
	wire[7:0] br;
	assign c_data=56'h333228060C0180;
	assign br = 8'hC0;

	always @(posedge clk)
	begin
		c = c + 1;
		if(c == 1000000 && inc==3'b000)
		begin
			if(flag==2'b00)
			begin
				led1=0;
				flag = flag+1;
			end
			else if(flag == 2'b01)
			begin
				sen[3] = c_data[i1];
				sen[2] = c_data[i1-1];
				sen[1] = c_data[i1-2];
				sen[0] = c_data[i1-3];
				flag=flag+1;	
			end
			else if(flag == 2'b10)
			begin
				
				if (i1 == 3)
				begin
					inc = 3'b001;
					flag=0;
				end
				led1=1;
				flag = 0;
				i1 = i1-4;
			end
			c = 0;
		end
		else if(inc == 3'b001 && c == 1000000)
		begin
			
			if(flag==2'b00)
			begin
				led1=0;
				flag = flag+1;
			end
			else if(flag == 2'b01)
			begin
				led3 =1;
				led2 =0;
				sen[3] = line1[i2];
				sen[2] = line1[i2-1];
				sen[1] = line1[i2-2];
				sen[0] = line1[i2-3];
				flag=flag+1;
				
			end
			else if(flag == 2'b10)
			begin
				if (i2 ==3)
				begin
					inc = 3'b010;
					flag=0;
				end
				led1=1;
				flag = 0;
				i2 = i2-4;
			end
			c = 0;
		end
		else if(inc == 3'b010 && c == 1000000)
		begin
			
			if(flag == 2'b00)
			begin
				led1=0;
				flag = flag+1;
			end
			else if(flag == 2'b01)
			begin
				led3=0;
				led2=0;
				sen[3] = br[i3];
				sen[2] = br[i3-1];
				sen[1] = br[i3-2];
				sen[0] = br[i3-3];
				flag=flag+1;
			end
			else if(flag == 2'b10)
			begin
				if (i3 ==3)
				begin
					inc = 3'b011;
					flag=0;
				end
				led1=1;
				flag = 0;
				i3 = i3-4;
			end
			c = 0;
		end
		else if(inc == 3'b011 && c == 1000000)
		begin
			if(flag==2'b00)
			begin
				led1=0;
				flag = flag+1;
			end
			else if(flag == 2'b01)
			begin
				led3=1;
				led2=0;
				sen[3] = line2[i4];
				sen[2] = line2[i4-1];
				sen[1] = line2[i4-2];
				sen[0] = line2[i4-3];
				flag=flag+1;	
			end
			else if(flag == 2'b10)
			begin
				if (i4 ==3)
				begin
					inc = 3'b110;
				end
				led1=1;
				flag = 0;
				i4 = i4-4;
			end
			c = 0;
		end	
	end

	assign data[3:0] = sen[3:0];
	assign led_e = led1;
	assign led_w = led2;
	assign led_rs = led3; 

endmodule
