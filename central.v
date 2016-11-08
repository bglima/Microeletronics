module central (op, clk, clr, mux_sum, mux_y, we, en_fetch, r);
input [2:0] op;
input clk, clr;
output 	[1:0] mux_sum;
reg		[1:0]mux_sum;
output reg mux_y;
output reg we; 
output reg en_fetch;
output reg r;

always @ (posedge clk) begin

		if (op == 3'b000)
			begin
			mux_sum <= 2'b00;
			mux_y <= 1'b0;
			en_fetch <= 1'b1;
			r <= 1'b1;
			we <=1'b1;
			end
		else if(op == 3'b001) 
			begin
			mux_sum <= 1'b0;
			mux_y <= 1'b0;
			en_fetch <= 1'b1;
			r <= 1'b0;
			
			end
		else if(op == 3'b000) 
			begin
			mux_sum <= 1'b0;
			mux_y <= 1'b0;
			en_fetch <= 1'b1;
			r <= 1'b0;
			
			end
			else if(op == 3'b000) 
			begin
			mux_sum <= 1'b0;
			mux_y <= 1'b0;
			en_fetch <= 1'b1;
			r <= 1'b0;
			
			end

	end
endmodule