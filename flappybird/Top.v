`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/10/17 12:25:41
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top(
	input clk,
	input rstn,
	input [15:0]SW,
	output hs,
	output vs,
	output [3:0] r,
	output [3:0] g,
	output [3:0] b,
	output SEGLED_CLK,
	output SEGLED_CLR,
	output SEGLED_DO,
	output SEGLED_PEN,
	output LED_CLK,
	output LED_CLR,
	output LED_DO,
	output [3:0] AN,
	output [7:0] SEGMENT,
	output LED_PEN,
	inout [4:0]BTN_X,
	inout [3:0]BTN_Y,
	output buzzer
    );
	reg [31:0]clkdiv;
	always@(posedge clk) begin
		clkdiv <= clkdiv + 1'b1;
	end
	assign buzzer = 1'b1;
	wire [15:0] SW_OK;
	AntiJitter #(4) a0[15:0](.clk(clkdiv[15]), .I(SW), .O(SW_OK));//防抖动模块
	
	wire [4:0] keyCode;
	wire keyReady;
	Keypad k0 (.clk(clkdiv[15]), .keyX(BTN_Y), .keyY(BTN_X), .keyCode(keyCode), .ready(keyReady));
	//获取按钮码模块
	wire [31:0] segTestData;
	wire [3:0]sout;
   Seg7Device segDevice(.clkIO(clkdiv[3]), .clkScan(clkdiv[15:14]), .clkBlink(clkdiv[25]),
		.data(segTestData), .point(8'h0), .LES(8'h0),
		.sout(sout));//大数码管显示模块
	assign SEGLED_CLK = sout[3];
	assign SEGLED_DO = sout[2];
	assign SEGLED_PEN = sout[1];
	assign SEGLED_CLR = sout[0];
	
 	wire [11:0] vga_data;//vga颜色通道
 	wire [9:0] col_addr;//列扫描地址
 	wire [8:0] row_addr;//行扫描地址
	wire [4:0] up;//按钮
	wire [31:0] y;//得分情况
	wire [15:0] count;//管道数量统计
	assign up = keyCode;
	//VGA显示模块
	vgac v0 (
		.vga_clk(clkdiv[1]), .clrn(SW_OK[0]), .d_in(vga_data), .row_addr(row_addr), .col_addr(col_addr), .r(r), .g(g), .b(b), .hs(hs), .vs(vs)
	);
	//游戏驱动模块
	DrawGame h1(.clk(clk), .clk_23(clkdiv[23]), .clk_25(clkdiv[25]), .gamestart(SW_OK[1]), .gamepause(SW_OK[2]), .x_count(col_addr), .y_count(row_addr), .up(up), .vga_color(vga_data), .score(y),.count(count));
	//小数码管显示管道数量模块
	DispNum m0(.clk(clk),.HEXS(count),.LES(4'b0000),.AN(AN),.Segment(SEGMENT));
	assign segTestData = y;
	wire [15:0] ledData;
	assign ledData = SW_OK;
	ShiftReg #(.WIDTH(16)) ledDevice (.clk(clkdiv[3]), .pdata(~ledData), .sout({LED_CLK,LED_DO,LED_PEN,LED_CLR}));
endmodule
