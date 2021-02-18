//
// Generated by Bluespec Compiler (build e76ca21)
//
// On Fri Jan 15 10:49:20 CET 2021
//
//
// Ports:
// Name                         I/O  size props
// RDY_go                         O     1
// done                           O     1
// RDY_done                       O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// EN_go                          I     1
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

module mkTestsMainTest(CLK,
		       RST_N,

		       EN_go,
		       RDY_go,

		       done,
		       RDY_done);
  input  CLK;
  input  RST_N;

  // action method go
  input  EN_go;
  output RDY_go;

  // value method done
  output done;
  output RDY_done;

  // signals for module outputs
  wire RDY_done, RDY_go, done;

  // inlined wires
  wire testFSM_start_wire$whas;

  // register testFSM_fired
  reg testFSM_fired;
  wire testFSM_fired$D_IN, testFSM_fired$EN;

  // register testFSM_start_reg
  reg testFSM_start_reg;
  wire testFSM_start_reg$D_IN, testFSM_start_reg$EN;

  // register testFSM_start_reg_1
  reg testFSM_start_reg_1;
  wire testFSM_start_reg_1$D_IN, testFSM_start_reg_1$EN;

  // inputs to muxes for submodule ports
  wire MUX_testFSM_start_reg$write_1__SEL_1;

  // action method go
  assign RDY_go =
	     (!testFSM_start_reg_1 || testFSM_fired) && !testFSM_start_reg ;

  // value method done
  assign done =
	     (!testFSM_start_reg_1 || testFSM_fired) && !testFSM_start_reg ;
  assign RDY_done = 1'd1 ;

  // inputs to muxes for submodule ports
  assign MUX_testFSM_start_reg$write_1__SEL_1 =
	     (!testFSM_start_reg_1 || testFSM_fired) && testFSM_start_reg ;

  // inlined wires
  assign testFSM_start_wire$whas =
	     MUX_testFSM_start_reg$write_1__SEL_1 ||
	     testFSM_start_reg_1 && !testFSM_fired ;

  // register testFSM_fired
  assign testFSM_fired$D_IN = testFSM_start_wire$whas ;
  assign testFSM_fired$EN = 1'd1 ;

  // register testFSM_start_reg
  assign testFSM_start_reg$D_IN = !MUX_testFSM_start_reg$write_1__SEL_1 ;
  assign testFSM_start_reg$EN =
	     MUX_testFSM_start_reg$write_1__SEL_1 || EN_go ;

  // register testFSM_start_reg_1
  assign testFSM_start_reg_1$D_IN = testFSM_start_wire$whas ;
  assign testFSM_start_reg_1$EN = 1'd1 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        testFSM_fired <= `BSV_ASSIGNMENT_DELAY 1'd0;
	testFSM_start_reg <= `BSV_ASSIGNMENT_DELAY 1'd0;
	testFSM_start_reg_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (testFSM_fired$EN)
	  testFSM_fired <= `BSV_ASSIGNMENT_DELAY testFSM_fired$D_IN;
	if (testFSM_start_reg$EN)
	  testFSM_start_reg <= `BSV_ASSIGNMENT_DELAY testFSM_start_reg$D_IN;
	if (testFSM_start_reg_1$EN)
	  testFSM_start_reg_1 <= `BSV_ASSIGNMENT_DELAY
	      testFSM_start_reg_1$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    testFSM_fired = 1'h0;
    testFSM_start_reg = 1'h0;
    testFSM_start_reg_1 = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (testFSM_start_wire$whas)
	$display("Hello World from the testbench.");
  end
  // synopsys translate_on
endmodule  // mkTestsMainTest
