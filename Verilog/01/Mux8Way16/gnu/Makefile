TESTBENCH = t_Mux8Way16

FILES = `ls -1 ../../../*.v ../../*.v ../*.v`

IVERILOG_CMD = iverilog

WAVEFORM_VIEWER = gtkwave

REMOVE_CMD = rm 

all : compile run view

compile :
	iverilog -o $(TESTBENCH).out $(FILES)

run :
	vvp $(TESTBENCH).out

view :
	$(WAVEFORM_VIEWER) $(TESTBENCH).vcd $(TESTBENCH).sav &

clean :
	$(REMOVE_CMD) *.vcd *.out
