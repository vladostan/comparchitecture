module adder4_testbench;

// input and output test signals
reg [3:0] in1;
reg [3:0] in2;

wire [3:0] out;
wire overflow;

// creating the instance of the module we want to test
ripple_carry ripple_carry(in1, in2, out, overflow);

initial
begin
in1 = 4'b0000;
in2 = 4'b0000;
#5; // pause (5 units of delay )
in1 = 4'b0001;
in2 = 4'b0000;
#5;
in1 = 4'b0000;
in2 = 4'b0001;
#5;
in1 = 4'b0011;
in2 = 4'b0101;
#5;
in1 = 4'b1111;
in2 = 4'b1111;
#5;
in1 = 4'b1111;
in2 = 4'b0001;
#5;
end

// print signal values on every change
initial
$monitor("in1= %b in2 = %b out = %b overflow = %b", in1, in2, out, overflow);

initial
$dumpvars; // iverilog dump init

endmodule