//
// Generated by Bluespec Compiler (build 00185f79)
//
// On Thu Apr  8 10:49:43 IST 2021
//
//
// Ports:
// Name                         I/O  size props
// CLK                            I     1 clock
// RST_N                          I     1 reset
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkTb(CLK,
	    RST_N);
  input  CLK;
  input  RST_N;

  // ports of submodule ifc
  wire [31 : 0] ifc$ans,
		ifc$ans_a,
		ifc$ans_b,
		ifc$ans_c,
		ifc$the_answer,
		ifc$the_answer_x,
		ifc$the_answer_y,
		ifc$the_answer_z;

  // submodule ifc
  mkModuleDeepThought ifc(.CLK(CLK),
			  .RST_N(RST_N),
			  .ans_a(ifc$ans_a),
			  .ans_b(ifc$ans_b),
			  .ans_c(ifc$ans_c),
			  .the_answer_x(ifc$the_answer_x),
			  .the_answer_y(ifc$the_answer_y),
			  .the_answer_z(ifc$the_answer_z),
			  .the_answer(ifc$the_answer),
			  .RDY_the_answer(),
			  .ans(ifc$ans),
			  .RDY_ans());

  // submodule ifc
  assign ifc$ans_a = 32'd10 ;
  assign ifc$ans_b = 32'd15 ;
  assign ifc$ans_c = 32'd17 ;
  assign ifc$the_answer_x = 32'd10 ;
  assign ifc$the_answer_y = 32'd15 ;
  assign ifc$the_answer_z = 32'd17 ;

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    $display("Hello World! The answer is: %0d", $signed(ifc$the_answer));
    $display("Hello World! The answer is: %0d", $signed(ifc$ans));
    $finish(32'd0);
  end
  // synopsys translate_on
endmodule  // mkTb

