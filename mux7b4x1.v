module mux7b4x1( input [7:0] A, B, C, D, input [1:0] Sel, input Enable, output reg [7:0] S );

	always begin
		case (Sel)
			2'b00: S = (Enable) ? A : 8'bz;
			2'b01: S = (Enable) ? B : 8'bz;
			2'b10: S = (Enable) ? C : 8'bz;
			2'b11: S = (Enable) ? D : 8'bz;
		endcase
  end
	
endmodule
