module centralControl ( input [2:0] OP, input Overflow, output EN_PC, EN_INST, EN_ADDR, EN_Y, EN_OP, EN_X, SEL_SUM, SEL_Y_MEM, EN_R, EN_WE );
	
	assign EN_PC = 1'b1;
endmodule
