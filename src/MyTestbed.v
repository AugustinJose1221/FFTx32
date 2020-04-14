`timescale 1ns/10ps

module MyTestbed(input signed [11:0] r0,
	       input signed [11:0] r1,
	       input signed [11:0] r2,
	       input signed [11:0] r3,
	       input signed [11:0] r4,
	       input signed [11:0] r5,
	       input signed [11:0] r6,
	       input signed [11:0] r7,
	       input signed [11:0] r8,
	       input signed [11:0] r9,
	       input signed [11:0] r10,
	       input signed [11:0] r11,
	       input signed [11:0] r12,
               input signed [11:0] r13,
	       input signed [11:0] r14,
	       input signed [11:0] r15,
	       input signed [11:0] r16,
	       input signed [11:0] r17,
	       input signed [11:0] r18,
	       input signed [11:0] r19,
	       input signed [11:0] r20,
	       input signed [11:0] r21,
	       input signed [11:0] r22,
	       input signed [11:0] r23,
	       input signed [11:0] r24,
	       input signed [11:0] r25,
	       input signed [11:0] r26,
	       input signed [11:0] r27,
	       input signed [11:0] r28,
               input signed [11:0] r29,
	       input signed [11:0] r30,
	       input signed [11:0] r31,
	       input signed [11:0] i0,
	       input signed [11:0] i1,
	       input signed [11:0] i2,
	       input signed [11:0] i3,
	       input signed [11:0] i4,
	       input signed [11:0] i5,
	       input signed [11:0] i6,
	       input signed [11:0] i7,
	       input signed [11:0] i8,
	       input signed [11:0] i9,
	       input signed [11:0] i10,
	       input signed [11:0] i11,
	       input signed [11:0] i12,
               input signed [11:0] i13,
	       input signed [11:0] i14,
	       input signed [11:0] i15,
	       input signed [11:0] i16,
	       input signed [11:0] i17,
	       input signed [11:0] i18,
	       input signed [11:0] i19,
	       input signed [11:0] i20,
	       input signed [11:0] i21,
	       input signed [11:0] i22,
	       input signed [11:0] i23,
	       input signed [11:0] i24,
	       input signed [11:0] i25,
	       input signed [11:0] i26,
	       input signed [11:0] i27,
	       input signed [11:0] i28,
               input signed [11:0] i29,
	       input signed [11:0] i30,
	       input signed [11:0] i31,
	       input enable,
	       input clk,
	       output ret);

integer i, j, latency;
integer fp_r, fp_i, int_r, int_i;
integer flag;
parameter FFT_size = 32;
parameter IN_width = 12;
parameter OUT_width = 16;
parameter latency_limit	= 68;

parameter cycle = 10.0;
//reg clk,
reg rst_n, in_valid;
wire out_valid;
reg signed [IN_width-1:0] din_r, din_i;
wire signed [OUT_width-1:0] dout_r, dout_i;

//always #(cycle/2.0) clk = ~clk;

always @(enable) begin
	if(enable==1) begin
	//clk = 0;
	rst_n = 1;
	in_valid = 0;
	latency = 0;
	flag = 0;
	//fp_r = $fopen("../Test_pattern/input/IN_real_pattern01.txt", "r");
	//fp_i = $fopen("../Test_pattern/input/IN_imag_pattern01.txt", "r");

	@(negedge clk);
	@(negedge clk) rst_n = 0;
	@(negedge clk) rst_n = 1;
	@(negedge clk);
	$display("Input");
	for(j=0;j<FFT_size;j=j+1) 
	begin
		@(negedge clk);
		in_valid = 1;
		case(j)
		0:
		begin
			din_r = r0;
			din_i = i0;
		end
		1:
		begin
			 din_r = r1;
			 din_i = i1;
		end
		2:
		begin
			 din_r = r2;
			 din_i = i2;
		end
		3:
		begin
			 din_r = r3;
			 din_i = i3;
		end
		4:
		begin
			 din_r = r4;
			 din_i = i4;
		end
		5:
		begin
			 din_r = r5;
			 din_i = i5;
		end
		6:
		begin
			 din_r = r6;
			 din_i = i6;
		end
		7:
		begin
			 din_r = r7;
			 din_i = i7;
		end
		8:
		begin
			 din_r = r8;
			 din_i = i8;
		end
		9:
		begin
			 din_r = r9;
			 din_i = i9;
		end
		10:
		begin
			 din_r = r10;
			 din_i = i10;
		end
		11:
		begin
			 din_r = r11;
			 din_i = i11;
		end
		12:
		begin
			 din_r = r12;
			 din_i = i12;
		end
		13:
		begin
			 din_r = r13;
			 din_i = i13;
		end
		14:
		begin
			 din_r = r14;
			 din_i = i14;
		end
		15:
		begin
			 din_r = r15;
			 din_i = i15;
		end
		16:
		begin
			 din_r = r16;
			 din_i = i16;
		end
		17:
		begin
			 din_r = r17;
			 din_i = i17;
		end
		18:
		begin
			 din_r = r18;
			 din_i = i18;
		end
		19:
		begin
			 din_r = r19;
			 din_i = i19;
		end
		20:
		begin
			 din_r = r20;
			 din_i = i20;
		end
		21:
		begin
			 din_r = r21;
			 din_i = i21;
		end
		22:
		begin
			 din_r = r22;
			 din_i = i22;
		end
		23:
		begin
			 din_r = r23;
			 din_i = i23;
		end
		24:
		begin
			 din_r = r24;
			 din_i = i24;
		end
		25:
		begin
			 din_r = r25;
			 din_i = i25;
		end
		26:
		begin
			 din_r = r26;
			 din_i = i26;
		end
		27:
		begin
			 din_r = r27;
			 din_i = i27;
		end
		28:
		begin
			 din_r = r28;
			 din_i = i28;
		end
		29:
		begin
			 din_r = r29;
			 din_i = i29;
		end
		30:
		begin
			 din_r = r30;
			 din_i = i30;
		end
		31:
		begin
			 din_r = r31;
			 din_i = i31;
		end
		
		default: 
		begin
                        $display("Wrong dataset!? No Way!");
                        $finish;
        	end
        	endcase
        	$display("%d + %di",din_r,din_i);
	end
	@(negedge clk) in_valid = 0;

	//$fclose(fp_r);
	//$fclose(fp_i);
	while(!out_valid) begin
		@(negedge clk) latency = latency + 1;
		if(latency > latency_limit) begin
			$display("Latency too long (> %0d cycles)", latency_limit);
			$finish;
		end
	end
	$display("FFT Output");
	for(j=0;j<FFT_size;j=j+1) 
	begin
		
		$display("%d + %di",dout_r,dout_i);
		//$display("%d",dout_r);
		//$display("%d",dout_i);
		@(negedge clk);
	end
	flag = 1;
	//$dumpfile("test.vcd");
	//$dumpvars(0, MyTestbed);
	
	//$finish;
	end
end
assign ret = flag;
FFT FFT_CORE(
.clk(clk),
.rst_n(rst_n),
.in_valid(in_valid),
.din_r(din_r),
.din_i(din_i),
.out_valid(out_valid),
.dout_r(dout_r),
.dout_i(dout_i)
);
endmodule
	

