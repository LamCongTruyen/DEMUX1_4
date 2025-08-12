4: Chương trình testbench

module Tbdemux1_4_cautruc;

	// Inputs
	reg I;
	reg [1:0] sel;

	// Outputs
	wire Y0;
	wire Y1;
	wire Y2;
	wire Y3;

	// Instantiate the Unit Under Test (UUT)
	demux1_4_cautruc uut (
		.I(I), 
		.sel(sel), 
		.Y0(Y0), 
		.Y1(Y1), 
		.Y2(Y2), 
		.Y3(Y3)
	);

	initial begin
		// Initialize Inputs
        
		// Add stimulus here
		I = 0;
    sel = 2'b00;

    // Test sequences
    #10 I = 1; sel = 2'b00;  // Select Y0
    #10 I = 1; sel = 2'b01;  // Select Y1
    #10 I = 1; sel = 2'b10;  // Select Y2
    #10 I = 1; sel = 2'b11;  // Select Y3
    #10 I = 1; sel = 2'b00;  // Select Y0 again
    #10 $finish;
	end
      
endmodule
