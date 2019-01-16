`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:33:01 12/20/2018 
// Design Name: 
// Module Name:    m13_ms 
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
module m13_ms(input wire clk,
				  input wire reset,
				  output reg [11:0] ms,
				  output reg clk_1s
    );

	initial ms<=0;
	always@(posedge clk)begin
		if(!reset)begin
			ms<=0;
		end
		else begin
			if(ms==12'b1001_1001_1001)begin
				ms <= 0;
				clk_1s <= 1;
			end
			else if(ms[7:0]==8'b1001_1001)begin
				ms[7:0] <= 0;
				ms[11:8] <= ms[11:8]+1;
			end
			else if(ms[3:0]==4'b1001)begin
				ms[3:0] <= 0;
				ms[7:4] <= ms[7:4] +1;
			end
			else begin 
				ms[3:0]<=ms[3:0]+1;
				clk_1s <=0;
			end
		end
	end
	

endmodule
