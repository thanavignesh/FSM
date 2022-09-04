//1101 non overlapping sequence using moore machine test bench
module nol_1101_moore;
reg clk, reset, in;
wire out;
moorefsmnol FS(.clk(clk), .rst(reset), .in(in), .out(out));
initial
begin
clk = 0;
reset = 1;
in = 0;
#10 reset = 0;
#100 $finish;
end
always
#5 clk = ! clk;
always
#5 in = $random;
initial begin
$display("\t\ttime,\tclk,\treset,\tin,\tout");
$monitor("%d,\t%b,\t%b,\t%b,\t%b",$time, clk,reset,in,out);
end
endmodule
