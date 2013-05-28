module OuBinario(a,b,out);
	input a;
	input b;
	output out;
	wire notA, notB,notAnd;
	
	NotBinario na(a,notA);
	NotBinario nb(b,notB);
	AndBinario aab(notA,notB,notAnd);
	NotBinario naa(notAnd,out);
endmodule 
