`define IDLE 3'b000
`define s0 3'b001
`define s1 3'b010
`define s2 3'b011
`define s3 3'b100

module MM(clk,i,j,reset,read,write,index,read_data,write_data,finish);
	parameter l=20;
	
	input reset,clk;
	input [l-1:0]read_data;
	
	output reg [l-1:0]i,j;
	output reg read,write,index;
	output reg finish;
	output [2*l-1:0]write_data;

	reg [2:0] state, next_state;
	reg [l-1:0] next_i;
	reg [l-1:0] next_j;
	reg [l-1:0] savingA;
	reg [2*l-1:0] write_data, next_write_data;
	reg [l-1:0] next_m, next_n;
	reg [l-1:0] m, n;

	wire [l-1:0] a, b, c;
	wire next_finish;

	always@ (posedge reset or posedge clk) begin
		if(reset == 1'b1)begin
			state <= `IDLE;
			i <= 20'd0;
			j <= 20'd0;
			write_data <= 40'd0;
			m <= 20'd0;
			n <= 20'd0;
			finish <= 1'b0;
		end
		else begin
			state <= next_state;
			i <= next_i;
			j <= next_j;
			write_data <= next_write_data;
			m <= next_m;
			n <= next_n;
			finish <= next_finish;
		end
	end

	always@(*)begin
		next_state = state;		
		next_i = i;
		next_j = j;
		next_m = m;
		next_n = n;
		next_write_data = write_data;
		case(state)
			`IDLE : begin
				next_state = (reset == 1'b0) ? `s0 : `IDLE;
			end
			`s0 : begin
				read = 1'b1;
				write = 1'b1;
				next_i = (i == 20'd2) ? 20'd0 : i + 20'd1;
				next_state = (i == 20'd2) ? `s1 : `s0;
			end
			`s1 : begin
				read = 1'b1;
				write = 1'b0; 
				index = 1'b0;
				next_state = `s2;
				next_i = j;
				next_j = n;
				savingA = read_data;
			end
			`s2 : begin
				read = 1'b1;
				write = 1'b0;
				index = 1'b1;
				next_write_data = write_data 
				+ {{20{savingA[19]}} , savingA} 
				* {{20{read_data[19]}} , read_data};
				if (i == b - 20'd1)
					next_state = `s3;
				else begin
				 	next_state = `s1;
					next_i = m;
					next_j = i + 20'd1;
				end
 			end
			`s3 : begin
				read = 1'b0;
				write = 1'b1;
				next_write_data = 40'd0;
				if(n == c - 20'd1) begin
					next_state = `s1;
					next_i = m + 20'd1;
					next_j = 20'd0;
					next_m = m + 20'd1;
					next_n = 20'd0;
				end
				else begin
					next_state = `s1;
					next_i = m;
					next_j = 20'd0;
					next_m = m;
					next_n = n + 20'd1;
				end
			end
			default : begin
				next_state = `IDLE;
				next_write_data = 40'd0;
				next_i = 20'd0;
				next_j = 20'd0;
				next_m = 20'd0;
				next_n = 20'd0;
			end
		endcase
	end

	assign a = (state == `s0 && i == 20'd0) ? read_data : a;
	assign b = (state == `s0 && i == 20'd1) ? read_data : b;
	assign c = (state == `s0 && i == 20'd2) ? read_data : c;
	assign next_finish = (state == `s3 && m == a - 20'd1 && n == c - 20'd1)? 1'b1 : 1'b0;

endmodule
