`define IDLE 2'b00
`define t0 2'b01
`define t1 2'b10
`define t2 2'b11
 
module IIR(clk,rst,load,DIn,RAddr,data_done,WEN,Yn,WAddr,Finish);
	parameter n=16;
	parameter m=20;
	
	input clk,rst;
	input data_done;
	input signed [n-1:0] DIn;
	
	output reg load;
	output WEN;
	output reg Finish;
	output [n-1:0] Yn;
	output reg [m-1:0] RAddr;
	output reg [m-1:0] WAddr;

	wire next_hold;
	wire next_Finish;

	reg hold;
	reg [19:0] next_RAddr;
	reg [1:0] state, next_state;
	reg signed [24:0] sum;
	reg signed [24:0] s0, next_s0;
	reg signed [24:0] s1, next_s1;
	reg signed [24:0] s2, next_s2;
	reg signed [24:0] s3, next_s3;
	reg signed [24:0] s4, next_s4;
	reg signed [24:0] s5, next_s5;
	reg signed [24:0] sp0, next_sp0;
	reg signed [24:0] sp1, next_sp1;
	reg signed [24:0] sp2, next_sp2;
	reg signed [24:0] sp3, next_sp3;
	reg signed [24:0] sp4, next_sp4;
	always@(posedge clk or posedge rst) begin
		if(rst == 1'b1) begin
			state <= `IDLE;
			RAddr <= 20'b0;
			Finish <= 1'b0;
			hold <= 1'b0;
			s0 <= 25'b0;
			s1 <= 25'b0;
			s2 <= 25'b0;
			s3 <= 25'b0;
			s4 <= 25'b0;
			s5 <= 25'b0;
			sp0 <= 25'b0;
			sp1 <= 25'b0;
			sp2 <= 25'b0;
			sp3 <= 25'b0;
			sp4 <= 25'b0;
		end
		else begin
			state <= next_state;
			RAddr <= next_RAddr;
			Finish <= next_hold;
			hold <= next_Finish;
			s0 <= next_s0;
			s1 <= next_s1;
			s2 <= next_s2;
			s3 <= next_s3;
			s4 <= next_s4;
			s5 <= next_s5;
			sp0 <= next_sp0;
			sp1 <= next_sp1;
			sp2 <= next_sp2;
			sp3 <= next_sp3;
			sp4 <= next_sp4;
		end
	end
	always@(*)begin
		next_state = state;
		case(state) 
			`IDLE : begin
				next_state = (rst == 1'b0) ? `t0 : `IDLE;
				load = (rst == 1'b0) ? 1'b1 : 1'b0;
			end
			`t0 : begin
				next_state = `t1;
			end
			`t1 : begin
				next_state = `t2;
			end
			`t2 : begin
				next_state = `t0;
			end
			default begin
				next_state = `IDLE;
				load = 1'b0;
			end
		endcase
	end
	always@(*)begin
		next_RAddr = RAddr;
		next_s0 = s0;
		next_s1 = s1;
		next_s2 = s2;
		next_s3 = s3;
		next_s4 = s4;
		next_s5 = s5;
		next_sp0 = sp0;
		next_sp1 = sp1;
		next_sp2 = sp2;
		next_sp3 = sp3;
		next_sp4 = sp4;
			case(state)
				`t0 : begin
					next_s5 = {{2{DIn[15]}}, DIn, {7{1'b0}}};
				end
				`t1 : begin
 					sum = (s5>>>6) + (s5>>>9) + (s5>>>10) + (s5>>>11) + (s5>>>12) + (s5>>>13) + (s5>>>16)
						+ (s4>>>6) + (s4>>>8) + (s4>>>10) + (s4>>>11) + (s4>>>14) + (s4>>>15) + (s4>>>16)
						+ (s3>>>5) + (s3>>>8) + (s3>>>9) + (s3>>>11) + (s3>>>14) + (s3>>>15) + (s3>>>16)
						+ (s2>>>5) + (s2>>>8) + (s2>>>9) + (s2>>>11) + (s2>>>14) + (s2>>>15) + (s2>>>16)
						+ (s1>>>6) + (s1>>>8) + (s1>>>10) + (s1>>>11) + (s1>>>14) + (s1>>>15) + (s1>>>16)
						+ (s0>>>6) + (s0>>>9) + (s0>>>10) + (s0>>>11) + (s0>>>12) + (s0>>>13) + (s0>>>16)
						+ (sp4<<<1) + (sp4>>>1) + (sp4>>>2) + (sp4>>>7) + (sp4>>>13) + (sp4>>>14)
						- (sp3<<<2) - (sp3>>>7) - (sp3>>>9) - (sp3>>>10) - (sp3>>>12)
						+ (sp2<<<1) + (sp2) + (sp2>>>2) + (sp2>>>4) + (sp2>>>5) + (sp2>>>6) + (sp2>>>7) + (sp2>>>8)
						- (sp1) - (sp1>>>1) - (sp1>>>3) - (sp1>>>6) - (sp1>>>7) - (sp1>>>8) - (sp1>>>10) - (sp1>>>11) - (sp1>>>12) - (sp1>>>13) - (sp1>>>16)
						+ (sp0>>>2) + (sp0>>>3) + (sp0>>>8) + (sp0>>>11) + (sp0>>>13) + (sp0>>>14);
				end
				`t2 : begin
					next_s4 = s5;
 					next_s3 = s4;
 					next_s2 = s3;
 					next_s1 = s2;
 					next_s0 = s1;
 					next_sp4 = {{3{sum[24]}}, sum[21:7], {7{1'b0}}};
 					next_sp3 = sp4;
 					next_sp2 = sp3;
 					next_sp1 = sp2;
 					next_sp0 = sp1;
					next_RAddr = RAddr + 20'b1;
					WAddr = RAddr;
				end
				default begin
					next_s5 = 25'b0;
					next_s4 = 25'b0;
					next_s3 = 25'b0;
					next_s2 = 25'b0;
					next_s1 = 25'b0;
					next_s0 = 25'b0;
					next_sp4 = 25'b0;
					next_sp3 = 25'b0;
					next_sp2 = 25'b0;
					next_sp1 = 25'b0;
					next_sp0 = 25'b0;
					next_RAddr = 20'b0;
				end
			endcase
		end
		assign WEN = (state == `t0) ? 1'b1 : 1'b0;
		assign Yn = (WEN == 1'b1) ? {sum[24], sum[21:7]} : 16'b0;
		assign next_Finish = (state == `t2 && data_done == 1'b1) ? 1'b1 : 1'b0;
		assign next_hold = (hold == 1'b1) ? 1'b1 : 1'b0;
endmodule
