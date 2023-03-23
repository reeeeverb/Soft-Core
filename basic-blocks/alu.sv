
module alu(input  logic[2:0]   c,
	       input  logic[31:0]a,b,
           output logic[31:0]  y);

  always@(c)
	case(c)
		3'b001	: 	assign y=a&b;
		3'b010	: 	assign y=a+b;
		3'b100	: 	assign y=a&(~b);
		3'b101	: 	assign y=a|(~b);
		3'b110	: 	assign y=a-b;
		3'b111	: 	assign y={a[29:0],2'b00};
	endcase	
endmodule