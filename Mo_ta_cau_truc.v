module demux1_4_cautruc(
    input I,
    input [1:0] sel,
    output Y0,
    output Y1,
    output Y2,
    output Y3
    );
	 
	wire s0_bar, s1_bar;

  // NOT gates for select lines
  not g1 (s0_bar, sel[0]);
  not g2 (s1_bar, sel[1]);

  // AND gates
  and g3 (Y0, I, s0_bar, s1_bar);
  and g4 (Y1, I, sel[0], s1_bar);
  and g5 (Y2, I, s0_bar, sel[1]);
  and g6 (Y3, I, sel[0], sel[1]);

endmodule
