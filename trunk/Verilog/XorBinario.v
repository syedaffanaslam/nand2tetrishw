module XorBinario(a,b,out);
	input a;
	input b;
	output out;
	wire notA,notB,outAnd1,outAnd2;
	
	
	NotBinario na(a,notA);
	NotBinario nb(b,notB);
	AndBinario aa(notA,b,outAnd1);
	AndBinario ab(a,notB,outAnd2);
	OuBinario o(outAnd1,outAnd2,out);
endmodule 
