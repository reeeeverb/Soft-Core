
module alu(input  logic[31:0]a,b,
		   input  logic[2:0]   c, 
           output logic[31:0]  y,
		   output logic      zero);

  assign zero = 0;
  always@(c or a or b)
	case(c)
		3'b001	: 	y=a&b;
		3'b010	: 	y=a+b;
		3'b100	: 	y=a&(~b);
		3'b101	: 	y=a|(~b);
		3'b110	: 	y=a-b;
		3'b111	: 	y={a[29:0],2'b00};
	endcase	
endmodule
