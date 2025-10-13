module shifter(data, shamt, direction, outp);
//direction
//1 = right
//0 = left
input [3: 0] data;
input [1: 0] shamt;
input direction;
output [3: 0] outp;

assign outp = (direction)? (data >> shamt) : (data << shamt);

endmodule

