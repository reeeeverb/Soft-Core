module flip_tester;
	logic clk;
	logic reset;
	logic[7:0]d;

	logic[7:0]q;

	flopr dut(
		.clk(clk),
		.reset(reset),
		.d(d),
		.q(q)
	);

	initial
		begin
			reset <= 1; #10;
			reset <= 0; d <= 8'hFF; #10;
			reset <= 1; #10;
			reset <= 0; d <= 8'hA2; #10;
		end
	always
		begin
			clk <= 1; #5;
			clk <= 0; #5;
		end

endmodule
		