module AndBinario(a,b,out);
	input a,b;
	output out;
	
	wire outNand;
	
	NandBinario nab(a,b,outNand);
	NotBinario n(outNand,out);
endmodule 
