module ALU(x,y,zx,nx,zy,ny,f,no,out,zr,ng);
	input [15:0] x,y;
	input zx,nx,zy,ny,f,no;
	output [15:0] out;
	output zr,ng;
	
	wire [15:0] notX,notY,outX,outY,outSum,outCarry,outAnd,notSum,notAnd, outMux;
	wire outZr1,outZr2,outZr,inCarry;
	wire Zero1,Zero2,Zero3;
	wire[1:0] zxnx = nx + (zx*2);
	wire[1:0] zyny = ny + (zy*2);
	wire[1:0] fno = no + (f*2);


	Not16 n1(x,notX);
	Not16 n2(y,notY);
	Mux4Way16 m1(x,notX,16'h 0000,16'h 1111,zxnx,outX);
	Mux4Way16 m2(y,notY,16'h 0000,16'h 1111,zyny,outY);
	Add16 add1(outX,outY,inCarry,outSum,outCary);
	And16 and1(outX,outY,outAnd);
	Not16 n3(outSum,notSum);
	Not16 n4(outAnd,notAnd);
	Mux4Way16 m3(outAnd,notAnd,outSum,notSum,fno,outMux);
	OuBinario o1(outMux[15],16'h 0000,ng);	
	Or16 o2(outMux,16'h 0000,out);
	Or8Way o3(outMux[15:8],outZr1);
	Or8Way o4(outMux[7:0],outZr2);
	OuBinario o5(outZr1,outZr2,outZr);
	NotBinario n5(outZr,zr);	
endmodule 
