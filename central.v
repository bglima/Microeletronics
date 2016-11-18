module central (clk, clr, instEnable);

input	clk, clr;
output reg [5:0]	instEnable;
reg [2:0] fetchState;		// Current fetching state
reg fetchNextState;

initial begin
	fetchState <= 0;
end

always @ (posedge clk) begin
	if( clr ) begin
		case (fetchState)
			0 : begin
				instEnable <= 6'b000000;	
				fetchState <= 1;
			end
			1 : begin
				instEnable <= 6'b100000; 
				fetchState <= 2;
			end
			2 : begin
				instEnable <= 6'b110000;
				fetchState <= 3;
			end
			3 : begin 
				instEnable <= 6'b111111;
				fetchState <= 4;
			end
			4 : begin
				instEnable <= 6'b000000;
				fetchState <= 5;
			end
			5 : begin
				instEnable <= 6'b111111;
				fetchState <= 4;
			end
		endcase
	end
	else begin
		fetchState = 0;
		instEnable <= 6'b000000;
	end
end


endmodule