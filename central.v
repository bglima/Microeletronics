module central (op, clk, clr, mux_sum, mux_y, we, en_fetch, r, inst_en);
input [2:0] op;
input clk, clr;
output 	[1:0] mux_sum;
reg		[1:0] mux_sum;
output reg [5:0] inst_en;	//  PC_EN, INST_EN, ADDR_EN, Y_EN, OP_EN, X_EN
output reg mux_y;
output reg we; 
output reg en_fetch;
output reg r;

reg [1:0] inst_state;
reg [1:0] inst_next_state;	
reg initOk = 0;

always @ (posedge clk) begin
	case (inst_state)
		2'b00 : inst_en <= 6'b000000;
		2'b01 : inst_en <= 6'b100000; 
		2'b10 : inst_en <= 6'b110000;
		2'b11 : inst_en <= 6'b111111;
	endcase
	inst_state <= inst_next_state;
end

always begin
	// Init sequence 
	case ( inst_state )
		2'b00 : inst_next_state = 2'b01;
		2'b01 : inst_next_state = 2'b10;
		2'b10 : inst_next_state = 2'b11;
		2'b11 : begin
			inst_next_state = 2'b00;
			initOk = 1;
		end
	endcase
end

/* always @ (posedge clk) begin


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


	end*/
endmodule