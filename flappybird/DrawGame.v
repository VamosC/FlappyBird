module DrawGame(input wire clk,//100MHZ
                input wire gamestart,
			    input wire gamepause,
			    input wire clk_25,
			    input wire clk_23,
	            input wire [9:0] x_count,//vgaɨ�� x����	            
				input wire [8:0] y_count,//vgaɨ�� y����
                input wire [4:0] up,//���̰���	 			 
				output reg [11:0] vga_color,
				output reg [31:0] score,
				output reg [15:0] count);//����vga��12λ��ɫ   
	 integer x1_bird = 200;//С���ʼ��˺�����
     integer x2_bird = 256;//С���ʼ�Ҷ˺�����
	 reg [0:0] mode;//��������С����̬��ģʽλ
	 reg [0:0] cnt_pipe;
	 reg [0:0] chioce_pipe;
     reg [11:0] addr_bird_1;//ȡС����̬1�ĵ�ַ����ROM
	 reg [11:0] addr_bird_2;//ȡС����̬2�ĵ�ַ
     reg [18:0] addr_background;//ȡ�����ĵ�ַ
	 reg [18:0] addr_start;
	 reg [13:0] addr_final;
	 reg [16:0] addr_pipe3;//ȡ�ܵ�3�ĵ�ַ
	 wire [11:0] color_pipe3;//�ܵ�3����ɫ                   //195~297
	 reg [16:0] addr_pipe4;//ȡ�ܵ�4�ĵ�ַ
	 wire [11:0] color_pipe4;//�ܵ�4����ɫ                    //156~276
	 wire [11:0] color_final;//��������ɫ
	 reg [10:0] back_x;//�����ƶ��ĺ�����
	 reg signed [10:0] pipe_x;//�ܵ��ƶ��ĺ�����
	 reg [31:0] cnt;//�����������ڲ�����Ϸʱ��
	 reg [31:0] freq;//���ڲ�����Ϸʱ��
	 reg gameclk;//��Ϸʱ��
	 reg gameover;//��Ϸ������־
	 wire [11:0] color_start;
     wire [11:0] color_bird_1;//С����̬1����ɫ
	 wire [11:0] color_bird_2;//С����̬2����ɫ
     wire [11:0] color_background;//��������ɫ
     reg [10:0] Y;//С��������
	 reg [10:0] Vy;//С�������ٶ����ڼ���������
    initial begin
    	Y = 254;//С���ʼ������
		back_x = 0;//������ʼ��������
		pipe_x = 650;//�ܵ���ʼ��������
		freq = 5_000_000;
		gameclk=1;
		gameover = 0;
		Vy = 0;//��ʼ�������ٶ�
		chioce_pipe = 0;
		count=0;
    end
    //������Ϸʱ��
	always@(posedge clk) begin
		if(cnt <= freq)begin
		    cnt = cnt + 1;
		end else begin
		    cnt = 0;
		    gameclk = ~gameclk;
		end
	end
    //С����̬1��ROM
    bird_1 Rom0(.clka(clk), .addra(addr_bird_1), .douta(color_bird_1));
	//С����̬2��ROM
    bird_2 Rom1(.clka(clk), .addra(addr_bird_2), .douta(color_bird_2));
    //������ROM
    background Rom2(.clka(clk), .addra(addr_background), .douta(color_background));
	//��ʼ�����ROM
	start Rom4(.clka(clk), .addra(addr_start), .douta(color_start));
	//�ܵ�3��ROM
	pipe3 Rom6(.clka(clk), .addra(addr_pipe3), .douta(color_pipe3));
	//�ܵ�4��ROM
	pipe4 Rom7(.clka(clk), .addra(addr_pipe4), .douta(color_pipe4));
	//���������ROM
	final Rom10(.clka(clk), .addra(addr_final), .douta(color_final));
    //Ϊ�˸ı�С����̬,�ı�mode
	always @(posedge clk_25)begin
	    if(gamepause == 1'b0)begin
	        mode = ~mode;
	    end
	end

	//��ײ�����Ҫ���ּ��
    //1. ��������
    //2. ײ�����
    //3. �ڹܵ�������ײ
	//��ϵ�·������ʾ����ײ���
    always @(*) begin
    //��Ϸ����ǰ�Ŀ�ʼ������ʾ
	if(gamestart == 1'b0)begin
	    addr_start = y_count*640 + x_count;//�����ַ��
		vga_color = color_start;//���ݵ�ַȡ����ɫֵ������vga
	end
	else begin
	    if(up == 5'ha)begin
	    	gameover = 0;//���ý�gameover��־λ����
	    end
	    if(Y == 441)begin
    	    gameover = 1;//��С��ˤ������, gameover��־λ��1
        end

        //��С����д��ܵ��Ķ���ʱ, ������ײ���
        if((x2_bird - pipe_x >= 55 && x1_bird - pipe_x <= 145))begin
        	if(chioce_pipe == 0)begin//��������0�Źܵ���3��ʱ
        		if(Y <= 195 || Y >= 258)begin//��鵱ǰ���������ֵ
        			gameover = 1;//ײ�Ϲܵ�, gameover��0
        		end
        	end else if(chioce_pipe == 1)begin//��������1�Źܵ���4��ʱ
        		if(Y <= 156 || Y >= 237)begin//������ͬ�ļ��
        			gameover = 1;
        		end
        	end 
        end
	    if(gameover==1'b1)begin   //��������־λ��1ʱ,��ʾ��������
		     if(y_count >= 190 && y_count < 290 && x_count >=270 && x_count < 370)begin
			      addr_final = (y_count - 190)*100 + x_count - 270;
					vga_color = color_final;					
			  end else begin
			      vga_color = 3271;
			  end
    	end 
		
        else begin  //��ɨ��������С�񲿷�
    	  if(x_count >= x1_bird && x_count < x2_bird && y_count >= Y && y_count < Y + 39)begin
    	     //���ݲ�ͬ��ģʽ��ѡ��С���ͼƬ
		     if(mode == 1'b1)begin
		          //����С��ĵ�ַ,ȡ����Ӧ���ص����ɫֵ
			    addr_bird_2 = (y_count - Y)*56 + x_count - x1_bird;
			   	vga_color = color_bird_2;
           end else begin
			    addr_bird_1 = (y_count - Y)*56 + x_count - x1_bird;
			   	vga_color = color_bird_1;
			  end
   		//ɨ�������ڹܵ�����
        end else if(x_count >= pipe_x && x_count < pipe_x + 200)begin
            if(chioce_pipe == 0)begin//��������0�Źܵ�ʱ, ȡ0�Źܵ���ROM������ʾ
            	addr_pipe3 = y_count*200 + x_count - pipe_x;
				vga_color = color_pipe3;
            end else if(chioce_pipe == 1)begin//��������1�Źܵ�ʱ, ȡ1�Źܵ���ROM������ʾ
            	addr_pipe4 = y_count*200 + x_count - pipe_x;
            	vga_color = color_pipe4;
            end
	     end
		//ɨ�������ڱ�������
		else begin
		    if(x_count >= back_x)begin//���ݱ������ƶ�������ʾ
			    addr_background = y_count*640 + x_count - back_x; 
			end else begin
			    addr_background = y_count*640 + 640 + x_count - back_x; 
			end
    		vga_color = color_background;
    	end
       end
	 end
  end

     //С�����������Լ���������
	always@(posedge clk_23)begin
		if(gamepause == 1'b0 && gamestart == 1'b1)begin
		    if(up == 5'ha)begin//����Ϊ���ü���ʱ��
		    	Y = 254;//���ÿ�ʼλ��
		    	Vy = 0;//���ó��ٶ�
		    end
			 if(gameover == 1'b0)begin//����Ϸ��û������ʱ��
	            if(up == 5'h9)begin
		            Y = Y - 10'd18;//�����ƶ�
				      if(Y <= 0) begin//��ֹ�Ƴ�����
			             Y = 0;
		            end
				      Vy = 0;//��ʼ�����ٶ���0
		          end else begin
		          if(Y > 441)begin//��ֹ���������·�
				        Y = 441;
				    end else begin
				       //����h = v^2/2a������������仯
				       Y = Y + Vy*Vy/4;
				       Vy = Vy + 2;
				    end
			  end
			end
		end
	end
	//�����͹ܵ����ƶ�
	//������Ϸʱ�ӽ�������
	always@(posedge gameclk)begin
	    //����ǰ��Ϸ��Ϊ��ͣ״̬������Ϸ�ڽ���״̬ʱ
	    if(gamepause == 1'b0 && gamestart == 1'b1)begin
	        if(up == 5'ha)begin//�������ð�ťʱ
	        	   score = 0;//�÷�����
	        	   pipe_x = 650;//�ܵ��ĳ�ʼλ������
	        	   chioce_pipe = 0;//ѡ��Ĺܵ�����
				   count=0;//�����Ĺܵ�������
	        end
			  if(gameover == 1'b0)begin//����Ϸû�н���ʱ
	            score = score + 1;//�÷�����Ϸʱ�ӵı仯��������
	            cnt_pipe = cnt_pipe + 1;//Ϊ��������ɹܵ������������Ƽ���������ѭ����1
	            if(back_x <= 0)begin//��ֹ�����Ƴ�
		            back_x = 480;
		         end
		         if(pipe_x <= -200)begin//�ܵ��ƶ���ȥ��ʱ��
		            pipe_x = 650;//����λ��
		            chioce_pipe = cnt_pipe;//ѡ����һ���ܵ�
					count=count+1;//�����ܵ���Ŀ��1
		         end
		         back_x = back_x - 10'd10;//�����ƶ�
		         pipe_x = pipe_x - 10'd10;//�ܵ��ƶ�
		         if(freq>=4_000_000) freq = freq - 5000;//�ı���Ϸʱ��Ƶ��
			  end
		end
	end
endmodule