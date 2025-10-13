module adder_subtractor(X, Y, cout, G, S);
input [3: 0] X, Y;
input [2: 0] S;
output [3: 0] G;
output cout;

wire [3: 0] to_A;
wire [2: 0] c;

assign to_A[3] = (Y[3] & S[1]) | ((~Y[3]) & S[2]);
assign to_A[2] = (Y[2] & S[1]) | ((~Y[2]) & S[2]);
assign to_A[1] = (Y[1] & S[1]) | ((~Y[1]) & S[2]);
assign to_A[0] = (Y[0] & S[1]) | ((~Y[0]) & S[2]);

fulladder fulladder3(.A(to_A[3]),.B(X[3]), .cin(c[2]),.cout(cout),.sum(G[3]));
fulladder fulladder2(.A(to_A[2]),.B(X[2]), .cin(c[1]),.cout(c[2]),.sum(G[2]));
fulladder fulladder1(.A(to_A[1]),.B(X[1]), .cin(c[0]),.cout(c[1]),.sum(G[1]));
fulladder fulladder0(.A(to_A[0]),.B(X[0]), .cin(S[0]),.cout(c[0]),.sum(G[0]));

endmodule
