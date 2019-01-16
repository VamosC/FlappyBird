`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:33:15 12/28/2018 
// Design Name: 
// Module Name:    mycircle 
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
module mycircle(input clk,
					 input sec,
					 input rst,
					 input [4:0]keyCode,
					 input [15:0]SW,
					 input [8:0]row,
					 input [9:0]col,
					 
					 output [11:0]vga_data,
					 output [31:0]Ccircle,
					 output reg rdn
    );
	 
	 reg [9:0] x;
	 reg [8:0] y;
	 
	 reg [11:0] vga_data;
	 wire [19:0] x_sqr, y_sqr, r_sqr, xx, yy;
	 reg wasReady;
	 reg [9:0] radius = 10'd100;
	 
		assign Ccircle = {7'b0,x,8'b0,y};
		
		always @(posedge sec)
			begin
				
			end
		
		always @(posedge clk) 
			begin
				if ( rst ) 
					begin
						x <= 10'd320;
						y <= 9'd240;
						radius <= 10'd100;
					end
				else
					begin
						wasReady <= keyReady;
						rdn <=1;
						if ( !wasReady && KeyReady )
							begin
								rdn<=0;
								case (keyCode)
									5'hc: radius <= radius - 10'd1;
									5'he: radius <= radius - 10'd1;
									5'h8: x<= x-10'd5;
									5'ha: x<= x+10'd5;
									5'h5: y<= y-9'd5;
									5'hd: y<= y+9'd5;
									default;
								endcase
							end
					end
			end
			
		assign x_sqr = (x-col)*(x-col);
		assign y_sqr = (y-row)*(y-row);
		assign r_sqr = radius*radius;
		assign xx = x;
		assign yy = y;
		
		always @(*)
			begin
				if ( xx>10'd320 && yy>9'd240 )  assign vga_data = {0000 0000 0000};
				if ( xx<=10'd320 && yy>9'd240 ) assign vga_data = {1000 0000 0000};
				if ( xx<=10'd320 && yy<=9'd240 ) assign vga_data = {0000 1000 0000};
				if ( xx>10'd320 && yy<=9'd240 ) assign vga_data = {0000 0000 1000};
			end


endmodule
