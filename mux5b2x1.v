module mux5b2x1( input [4:0] A, B, input Sel, input Enable, output reg [4:0] S );

	always begin
		case (Sel)
			1'b0: S = (Enable) ? A : 5'bz;
			1'b1: S = (Enable) ? B : 5'bz;
		endcase
  end
	
endmodule
