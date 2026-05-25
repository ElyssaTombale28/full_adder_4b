//testbench for full_adder

module tb_full_adder;

	reg A;
	reg B;
	reg cin;
	wire sum;
	wire cout;
	
	full_adder dut(
		.cout (cout), 
		.sum	 (sum), 
		.A		 (A),
		.B		 (B),
		.cin   (cin)
	);
	
	initial begin
		
		{A,B,cin} = 3'b000; #10;
		{A,B,cin} = 3'b001; #10;
		{A,B,cin} = 3'b010; #10;
		{A,B,cin} = 3'b011; #10;
		{A,B,cin} = 3'b100; #10;
		{A,B,cin} = 3'b101; #10;
		{A,B,cin} = 3'b110; #10;
		{A,B,cin} = 3'b111; #10;
	
	end
	
endmodule