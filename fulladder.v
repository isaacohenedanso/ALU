module fulladder(A, B, cin, sum, cout);
input A, B, cin;
output sum;
output cout;

assign sum = A ^ B ^ cin;
assign cout = (A & B) | (A & cin) | (B & cin);

endmodule
