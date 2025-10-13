module alu(X, Y, S, d, shamt, cout, outp);
input [3: 0] X, Y;
input [2: 0] S;
input [1: 0] shamt;
input d;
output [3: 0] outp;
output cout;

wire [3: 0] sum;

adder_subtractor add_sub1(.X(X), .Y(Y), .cout(cout), .G(sum), .S(S));
shifter shift(.data(sum), .shamt(shamt), .direction(d), .outp(outp));

endmodule
