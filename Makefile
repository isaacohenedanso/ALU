CC=iverilog
CCC=vvp

all: build run


build: fulladder.v adder_subtractor.v arithmetic_unit.v logic_u.v logic_unit.v mux8.v shifter.v alu.v alu_tb.v
	$(CC) -o alu fulladder.v adder_subtractor.v arithmetic_unit.v logic_u.v logic_unit.v mux8.v shifter.v alu.v alu_tb.v
	@echo "Compiling Verilog source files...\n"

run: alu
	@echo "Running compiled file...\n"
	$(CCC) alu


clean:
	rm *.vcd alu
