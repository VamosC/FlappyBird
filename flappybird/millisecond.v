`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:14:53 12/20/2018 
// Design Name: 
// Module Name:    millisecond 
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
module millisecond(input clk,
						 input rst,
						 output msl
    );

	parameter COUNTER = 16;
	reg[COUNTER-1:0] count;
	reg second_m;
	initial count<=0;
	
	always@(posedge clk)begin
		if(!rst||count == 16'hC34F)begin //20'h1869F 16'hC34F
			count <= 0;
			second_m <= 1;
		end
		else begin
			count <= count+1;
			second_m <= 0;
		end
	end
	
	assign msl = second_m;

endmodule
