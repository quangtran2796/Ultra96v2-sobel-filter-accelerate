//
// Generated by Bluespec Compiler (build e76ca21)
//
// On Fri Jan 15 10:49:21 CET 2021
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

module mkTestbench(CLK,
		   RST_N);
  input  CLK;
  input  RST_N;

  // inlined wires
  wire start_wire$whas, state_set_pw$whas;

  // register running
  reg running;
  wire running$D_IN, running$EN;

  // register start_reg
  reg start_reg;
  wire start_reg$D_IN, start_reg$EN;

  // register start_reg_1
  reg start_reg_1;
  wire start_reg_1$D_IN, start_reg_1$EN;

  // register state_can_overlap
  reg state_can_overlap;
  wire state_can_overlap$D_IN, state_can_overlap$EN;

  // register state_fired
  reg state_fired;
  wire state_fired$D_IN, state_fired$EN;

  // register state_mkFSMstate
  reg [2 : 0] state_mkFSMstate;
  reg [2 : 0] state_mkFSMstate$D_IN;
  wire state_mkFSMstate$EN;

  // register testCounter
  reg [31 : 0] testCounter;
  wire [31 : 0] testCounter$D_IN;
  wire testCounter$EN;

  // ports of submodule testVec_0
  wire testVec_0$EN_go, testVec_0$RDY_go, testVec_0$done;

  // rule scheduling signals
  wire WILL_FIRE_RL_action_f_init_l20c17,
       WILL_FIRE_RL_action_l24c28,
       WILL_FIRE_RL_action_l25c26,
       WILL_FIRE_RL_fsm_start,
       WILL_FIRE_RL_idle_l20c17,
       WILL_FIRE_RL_idle_l20c17_1;

  // inputs to muxes for submodule ports
  wire [31 : 0] MUX_testCounter$write_1__VAL_1;
  wire MUX_start_reg$write_1__SEL_2, MUX_state_mkFSMstate$write_1__SEL_1;

  // remaining internal signals
  wire abort_whas_AND_abort_wget_OR_state_mkFSMstate__ETC___d71;

  // submodule testVec_0
  mkTestsMainTest testVec_0(.CLK(CLK),
			    .RST_N(RST_N),
			    .EN_go(testVec_0$EN_go),
			    .RDY_go(testVec_0$RDY_go),
			    .done(testVec_0$done),
			    .RDY_done());

  // rule RL_action_l24c28
  assign WILL_FIRE_RL_action_l24c28 =
	     testVec_0$RDY_go && testCounter == 32'd0 &&
	     (state_mkFSMstate == 3'd1 || state_mkFSMstate == 3'd4) ;

  // rule RL_action_l25c26
  assign WILL_FIRE_RL_action_l25c26 =
	     testVec_0$done && state_mkFSMstate == 3'd2 ;

  // rule RL_fsm_start
  assign WILL_FIRE_RL_fsm_start =
	     abort_whas_AND_abort_wget_OR_state_mkFSMstate__ETC___d71 &&
	     start_reg ;

  // rule RL_idle_l20c17
  assign WILL_FIRE_RL_idle_l20c17 =
	     testCounter != 32'd0 && !start_wire$whas &&
	     state_mkFSMstate == 3'd1 ;

  // rule RL_idle_l20c17_1
  assign WILL_FIRE_RL_idle_l20c17_1 =
	     testCounter != 32'd0 && !start_wire$whas &&
	     state_mkFSMstate == 3'd4 ;

  // rule RL_action_f_init_l20c17
  assign WILL_FIRE_RL_action_f_init_l20c17 =
	     start_wire$whas && state_mkFSMstate == 3'd0 ||
	     testCounter != 32'd0 && start_wire$whas &&
	     state_mkFSMstate == 3'd1 ||
	     testCounter != 32'd0 && start_wire$whas &&
	     state_mkFSMstate == 3'd4 ;

  // inputs to muxes for submodule ports
  assign MUX_start_reg$write_1__SEL_2 =
	     abort_whas_AND_abort_wget_OR_state_mkFSMstate__ETC___d71 &&
	     !start_reg &&
	     !running ;
  assign MUX_state_mkFSMstate$write_1__SEL_1 =
	     WILL_FIRE_RL_idle_l20c17_1 || WILL_FIRE_RL_idle_l20c17 ;
  assign MUX_testCounter$write_1__VAL_1 = testCounter + 32'd1 ;

  // inlined wires
  assign start_wire$whas =
	     WILL_FIRE_RL_fsm_start || start_reg_1 && !state_fired ;
  assign state_set_pw$whas =
	     WILL_FIRE_RL_idle_l20c17_1 || WILL_FIRE_RL_idle_l20c17 ||
	     state_mkFSMstate == 3'd3 ||
	     WILL_FIRE_RL_action_l25c26 ||
	     WILL_FIRE_RL_action_l24c28 ||
	     WILL_FIRE_RL_action_f_init_l20c17 ;

  // register running
  assign running$D_IN = 1'd1 ;
  assign running$EN = MUX_start_reg$write_1__SEL_2 ;

  // register start_reg
  assign start_reg$D_IN = !WILL_FIRE_RL_fsm_start ;
  assign start_reg$EN =
	     WILL_FIRE_RL_fsm_start ||
	     abort_whas_AND_abort_wget_OR_state_mkFSMstate__ETC___d71 &&
	     !start_reg &&
	     !running ;

  // register start_reg_1
  assign start_reg_1$D_IN = start_wire$whas ;
  assign start_reg_1$EN = 1'd1 ;

  // register state_can_overlap
  assign state_can_overlap$D_IN = state_set_pw$whas || state_can_overlap ;
  assign state_can_overlap$EN = 1'd1 ;

  // register state_fired
  assign state_fired$D_IN = state_set_pw$whas ;
  assign state_fired$EN = 1'd1 ;

  // register state_mkFSMstate
  always@(MUX_state_mkFSMstate$write_1__SEL_1 or
	  WILL_FIRE_RL_action_f_init_l20c17 or
	  WILL_FIRE_RL_action_l24c28 or
	  WILL_FIRE_RL_action_l25c26 or state_mkFSMstate)
  begin
    case (1'b1) // synopsys parallel_case
      MUX_state_mkFSMstate$write_1__SEL_1: state_mkFSMstate$D_IN = 3'd0;
      WILL_FIRE_RL_action_f_init_l20c17: state_mkFSMstate$D_IN = 3'd1;
      WILL_FIRE_RL_action_l24c28: state_mkFSMstate$D_IN = 3'd2;
      WILL_FIRE_RL_action_l25c26: state_mkFSMstate$D_IN = 3'd3;
      state_mkFSMstate == 3'd3: state_mkFSMstate$D_IN = 3'd4;
      default: state_mkFSMstate$D_IN = 3'b010 /* unspecified value */ ;
    endcase
  end
  assign state_mkFSMstate$EN =
	     WILL_FIRE_RL_idle_l20c17_1 || WILL_FIRE_RL_idle_l20c17 ||
	     WILL_FIRE_RL_action_f_init_l20c17 ||
	     WILL_FIRE_RL_action_l24c28 ||
	     WILL_FIRE_RL_action_l25c26 ||
	     state_mkFSMstate == 3'd3 ;

  // register testCounter
  assign testCounter$D_IN =
	     (state_mkFSMstate == 3'd3) ?
	       MUX_testCounter$write_1__VAL_1 :
	       32'd0 ;
  assign testCounter$EN =
	     state_mkFSMstate == 3'd3 || WILL_FIRE_RL_action_f_init_l20c17 ;

  // submodule testVec_0
  assign testVec_0$EN_go = WILL_FIRE_RL_action_l24c28 ;

  // remaining internal signals
  assign abort_whas_AND_abort_wget_OR_state_mkFSMstate__ETC___d71 =
	     (state_mkFSMstate == 3'd0 ||
	      testCounter != 32'd0 && state_mkFSMstate == 3'd1 ||
	      testCounter != 32'd0 && state_mkFSMstate == 3'd4) &&
	     (!start_reg_1 || state_fired) ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        running <= `BSV_ASSIGNMENT_DELAY 1'd0;
	start_reg <= `BSV_ASSIGNMENT_DELAY 1'd0;
	start_reg_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	state_can_overlap <= `BSV_ASSIGNMENT_DELAY 1'd1;
	state_fired <= `BSV_ASSIGNMENT_DELAY 1'd0;
	state_mkFSMstate <= `BSV_ASSIGNMENT_DELAY 3'd0;
	testCounter <= `BSV_ASSIGNMENT_DELAY 32'd0;
      end
    else
      begin
        if (running$EN) running <= `BSV_ASSIGNMENT_DELAY running$D_IN;
	if (start_reg$EN) start_reg <= `BSV_ASSIGNMENT_DELAY start_reg$D_IN;
	if (start_reg_1$EN)
	  start_reg_1 <= `BSV_ASSIGNMENT_DELAY start_reg_1$D_IN;
	if (state_can_overlap$EN)
	  state_can_overlap <= `BSV_ASSIGNMENT_DELAY state_can_overlap$D_IN;
	if (state_fired$EN)
	  state_fired <= `BSV_ASSIGNMENT_DELAY state_fired$D_IN;
	if (state_mkFSMstate$EN)
	  state_mkFSMstate <= `BSV_ASSIGNMENT_DELAY state_mkFSMstate$D_IN;
	if (testCounter$EN)
	  testCounter <= `BSV_ASSIGNMENT_DELAY testCounter$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    running = 1'h0;
    start_reg = 1'h0;
    start_reg_1 = 1'h0;
    state_can_overlap = 1'h0;
    state_fired = 1'h0;
    state_mkFSMstate = 3'h2;
    testCounter = 32'hAAAAAAAA;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_action_l24c28 &&
	  (WILL_FIRE_RL_action_l25c26 || state_mkFSMstate == 3'd3))
	$display("Error: \"src/Testbench.bsv\", line 24, column 28: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_action_l24c28] and\n  [RL_action_l25c26, RL_action_f_update_l20c17] ) fired in the same clock\n  cycle.\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_action_l25c26 && state_mkFSMstate == 3'd3)
	$display("Error: \"src/Testbench.bsv\", line 25, column 26: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_action_l25c26] and\n  [RL_action_f_update_l20c17] ) fired in the same clock cycle.\n");
    if (RST_N != `BSV_RESET_VALUE)
      if (running &&
	  abort_whas_AND_abort_wget_OR_state_mkFSMstate__ETC___d71 &&
	  !start_reg)
	$finish(32'd0);
    if (RST_N != `BSV_RESET_VALUE)
      if (WILL_FIRE_RL_action_f_init_l20c17 &&
	  (WILL_FIRE_RL_action_l24c28 || WILL_FIRE_RL_action_l25c26 ||
	   state_mkFSMstate == 3'd3))
	$display("Error: \"src/Testbench.bsv\", line 20, column 33: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_action_f_init_l20c17] and\n  [RL_action_l24c28, RL_action_l25c26, RL_action_f_update_l20c17] ) fired in\n  the same clock cycle.\n");
  end
  // synopsys translate_on
endmodule  // mkTestbench

