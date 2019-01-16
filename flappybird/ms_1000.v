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
module ms_1000(input wire clk,
				  input wire reset,
				  output wire [11:0] _ms_out,
				  output wire clk_out
    );
	
	reg [11:0] _ms;
	reg clk_1s;
	initial _ms<=0;
	always@(posedge clk)begin
		if(!reset)begin
			_ms<=0;
		end
		else begin
			if(_ms==12'b1001_1001_1001)begin
				_ms <= 0;
				clk_1s <= 1;
			end
			else if(_ms[7:0]==8'b1001_1001)begin
				_ms[7:0] <= 0;
				_ms[11:8] <= _ms[11:8]+1;
			end
			else if(_ms[3:0]==4'b1001)begin
				_ms[3:0] <= 0;
				_ms[7:4] <= _ms[7:4] +1;
			end
			else begin 
				_ms[3:0]<=_ms[3:0]+1;
				clk_1s <=0;
			end
		end
	end
	
	assign _ms_out = _ms;
	assign clk_out = clk_1s;
	

endmodule
