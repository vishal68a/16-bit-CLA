`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:23:15 06/13/2023
// Design Name:   cla_2
// Module Name:   /home/ise/Desktop/New Folder/cla_2/testbenchcla_2.v
// Project Name:  cla_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testbenchcla_2;

	
	reg [15:0] a,b;
	reg cin;

	
	wire [15:0] sum;
	wire cout;

	cla_2 uut(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

	initial begin
		
		a = 0; b = 0; cin = 0;

		#10 a=16'd0; b=16'd0; cin=1'd1;
      #10 a=16'd14; b=16'd1; cin=1'd1;
      #10 a=16'd5; b=16'd0; cin=1'd0;
      #10 a=16'd999; b=16'd0; cin=1'd1;		

	end
      initial 
		$monitor ("a=%d,b=%d,cin=%d,sum=%d,cout=%d", a,b,cin,sum,cout);
		
endmodule
