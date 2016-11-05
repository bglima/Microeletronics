module mux7b2x1( input [7:0] A, B, input Sel, input Enable, output reg [7:0] S );

	always begin
		case (Sel)
			1'b0: S = (Enable) ? A : 8'bz;
			1'b1: S = (Enable) ? B : 8'bz;
		endcase
  end
	
endmodule
