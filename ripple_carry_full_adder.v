module full_adder(
    input a,b,c_in,
    output sum, carry,
);

wire net1, net2, net3;

xor(net1, a, b);
xor(sum, c_in, net1);

and(net3, a, b);
and(net2, net1, c_in);

or(carry, net2, net3);

endmodule

module full_adder4(
    input [3:0] a,b,
    input c_in,
    output [3:0] sum,
    output carry,
);

wire [2:0] net; //internal wires

full_adder fa0(
    .a(a[0]),
    .b(b[0]),
    .c_in(c_in),
    .sum(sum[0]),
    .carry(net[0]));

full_adder fa1(
    .a(a[1]),
    .b(b[1]),
    .c_in(net[0]),
    .sum(sum[1]),
    .carry(net[1]));

full_adder fa2(
    .a(a[2]),
    .b(b[2]),
    .c_in(net[1]),
    .sum(sum[2]),
    .carry(net[2]));

full_adder fa3(
    .a(a[3]),
    .b(b[3]),
    .c_in(net[2]),
    .sum(sum[3]),
    .carry(carry));


endmodule