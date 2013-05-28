module Inc16(in,out,cout);
	input [15:0] in;
	output [15:0] out;
	output cout;
	
	Add16 a(in,0,1,out,cout);
endmodule 
