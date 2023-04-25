module imem(input  logic [5:0]  a,
			output logic [31:0] rd);

	//logic[31:0]RAM[63:0];
	logic[31:0]RAM[0:63];
	
	initial
		$readmemh("memfile.dat",RAM);

	assign rd=RAM[a];
endmodule
