`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:14:28 03/13/2024 
// Design Name: 
// Module Name:    top 
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
module interface(data,clk,rot,reset,line_1,line_2
    );
	input [3:0]data;
	input clk,rot,reset;

	output line_1;
	output line_2;
	reg [127:0]line_1;
	reg [127:0]line_2;

    //! To detect positive rot
	reg prev;
    initial begin
        prev <= 1;
    end

	reg [4:0]state; //32 States
	reg [3:0]count;

	reg [15:0]read_data_1;
	reg [15:0]read_data_2;

	reg [15:0]write_data;
	reg [4:0]read_addr_1;
	reg [4:0]read_addr_2;
	reg [4:0]write_addr;


	reg [3:0]shift;
	reg [15:0]register_file[0:31];
	wire [15:0]larger;
	wire [15:0]xored;
	wire [15:0]s_result;


	initial begin
		state<=0;
		count<=0;
		read_data_1<=0;
		read_data_2<=0;
		write_data<=0;
		read_addr_1<=0;
		read_addr_2<=0;
		write_addr<=0;
		shift<=0;
		line_1<=0;
		line_2<=0;
        register_file[0:31] <= 0;
	end

    
	always@(posedge clk) begin
		prev<=rot;
		if(reset==1) begin
			count<=0;
			state<=0;
		end
		if(prev==0 & rot==1) begin
			if(state==0) begin
                state <= data[2:0] + 1;
			end
			
			else if(state==1) begin
				if(count==0) begin
					write_addr[3:0]<=data[3:0];
					count<=1;
				end
				else if(count==1) begin
					write_addr[4]<=data[0];
					count<=2;
				end
				else if(count==2) begin
					write_data[3:0]<=data[3:0];
					count<=3;
				end
				else if(count==3) begin
					write_data[7:4]<=data[3:0];
					count<=4;
				end
				else if(count==4) begin
					write_data[11:8]<=data[3:0];
					count<=5;
				end
				
				else if(count==5) begin
					write_data[15:12]<=data[3:0];
					count<=0;
					state<=9;
				end
			end
			
			
			else if(state==2) begin
				if(count==0) begin
					read_addr_1[3:0]<=data[3:0];
					count<=1;
				end
				if(count==1) begin
					read_addr_1[4]<=data[0];
					count<=0;
					state<=10;
				end
			end
			
			
			
			else if(state==3) begin
				if(count==0) begin
					read_addr_1[3:0]<=data[3:0];
					count<=1;
				end
				if(count==1) begin
					read_addr_1[4]<=data[0];
					count<=2;
				end
				if(count==2) begin
					read_addr_2[3:0]<=data[3:0];
					count<=3;
				end
				if(count==3) begin
					read_addr_2[4]<=data[0];
					count<=0;
					state<=11;
				end
			end

			else if(state==4) begin
				if(count==0) begin
					read_addr_1[3:0]<=data[3:0];
					count<=1;
				end
				if(count==1) begin
					read_addr_1[4]<=data[0];
					count<=2;
				end
				if(count==2) begin
					write_addr[3:0]<=data[3:0];
					count<=3;
				end
				if(count==3) begin
					write_addr[4]<=data[0];
					count<=4;
				end
				if(count==4) begin
					write_data[3:0]<=data[3:0];
					count<=5;
				end
				if(count==5) begin
					write_data[7:4]<=data[3:0];
					count<=6;
				end
				if(count==6) begin
					write_data[11:8]<=data[3:0];
					count<=7;
				end
				if(count==7) begin
					write_data[15:12]<=data[3:0];
					count<=0;
					state<=12;
				end
			end


			else if(state==5) begin
				if(count==0) begin
					read_addr_1[3:0]<=data[3:0];
					count<=1;
				end
				if(count==1) begin
					read_addr_1[4]<=data[0];
					count<=2;
				end
				if(count==2) begin
					read_addr_2[3:0]<=data[3:0];
					count<=3;
				end
				if(count==3) begin
					read_addr_2[4]<=data[0];
					count<=4;
				end
				if(count==4) begin
					write_addr[3:0]<=data[3:0];
					count<=5;
				end
				if(count==5) begin
					write_addr[4]<=data[0];
					count<=6;
				end
				if(count==6) begin
					write_data[3:0]<=data[3:0];
					count<=7;
				end
				if(count==7) begin
					write_data[7:4]<=data[3:0];
					count<=8;
				end
				if(count==8) begin
					write_data[11:8]<=data[3:0];
					count<=9;
				end
				if(count==9) begin
					write_data[15:12]<=data[3:0];
					count<=0;
					state<=13;
				end
			end


			else if(state==6) begin
				if(count==0) begin
					read_addr_1[3:0]<=data[3:0];
					count<=1;
				end
				if(count==1) begin
					read_addr_1[4]<=data[0];
					count<=2;
				end
				if(count==2) begin
					read_addr_2[3:0]<=data[3:0];
					count<=3;
				end
				if(count==3) begin
					read_addr_2[4]<=data[0];
					count<=4;
				end
				if(count==4) begin
					write_addr[3:0]<=data[3:0];
					count<=5;
				end
				if(count==5) begin
					write_addr[4]<=data[0];
					count<=0;
					state<=14;
				end
			end


			else if(state==7) begin
				if(count==0) begin
					read_addr_1[3:0]<=data[3:0];
					count<=1;
				end
				if(count==1) begin
					read_addr_1[4]<=data[0];
					count<=2;
				end
				if(count==2) begin
					read_addr_2[3:0]<=data[3:0];
					count<=3;
				end
				if(count==3) begin
					read_addr_2[4]<=data[0];
					count<=4;
				end
				if(count==4) begin
					write_addr[3:0]<=data[3:0];
					count<=5;
				end
				if(count==5) begin
					write_addr[4]<=data[0];
					count<=0;
					state<=15;
				end
			end


			else if(state==8) begin
				if(count==0) begin
					read_addr_1[3:0]<=data[3:0];
					count<=1;
				end
				if(count==1) begin
					read_addr_1[4]<=data[0];
					count<=2;
				end
				if(count==2) begin
					write_addr[3:0]<=data[3:0];
					count<=3;
				end
				if(count==3) begin
					write_addr[4]<=data[0];
					count<=4;
				end
				if(count==4) begin
					shift[3:0]<=data[3:0];
					count<=0;
					state<=16;
				end
			end			
			
			else if(state==9) begin
				register_file[write_addr]<=write_data;
				state<=17;
			end
			
			
			else if(state==10) begin
				read_data_1<=register_file[read_addr_1];
				state<=18;
			end

			else if(state==11) begin
				read_data_1<=register_file[read_addr_1];				
				state<=25;
			end

			else if(state==12) begin
				read_data_1<=register_file[read_addr_1];
				register_file[write_addr]<=write_data;
				state<=20;
			end

			else if(state==13) begin
				read_data_1<=register_file[read_addr_1];
				register_file[write_addr]<=write_data;
				state<=26;
			end

			else if(state==14) begin
				read_data_1<=register_file[read_addr_1];
				state<=27;
			end

			else if(state<=15) begin
				read_data_1<=register_file[read_addr_1];
				state<=28;
			end


			else if(state==16) begin
				read_data_1<=register_file[read_addr_1];
				state<=24;
			end
            
			
			
			else if(state==17) begin
				line_1[127:40]<="00000000";
				line_1[39:32]<=write_addr[4]?"1":"0";
				line_1[31:24]<=write_addr[3]?"1":"0";
				line_1[23:16]<=write_addr[2]?"1":"0";
				line_1[15:8]<=write_addr[1]?"1":"0";
				line_1[7:0]<=write_addr[0]?"1":"0";
				
				line_2[127:120]<=write_data[15]?"1":"0";
				line_2[119:112]<=write_data[14]?"1":"0";
				line_2[111:104]<=write_data[13]?"1":"0";
				line_2[103:96]<=write_data[12]?"1":"0";
				line_2[95:88]<=write_data[11]?"1":"0";
				line_2[87:80]<=write_data[10]?"1":"0";
				line_2[79:72]<=write_data[9]?"1":"0";
				line_2[71:64]<=write_data[8]?"1":"0";
				line_2[63:56]<=write_data[7]?"1":"0";
				line_2[55:48]<=write_data[6]?"1":"0";
				line_2[47:40]<=write_data[5]?"1":"0";
				line_2[39:32]<=write_data[4]?"1":"0";
				line_2[31:24]<=write_data[3]?"1":"0";
				line_2[23:16]<=write_data[2]?"1":"0";
				line_2[15:8]<=write_data[1]?"1":"0";
				line_2[7:0]<=write_data[0]?"1":"0";
				state<=0;
			end
			
			
			else if(state==18) begin
				line_1[127:40]<="00000000";
				line_1[39:32]<=read_addr_1[4]?"1":"0";
				line_1[31:24]<=read_addr_1[3]?"1":"0";
				line_1[23:16]<=read_addr_1[2]?"1":"0";
				line_1[15:8]<=read_addr_1[1]?"1":"0";
				line_1[7:0]<=read_addr_1[0]?"1":"0";
				line_2[127:120]<=read_data_1[15]?"1":"0";
				line_2[119:112]<=read_data_1[14]?"1":"0";
				line_2[111:104]<=read_data_1[13]?"1":"0";
				line_2[103:96]<=read_data_1[12]?"1":"0";
				line_2[95:88]<=read_data_1[11]?"1":"0";
				line_2[87:80]<=read_data_1[10]?"1":"0";
				line_2[79:72]<=read_data_1[9]?"1":"0";
				line_2[71:64]<=read_data_1[8]?"1":"0";
				line_2[63:56]<=read_data_1[7]?"1":"0";
				line_2[55:48]<=read_data_1[6]?"1":"0";
				line_2[47:40]<=read_data_1[5]?"1":"0";
				line_2[39:32]<=read_data_1[4]?"1":"0";
				line_2[31:24]<=read_data_1[3]?"1":"0";
				line_2[23:16]<=read_data_1[2]?"1":"0";
				line_2[15:8]<=read_data_1[1]?"1":"0";
				line_2[7:0]<=read_data_1[0]?"1":"0";
				state<=0;
            end
			else if(state==19) begin
				line_1[127:120]<=read_data_1[15]?"1":"0";
				line_1[119:112]<=read_data_1[14]?"1":"0";
				line_1[111:104]<=read_data_1[13]?"1":"0";
				line_1[103:96]<=read_data_1[12]?"1":"0";
				line_1[95:88]<=read_data_1[11]?"1":"0";
				line_1[87:80]<=read_data_1[10]?"1":"0";
				line_1[79:72]<=read_data_1[9]?"1":"0";
				line_1[71:64]<=read_data_1[8]?"1":"0";
				line_1[63:56]<=read_data_1[7]?"1":"0";
				line_1[55:48]<=read_data_1[6]?"1":"0";
				line_1[47:40]<=read_data_1[5]?"1":"0";
				line_1[39:32]<=read_data_1[4]?"1":"0";
				line_1[31:24]<=read_data_1[3]?"1":"0";
				line_1[23:16]<=read_data_1[2]?"1":"0";
				line_1[15:8]<=read_data_1[1]?"1":"0";
				line_1[7:0]<=read_data_1[0]?"1":"0";

				line_2[127:120]<=read_data_2[15]?"1":"0";
				line_2[119:112]<=read_data_2[14]?"1":"0";
				line_2[111:104]<=read_data_2[13]?"1":"0";
				line_2[103:96]<=read_data_2[12]?"1":"0";
				line_2[95:88]<=read_data_2[11]?"1":"0";
				line_2[87:80]<=read_data_2[10]?"1":"0";
				line_2[79:72]<=read_data_2[9]?"1":"0";
				line_2[71:64]<=read_data_2[8]?"1":"0";
				line_2[63:56]<=read_data_2[7]?"1":"0";
				line_2[55:48]<=read_data_2[6]?"1":"0";
				line_2[47:40]<=read_data_2[5]?"1":"0";
				line_2[39:32]<=read_data_2[4]?"1":"0";
				line_2[31:24]<=read_data_2[3]?"1":"0";
				line_2[23:16]<=read_data_2[2]?"1":"0";
				line_2[15:8]<=read_data_2[1]?"1":"0";
				line_2[7:0]<=read_data_2[0]?"1":"0";
				state<=0;
			end
			else if(state==20) begin
				line_1[127:40]<="00000000";
				line_1[39:32]<=read_addr_1[4]?"1":"0";
				line_1[31:24]<=read_addr_1[3]?"1":"0";
				line_1[23:16]<=read_addr_1[2]?"1":"0";
				line_1[15:8]<=read_addr_1[1]?"1":"0";
				line_1[7:0]<=read_addr_1[0]?"1":"0";
				line_2[127:120]<=read_data_1[15]?"1":"0";
				line_2[119:112]<=read_data_1[14]?"1":"0";
				line_2[111:104]<=read_data_1[13]?"1":"0";
				line_2[103:96]<=read_data_1[12]?"1":"0";
				line_2[95:88]<=read_data_1[11]?"1":"0";
				line_2[87:80]<=read_data_1[10]?"1":"0";
				line_2[79:72]<=read_data_1[9]?"1":"0";
				line_2[71:64]<=read_data_1[8]?"1":"0";
				line_2[63:56]<=read_data_1[7]?"1":"0";
				line_2[55:48]<=read_data_1[6]?"1":"0";
				line_2[47:40]<=read_data_1[5]?"1":"0";
				line_2[39:32]<=read_data_1[4]?"1":"0";
				line_2[31:24]<=read_data_1[3]?"1":"0";
				line_2[23:16]<=read_data_1[2]?"1":"0";
				line_2[15:8]<=read_data_1[1]?"1":"0";
				line_2[7:0]<=read_data_1[0]?"1":"0";
				state<=0;
			end
			else if(state==21) begin
				line_1[127:120]<=read_data_1[15]?"1":"0";
				line_1[119:112]<=read_data_1[14]?"1":"0";
				line_1[111:104]<=read_data_1[13]?"1":"0";
				line_1[103:96]<=read_data_1[12]?"1":"0";
				line_1[95:88]<=read_data_1[11]?"1":"0";
				line_1[87:80]<=read_data_1[10]?"1":"0";
				line_1[79:72]<=read_data_1[9]?"1":"0";
				line_1[71:64]<=read_data_1[8]?"1":"0";
				line_1[63:56]<=read_data_1[7]?"1":"0";
				line_1[55:48]<=read_data_1[6]?"1":"0";
				line_1[47:40]<=read_data_1[5]?"1":"0";
				line_1[39:32]<=read_data_1[4]?"1":"0";
				line_1[31:24]<=read_data_1[3]?"1":"0";
				line_1[23:16]<=read_data_1[2]?"1":"0";
				line_1[15:8]<=read_data_1[1]?"1":"0";
				line_1[7:0]<=read_data_1[0]?"1":"0";
				line_2[127:120]<=read_data_2[15]?"1":"0";
				line_2[119:112]<=read_data_2[14]?"1":"0";
				line_2[111:104]<=read_data_2[13]?"1":"0";
				line_2[103:96]<=read_data_2[12]?"1":"0";
				line_2[95:88]<=read_data_2[11]?"1":"0";
				line_2[87:80]<=read_data_2[10]?"1":"0";
				line_2[79:72]<=read_data_2[9]?"1":"0";
				line_2[71:64]<=read_data_2[8]?"1":"0";
				line_2[63:56]<=read_data_2[7]?"1":"0";
				line_2[55:48]<=read_data_2[6]?"1":"0";
				line_2[47:40]<=read_data_2[5]?"1":"0";
				line_2[39:32]<=read_data_2[4]?"1":"0";
				line_2[31:24]<=read_data_2[3]?"1":"0";
				line_2[23:16]<=read_data_2[2]?"1":"0";
				line_2[15:8]<=read_data_2[1]?"1":"0";
				line_2[7:0]<=read_data_2[0]?"1":"0";
				state<=0;
			end
			else if(state==22) begin
				register_file[write_addr]<=larger;
				line_1[127:40]<="00000000";
				line_1[39:32]<=write_addr[4]?"1":"0";
				line_1[31:24]<=write_addr[3]?"1":"0";
				line_1[23:16]<=write_addr[2]?"1":"0";
				line_1[15:8]<=write_addr[1]?"1":"0";
				line_1[7:0]<=write_addr[0]?"1":"0";
				line_2[127:120]<=larger[15]?"1":"0";
				line_2[119:112]<=larger[14]?"1":"0";
				line_2[111:104]<=larger[13]?"1":"0";
				line_2[103:96]<=larger[12]?"1":"0";
				line_2[95:88]<=larger[11]?"1":"0";
				line_2[87:80]<=larger[10]?"1":"0";
				line_2[79:72]<=larger[9]?"1":"0";
				line_2[71:64]<=larger[8]?"1":"0";
				line_2[63:56]<=larger[7]?"1":"0";
				line_2[55:48]<=larger[6]?"1":"0";
				line_2[47:40]<=larger[5]?"1":"0";
				line_2[39:32]<=larger[4]?"1":"0";
				line_2[31:24]<=larger[3]?"1":"0";
				line_2[23:16]<=larger[2]?"1":"0";
				line_2[15:8]<=larger[1]?"1":"0";
				line_2[7:0]<=larger[0]?"1":"0";
				state<=0;
			end
			else if(state==23) begin
				register_file[write_addr]<=xored;
				line_1[127:40]<="00000000";
				line_1[39:32]<=write_addr[4]?"1":"0";
				line_1[31:24]<=write_addr[3]?"1":"0";
				line_1[23:16]<=write_addr[2]?"1":"0";
				line_1[15:8]<=write_addr[1]?"1":"0";
				line_1[7:0]<=write_addr[0]?"1":"0";
				line_2[127:120]<=xored[15]?"1":"0";
				line_2[119:112]<=xored[14]?"1":"0";
				line_2[111:104]<=xored[13]?"1":"0";
				line_2[103:96]<=xored[12]?"1":"0";
				line_2[95:88]<=xored[11]?"1":"0";
				line_2[87:80]<=xored[10]?"1":"0";
				line_2[79:72]<=xored[9]?"1":"0";
				line_2[71:64]<=xored[8]?"1":"0";
				line_2[63:56]<=xored[7]?"1":"0";
				line_2[55:48]<=xored[6]?"1":"0";
				line_2[47:40]<=xored[5]?"1":"0";
				line_2[39:32]<=xored[4]?"1":"0";
				line_2[31:24]<=xored[3]?"1":"0";
				line_2[23:16]<=xored[2]?"1":"0";
				line_2[15:8]<=xored[1]?"1":"0";
				line_2[7:0]<=xored[0]?"1":"0";
				state<=0;
			end
			else if(state==24) begin


				register_file[write_addr]<=s_result;
				line_1[127:40]<="00000000";
				line_1[39:32]<=write_addr[4]?"1":"0";
				line_1[31:24]<=write_addr[3]?"1":"0";
				line_1[23:16]<=write_addr[2]?"1":"0";
				line_1[15:8]<=write_addr[1]?"1":"0";
				line_1[7:0]<=write_addr[0]?"1":"0";
				line_2[127:120]<=s_result[15]?"1":"0";
				line_2[119:112]<=s_result[14]?"1":"0";
				line_2[111:104]<=s_result[13]?"1":"0";
				line_2[103:96]<=s_result[12]?"1":"0";
				line_2[95:88]<=s_result[11]?"1":"0";
				line_2[87:80]<=s_result[10]?"1":"0";
				line_2[79:72]<=s_result[9]?"1":"0";
				line_2[71:64]<=s_result[8]?"1":"0";
				line_2[63:56]<=s_result[7]?"1":"0";
				line_2[55:48]<=s_result[6]?"1":"0";
				line_2[47:40]<=s_result[5]?"1":"0";
				line_2[39:32]<=s_result[4]?"1":"0";
				line_2[31:24]<=s_result[3]?"1":"0";
				line_2[23:16]<=s_result[2]?"1":"0";
				line_2[15:8]<=s_result[1]?"1":"0";
				line_2[7:0]<=s_result[0]?"1":"0";
				state<=0;
			end
			else if(state==25)begin
				read_data_2<=register_file[read_addr_2];
				state<=19;
			end
			else if(state==26)begin
				read_data_2<=register_file[read_addr_2];
				state<=21;
			end
			else if(state==27)begin
				read_data_2<=register_file[read_addr_2];
				state<=22;			
			end
			else if(state==28)begin
				read_data_2<=register_file[read_addr_2];
				state<=23;			
			end
			
		end
	end
    comparator S0(read_data_1,read_data_2,larger);
	xorval S1(read_data_1,read_data_2,xored);
	right_shift RIGHT(clk,read_data_1,shift,s_result);
endmodule
