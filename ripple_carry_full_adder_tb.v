module test; 
  reg [3:0] a,b;
  reg c_in;
  wire [3:0] sum;
  wire carry;

  full_adder4 dut(
    .a(a),
    .b(b),
    .c_in(c_in),
    .sum(sum),
    .carry(carry));

initial 
begin
    
    $dumpvars(1,test);
    #5;
    a=0;
    b=0;
    c_in=0;

    #5;
    a=2;
    b=3;

    #5;
    c_in = 1;

    #5;
    c_in = 0;
    a = 4'b1000;
    b = 4'b0111;

    #5;
    c_in = 1;

    #5 $finish;

end


endmodule