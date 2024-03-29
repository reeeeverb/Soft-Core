module testbench();
	logic clk;
	logic reset;

	logic[31:0]writedata,dataadr;
	logic	   memwrite;

	top dut(clk,reset,writedata,dataadr,memwrite);

	initial
		begin
            $dumpfile ("tb.vcd");
            $dumpvars(0,testbench);
			reset <= 1; #22; reset <=0;
		end
	always
		begin
			clk <= 1; #5; clk<=0; #5;
		end
	always@(negedge clk)
		begin
			if(memwrite)begin
				if(dataadr===84&writedata===7)begin
					$display("Simulation Succeeded");
					$finish;
			end else if (dataadr !==80)begin
                $display(dataadr);
				$display("Simulation Failed");
				$finish;
			end
		end
	end
endmodule
