module Mux4Way16(a,b,c,d,sel,out);
	input[15:0] a;
	input[15:0] b;
	input[15:0] c;
	input[15:0] d;
	input[1:0] sel;
	output[15:0] out;
	
	wire not0,not1;
	wire [15:0] out1,out2;
	
	NotBinario n1(sel[0],not0);
	NotBinario n2(sel[1],not1);
	Mux16 m1(a,b,sel[0],out1);
	Mux16 m2(c,d,sel[0],out2);
	Mux16 m3(out1,out2,sel[1],out);

endmodule 
