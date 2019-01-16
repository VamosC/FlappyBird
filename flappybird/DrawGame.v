module DrawGame(input wire clk,//100MHZ
                input wire gamestart,
			    input wire gamepause,
			    input wire clk_25,
			    input wire clk_23,
	            input wire [9:0] x_count,//vga扫描 x坐标	            
				input wire [8:0] y_count,//vga扫描 y坐标
                input wire [4:0] up,//键盘按键	 			 
				output reg [11:0] vga_color,
				output reg [31:0] score,
				output reg [15:0] count);//送入vga的12位颜色   
	 integer x1_bird = 200;//小鸟初始左端横坐标
     integer x2_bird = 256;//小鸟初始右端横坐标
	 reg [0:0] mode;//决定两种小鸟形态的模式位
	 reg [0:0] cnt_pipe;
	 reg [0:0] chioce_pipe;
     reg [11:0] addr_bird_1;//取小鸟形态1的地址送往ROM
	 reg [11:0] addr_bird_2;//取小鸟形态2的地址
     reg [18:0] addr_background;//取背景的地址
	 reg [18:0] addr_start;
	 reg [13:0] addr_final;
	 reg [16:0] addr_pipe3;//取管道3的地址
	 wire [11:0] color_pipe3;//管道3的颜色                   //195~297
	 reg [16:0] addr_pipe4;//取管道4的地址
	 wire [11:0] color_pipe4;//管道4的颜色                    //156~276
	 wire [11:0] color_final;//结束的颜色
	 reg [10:0] back_x;//背景移动的横坐标
	 reg signed [10:0] pipe_x;//管道移动的横坐标
	 reg [31:0] cnt;//辅助计数用于产生游戏时钟
	 reg [31:0] freq;//用于产生游戏时钟
	 reg gameclk;//游戏时钟
	 reg gameover;//游戏结束标志
	 wire [11:0] color_start;
     wire [11:0] color_bird_1;//小鸟形态1的颜色
	 wire [11:0] color_bird_2;//小鸟形态2的颜色
     wire [11:0] color_background;//背景的颜色
     reg [10:0] Y;//小鸟纵坐标
	 reg [10:0] Vy;//小鸟下落速度用于计算纵坐标
    initial begin
    	Y = 254;//小鸟初始纵坐标
		back_x = 0;//背景初始化横坐标
		pipe_x = 650;//管道初始化横坐标
		freq = 5_000_000;
		gameclk=1;
		gameover = 0;
		Vy = 0;//初始化下落速度
		chioce_pipe = 0;
		count=0;
    end
    //产生游戏时钟
	always@(posedge clk) begin
		if(cnt <= freq)begin
		    cnt = cnt + 1;
		end else begin
		    cnt = 0;
		    gameclk = ~gameclk;
		end
	end
    //小鸟形态1的ROM
    bird_1 Rom0(.clka(clk), .addra(addr_bird_1), .douta(color_bird_1));
	//小鸟形态2的ROM
    bird_2 Rom1(.clka(clk), .addra(addr_bird_2), .douta(color_bird_2));
    //背景的ROM
    background Rom2(.clka(clk), .addra(addr_background), .douta(color_background));
	//开始界面的ROM
	start Rom4(.clka(clk), .addra(addr_start), .douta(color_start));
	//管道3的ROM
	pipe3 Rom6(.clka(clk), .addra(addr_pipe3), .douta(color_pipe3));
	//管道4的ROM
	pipe4 Rom7(.clka(clk), .addra(addr_pipe4), .douta(color_pipe4));
	//结束界面的ROM
	final Rom10(.clka(clk), .addra(addr_final), .douta(color_final));
    //为了改变小鸟形态,改变mode
	always @(posedge clk_25)begin
	    if(gamepause == 1'b0)begin
	        mode = ~mode;
	    end
	end

	//碰撞检测需要三种检测
    //1. 掉到地上
    //2. 撞向管子
    //3. 在管道内向上撞
	//组合电路用于显示和碰撞检测
    always @(*) begin
    //游戏进行前的开始界面显示
	if(gamestart == 1'b0)begin
	    addr_start = y_count*640 + x_count;//送入地址线
		vga_color = color_start;//根据地址取出颜色值并送入vga
	end
	else begin
	    if(up == 5'ha)begin
	    	gameover = 0;//重置将gameover标志位清零
	    end
	    if(Y == 441)begin
    	    gameover = 1;//当小鸟摔倒地上, gameover标志位置1
        end

        //当小鸟进行穿管道的动作时, 进行碰撞检测
        if((x2_bird - pipe_x >= 55 && x1_bird - pipe_x <= 145))begin
        	if(chioce_pipe == 0)begin//当来的是0号管道（3）时
        		if(Y <= 195 || Y >= 258)begin//检查当前的纵坐标的值
        			gameover = 1;//撞上管道, gameover清0
        		end
        	end else if(chioce_pipe == 1)begin//当来的是1号管道（4）时
        		if(Y <= 156 || Y >= 237)begin//进行相同的检查
        			gameover = 1;
        		end
        	end 
        end
	    if(gameover==1'b1)begin   //当结束标志位置1时,显示结束界面
		     if(y_count >= 190 && y_count < 290 && x_count >=270 && x_count < 370)begin
			      addr_final = (y_count - 190)*100 + x_count - 270;
					vga_color = color_final;					
			  end else begin
			      vga_color = 3271;
			  end
    	end 
		
        else begin  //当扫描区域在小鸟部分
    	  if(x_count >= x1_bird && x_count < x2_bird && y_count >= Y && y_count < Y + 39)begin
    	     //根据不同的模式来选择小鸟的图片
		     if(mode == 1'b1)begin
		          //计算小鸟的地址,取得相应像素点的颜色值
			    addr_bird_2 = (y_count - Y)*56 + x_count - x1_bird;
			   	vga_color = color_bird_2;
           end else begin
			    addr_bird_1 = (y_count - Y)*56 + x_count - x1_bird;
			   	vga_color = color_bird_1;
			  end
   		//扫描区域在管道部分
        end else if(x_count >= pipe_x && x_count < pipe_x + 200)begin
            if(chioce_pipe == 0)begin//当来的是0号管道时, 取0号管道的ROM进行显示
            	addr_pipe3 = y_count*200 + x_count - pipe_x;
				vga_color = color_pipe3;
            end else if(chioce_pipe == 1)begin//当来的是1号管道时, 取1号管道的ROM进行显示
            	addr_pipe4 = y_count*200 + x_count - pipe_x;
            	vga_color = color_pipe4;
            end
	     end
		//扫描区域在背景部分
		else begin
		    if(x_count >= back_x)begin//根据背景的移动进行显示
			    addr_background = y_count*640 + x_count - back_x; 
			end else begin
			    addr_background = y_count*640 + 640 + x_count - back_x; 
			end
    		vga_color = color_background;
    	end
       end
	 end
  end

     //小鸟自由下落以及按键上升
	always@(posedge clk_23)begin
		if(gamepause == 1'b0 && gamestart == 1'b1)begin
		    if(up == 5'ha)begin//按键为重置键的时候
		    	Y = 254;//重置开始位置
		    	Vy = 0;//重置初速度
		    end
			 if(gameover == 1'b0)begin//当游戏还没结束的时候
	            if(up == 5'h9)begin
		            Y = Y - 10'd18;//向上移动
				      if(Y <= 0) begin//防止移出画面
			             Y = 0;
		            end
				      Vy = 0;//初始下落速度置0
		          end else begin
		          if(Y > 441)begin//防止掉到画面下方
				        Y = 441;
				    end else begin
				       //根据h = v^2/2a来计算纵坐标变化
				       Y = Y + Vy*Vy/4;
				       Vy = Vy + 2;
				    end
			  end
			end
		end
	end
	//背景和管道的移动
	//根据游戏时钟进行左移
	always@(posedge gameclk)begin
	    //当当前游戏不为暂停状态并且游戏在进行状态时
	    if(gamepause == 1'b0 && gamestart == 1'b1)begin
	        if(up == 5'ha)begin//按下重置按钮时
	        	   score = 0;//得分重置
	        	   pipe_x = 650;//管道的初始位置重置
	        	   chioce_pipe = 0;//选择的管道重置
				   count=0;//穿过的管道数重置
	        end
			  if(gameover == 1'b0)begin//当游戏没有结束时
	            score = score + 1;//得分随游戏时钟的变化不断增加
	            cnt_pipe = cnt_pipe + 1;//为了随机生成管道计数器二进制计数器不断循环加1
	            if(back_x <= 0)begin//防止背景移出
		            back_x = 480;
		         end
		         if(pipe_x <= -200)begin//管道移动出去的时候
		            pipe_x = 650;//重置位置
		            chioce_pipe = cnt_pipe;//选择下一个管道
					count=count+1;//穿过管道数目加1
		         end
		         back_x = back_x - 10'd10;//背景移动
		         pipe_x = pipe_x - 10'd10;//管道移动
		         if(freq>=4_000_000) freq = freq - 5000;//改变游戏时钟频率
			  end
		end
	end
endmodule