// Verilog test fixture created from schematic /users/btech/pk/Documents/CS220LABS/LAB1_2/full_adder_schematic/full_adder_sch.sch - Wed Jan 17 15:21:43 2024

`timescale 1ns / 1ps

module full_adder_sch_full_adder_sch_sch_tb();

// Inputs
   reg a;
   reg b;
   reg cin;

// Output
   wire sum;
   wire cout;

// Bidirs

// Instantiate the UUT
   full_adder_sch UUT (
		.a(a), 
		.b(b), 
		.cin(cin), 
		.sum(sum), 
		.cout(cout)
   );
// Initialize Inputs
	always @(sum or cout) begin
			$display("Time= %d: %b + %b + %b = %b, cout= %b\n",$time,a,b,cin,sum,cout);
		end
		
		initial begin
			a = 0; b = 0; cin = 0;
			#5
			a = 0; b = 1; cin = 0;
			#5
			a = 1; b = 0; cin = 1;
			#5
			a = 1; b = 1; cin = 1;
			#5
			$finish;
		end
endmodule
