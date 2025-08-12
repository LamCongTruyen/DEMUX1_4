module demux1_4_hanhvi(
    input I,
    input [1:0] sel,
    output Y0,
    output Y1,
    output Y2,
    output Y3
    );
	 
assign Y0 = I & (~sel[1] & ~sel[0]);
  assign Y1 = I & (~sel[1] &  sel[0]);
  assign Y2 = I & ( sel[1] & ~sel[0]);
  assign Y3 = I & ( sel[1] &  sel[0]);

endmodule
