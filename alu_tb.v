`timescale 1ns / 1ps;
module alu_tb;

reg [3: 0]X, Y;;
reg [2: 0] S;
reg [1: 0] shamt;
reg d;

wire [3: 0] outp;

alu dut(.X(X), .Y(Y), .S(S), .d(d), .shamt(shamt), .cout(cout), .outp(outp));

initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);
    $monitor("X = %4b, Y = %4b, S = %3b shamt = %2b, d = %b, cout = %b, outp = %4b", X, Y, S, shamt, d, cout, outp);
end

integer i;
initial begin
    for(i = 0; i < 16384; i = i + 1) begin
        {X, Y, S, shamt, d} = i;
        #1;
    end
end
endmodule

