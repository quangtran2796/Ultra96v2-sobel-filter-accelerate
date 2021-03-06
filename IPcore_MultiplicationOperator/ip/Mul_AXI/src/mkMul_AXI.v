//
// Generated by Bluespec Compiler (build e76ca21)
//
// On Wed Dec 30 13:29:32 CET 2020
//
//
// Ports:
// Name                         I/O  size props
// S00_AXI_arready                O     1
// S00_AXI_rvalid                 O     1
// S00_AXI_rdata                  O    64
// S00_AXI_rresp                  O     2
// S00_AXI_awready                O     1
// S00_AXI_wready                 O     1
// S00_AXI_bvalid                 O     1
// S00_AXI_bresp                  O     2
// aclk                           I     1 clock
// aresetn                        I     1 reset
// S00_AXI_arvalid                I     1
// S00_AXI_araddr                 I    32 reg
// S00_AXI_arprot                 I     3 reg
// S00_AXI_rready                 I     1
// S00_AXI_awvalid                I     1
// S00_AXI_awaddr                 I    32
// S00_AXI_awprot                 I     3
// S00_AXI_wvalid                 I     1
// S00_AXI_wdata                  I    64
// S00_AXI_wstrb                  I     8
// S00_AXI_bready                 I     1
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

module mkMul_AXI(aclk,
		 aresetn,

		 S00_AXI_arready,

		 S00_AXI_arvalid,

		 S00_AXI_araddr,

		 S00_AXI_arprot,

		 S00_AXI_rvalid,

		 S00_AXI_rready,

		 S00_AXI_rdata,

		 S00_AXI_rresp,

		 S00_AXI_awready,

		 S00_AXI_awvalid,

		 S00_AXI_awaddr,

		 S00_AXI_awprot,

		 S00_AXI_wready,

		 S00_AXI_wvalid,

		 S00_AXI_wdata,

		 S00_AXI_wstrb,

		 S00_AXI_bvalid,

		 S00_AXI_bready,

		 S00_AXI_bresp);
  input  aclk;
  input  aresetn;

  // value method rd_arready
  output S00_AXI_arready;

  // action method rd_parvalid
  input  S00_AXI_arvalid;

  // action method rd_paraddr
  input  [31 : 0] S00_AXI_araddr;

  // action method rd_parprot
  input  [2 : 0] S00_AXI_arprot;

  // value method rd_rvalid
  output S00_AXI_rvalid;

  // action method rd_prready
  input  S00_AXI_rready;

  // value method rd_rdata
  output [63 : 0] S00_AXI_rdata;

  // value method rd_rresp
  output [1 : 0] S00_AXI_rresp;

  // value method wr_awready
  output S00_AXI_awready;

  // action method wr_pawvalid
  input  S00_AXI_awvalid;

  // action method wr_pawaddr
  input  [31 : 0] S00_AXI_awaddr;

  // action method wr_pawprot
  input  [2 : 0] S00_AXI_awprot;

  // value method wr_wready
  output S00_AXI_wready;

  // action method wr_pwvalid
  input  S00_AXI_wvalid;

  // action method wr_pwdata
  input  [63 : 0] S00_AXI_wdata;

  // action method wr_pwstrb
  input  [7 : 0] S00_AXI_wstrb;

  // value method wr_bvalid
  output S00_AXI_bvalid;

  // action method wr_pbready
  input  S00_AXI_bready;

  // value method wr_bresp
  output [1 : 0] S00_AXI_bresp;

  // signals for module outputs
  wire [63 : 0] S00_AXI_rdata;
  wire [1 : 0] S00_AXI_bresp, S00_AXI_rresp;
  wire S00_AXI_arready,
       S00_AXI_awready,
       S00_AXI_bvalid,
       S00_AXI_rvalid,
       S00_AXI_wready;

  // inlined wires
  wire [72 : 0] writeHandler_dataIn_rv$port0__write_1,
		writeHandler_dataIn_rv$port1__read,
		writeHandler_dataIn_rv$port2__read;
  wire [35 : 0] writeHandler_addrIn_rv$port0__write_1,
		writeHandler_addrIn_rv$port1__read,
		writeHandler_addrIn_rv$port2__read;
  wire writeHandler_addrIn_rv$EN_port0__write,
       writeHandler_addrIn_rv$EN_port1__write,
       writeHandler_dataIn_rv$EN_port0__write,
       writeHandler_dataIn_rv$EN_port1__write;

  // register product
  reg [63 : 0] product;
  wire [63 : 0] product$D_IN;
  wire product$EN;

  // register readHandler_isRst_isInReset
  reg readHandler_isRst_isInReset;
  wire readHandler_isRst_isInReset$D_IN, readHandler_isRst_isInReset$EN;

  // register reg1
  reg [63 : 0] reg1;
  wire [63 : 0] reg1$D_IN;
  wire reg1$EN;

  // register reg2
  reg [63 : 0] reg2;
  wire [63 : 0] reg2$D_IN;
  wire reg2$EN;

  // register writeHandler_addrIn_rv
  reg [35 : 0] writeHandler_addrIn_rv;
  wire [35 : 0] writeHandler_addrIn_rv$D_IN;
  wire writeHandler_addrIn_rv$EN;

  // register writeHandler_dataIn_rv
  reg [72 : 0] writeHandler_dataIn_rv;
  wire [72 : 0] writeHandler_dataIn_rv$D_IN;
  wire writeHandler_dataIn_rv$EN;

  // register writeHandler_isRst_isInReset
  reg writeHandler_isRst_isInReset;
  wire writeHandler_isRst_isInReset$D_IN, writeHandler_isRst_isInReset$EN;

  // ports of submodule readHandler_in
  wire [34 : 0] readHandler_in$D_IN, readHandler_in$D_OUT;
  wire readHandler_in$CLR,
       readHandler_in$DEQ,
       readHandler_in$EMPTY_N,
       readHandler_in$ENQ,
       readHandler_in$FULL_N;

  // ports of submodule readHandler_out
  wire [65 : 0] readHandler_out$D_IN, readHandler_out$D_OUT;
  wire readHandler_out$CLR,
       readHandler_out$DEQ,
       readHandler_out$EMPTY_N,
       readHandler_out$ENQ,
       readHandler_out$FULL_N;

  // ports of submodule writeHandler_in
  wire [106 : 0] writeHandler_in$D_IN, writeHandler_in$D_OUT;
  wire writeHandler_in$CLR,
       writeHandler_in$DEQ,
       writeHandler_in$EMPTY_N,
       writeHandler_in$ENQ,
       writeHandler_in$FULL_N;

  // ports of submodule writeHandler_out
  wire [1 : 0] writeHandler_out$D_IN, writeHandler_out$D_OUT;
  wire writeHandler_out$CLR,
       writeHandler_out$DEQ,
       writeHandler_out$EMPTY_N,
       writeHandler_out$ENQ,
       writeHandler_out$FULL_N;

  // rule scheduling signals
  wire WILL_FIRE_RL_write_AXI;

  // remaining internal signals
  reg [63 : 0] CASE_readHandler_inD_OUT_BITS_9_TO_3_0_reg1_8_ETC__q1;
  wire [127 : 0] reg1_1_MUL_reg2_2___d86;

  // value method rd_arready
  assign S00_AXI_arready =
	     !readHandler_isRst_isInReset && readHandler_in$FULL_N ;

  // value method rd_rvalid
  assign S00_AXI_rvalid =
	     !readHandler_isRst_isInReset && readHandler_out$EMPTY_N ;

  // value method rd_rdata
  assign S00_AXI_rdata =
	     readHandler_out$EMPTY_N ? readHandler_out$D_OUT[65:2] : 64'd0 ;

  // value method rd_rresp
  assign S00_AXI_rresp =
	     readHandler_out$EMPTY_N ? readHandler_out$D_OUT[1:0] : 2'd0 ;

  // value method wr_awready
  assign S00_AXI_awready =
	     !writeHandler_isRst_isInReset && !writeHandler_addrIn_rv[35] ;

  // value method wr_wready
  assign S00_AXI_wready =
	     !writeHandler_isRst_isInReset && !writeHandler_dataIn_rv[72] ;

  // value method wr_bvalid
  assign S00_AXI_bvalid =
	     !writeHandler_isRst_isInReset && writeHandler_out$EMPTY_N ;

  // value method wr_bresp
  assign S00_AXI_bresp =
	     writeHandler_out$EMPTY_N ? writeHandler_out$D_OUT : 2'd0 ;

  // submodule readHandler_in
  FIFO2 #(.width(32'd35), .guarded(32'd1)) readHandler_in(.RST(aresetn),
							  .CLK(aclk),
							  .D_IN(readHandler_in$D_IN),
							  .ENQ(readHandler_in$ENQ),
							  .DEQ(readHandler_in$DEQ),
							  .CLR(readHandler_in$CLR),
							  .D_OUT(readHandler_in$D_OUT),
							  .FULL_N(readHandler_in$FULL_N),
							  .EMPTY_N(readHandler_in$EMPTY_N));

  // submodule readHandler_out
  FIFO2 #(.width(32'd66), .guarded(32'd1)) readHandler_out(.RST(aresetn),
							   .CLK(aclk),
							   .D_IN(readHandler_out$D_IN),
							   .ENQ(readHandler_out$ENQ),
							   .DEQ(readHandler_out$DEQ),
							   .CLR(readHandler_out$CLR),
							   .D_OUT(readHandler_out$D_OUT),
							   .FULL_N(readHandler_out$FULL_N),
							   .EMPTY_N(readHandler_out$EMPTY_N));

  // submodule writeHandler_in
  FIFO2 #(.width(32'd107), .guarded(32'd1)) writeHandler_in(.RST(aresetn),
							    .CLK(aclk),
							    .D_IN(writeHandler_in$D_IN),
							    .ENQ(writeHandler_in$ENQ),
							    .DEQ(writeHandler_in$DEQ),
							    .CLR(writeHandler_in$CLR),
							    .D_OUT(writeHandler_in$D_OUT),
							    .FULL_N(writeHandler_in$FULL_N),
							    .EMPTY_N(writeHandler_in$EMPTY_N));

  // submodule writeHandler_out
  FIFO2 #(.width(32'd2), .guarded(32'd1)) writeHandler_out(.RST(aresetn),
							   .CLK(aclk),
							   .D_IN(writeHandler_out$D_IN),
							   .ENQ(writeHandler_out$ENQ),
							   .DEQ(writeHandler_out$DEQ),
							   .CLR(writeHandler_out$CLR),
							   .D_OUT(writeHandler_out$D_OUT),
							   .FULL_N(writeHandler_out$FULL_N),
							   .EMPTY_N(writeHandler_out$EMPTY_N));

  // rule RL_write_AXI
  assign WILL_FIRE_RL_write_AXI =
	     writeHandler_in$EMPTY_N && writeHandler_out$FULL_N ;

  // inlined wires
  assign writeHandler_addrIn_rv$EN_port0__write =
	     !writeHandler_addrIn_rv[35] && !writeHandler_isRst_isInReset &&
	     S00_AXI_awvalid ;
  assign writeHandler_addrIn_rv$port0__write_1 =
	     { 1'd1, S00_AXI_awaddr, S00_AXI_awprot } ;
  assign writeHandler_addrIn_rv$port1__read =
	     writeHandler_addrIn_rv$EN_port0__write ?
	       writeHandler_addrIn_rv$port0__write_1 :
	       writeHandler_addrIn_rv ;
  assign writeHandler_addrIn_rv$EN_port1__write =
	     writeHandler_addrIn_rv$port1__read[35] &&
	     writeHandler_dataIn_rv$port1__read[72] &&
	     writeHandler_in$FULL_N ;
  assign writeHandler_addrIn_rv$port2__read =
	     writeHandler_addrIn_rv$EN_port1__write ?
	       36'h2AAAAAAAA :
	       writeHandler_addrIn_rv$port1__read ;
  assign writeHandler_dataIn_rv$EN_port0__write =
	     !writeHandler_dataIn_rv[72] && !writeHandler_isRst_isInReset &&
	     S00_AXI_wvalid ;
  assign writeHandler_dataIn_rv$port0__write_1 =
	     { 1'd1, S00_AXI_wdata, S00_AXI_wstrb } ;
  assign writeHandler_dataIn_rv$port1__read =
	     writeHandler_dataIn_rv$EN_port0__write ?
	       writeHandler_dataIn_rv$port0__write_1 :
	       writeHandler_dataIn_rv ;
  assign writeHandler_dataIn_rv$EN_port1__write =
	     writeHandler_addrIn_rv$port1__read[35] &&
	     writeHandler_dataIn_rv$port1__read[72] &&
	     writeHandler_in$FULL_N ;
  assign writeHandler_dataIn_rv$port2__read =
	     writeHandler_dataIn_rv$EN_port1__write ?
	       73'h0AAAAAAAAAAAAAAAAAA :
	       writeHandler_dataIn_rv$port1__read ;

  // register product
  assign product$D_IN = reg1_1_MUL_reg2_2___d86[63:0] ;
  assign product$EN = 1'd1 ;

  // register readHandler_isRst_isInReset
  assign readHandler_isRst_isInReset$D_IN = 1'd0 ;
  assign readHandler_isRst_isInReset$EN = readHandler_isRst_isInReset ;

  // register reg1
  assign reg1$D_IN = writeHandler_in$D_OUT[74:11] ;
  assign reg1$EN =
	     WILL_FIRE_RL_write_AXI && writeHandler_in$D_OUT[81:75] == 7'd0 ;

  // register reg2
  assign reg2$D_IN = writeHandler_in$D_OUT[74:11] ;
  assign reg2$EN =
	     WILL_FIRE_RL_write_AXI && writeHandler_in$D_OUT[81:75] == 7'd8 ;

  // register writeHandler_addrIn_rv
  assign writeHandler_addrIn_rv$D_IN = writeHandler_addrIn_rv$port2__read ;
  assign writeHandler_addrIn_rv$EN = 1'b1 ;

  // register writeHandler_dataIn_rv
  assign writeHandler_dataIn_rv$D_IN = writeHandler_dataIn_rv$port2__read ;
  assign writeHandler_dataIn_rv$EN = 1'b1 ;

  // register writeHandler_isRst_isInReset
  assign writeHandler_isRst_isInReset$D_IN = 1'd0 ;
  assign writeHandler_isRst_isInReset$EN = writeHandler_isRst_isInReset ;

  // submodule readHandler_in
  assign readHandler_in$D_IN = { S00_AXI_araddr, S00_AXI_arprot } ;
  assign readHandler_in$ENQ =
	     readHandler_in$FULL_N && !readHandler_isRst_isInReset &&
	     S00_AXI_arvalid ;
  assign readHandler_in$DEQ =
	     readHandler_in$EMPTY_N && readHandler_out$FULL_N ;
  assign readHandler_in$CLR = 1'b0 ;

  // submodule readHandler_out
  assign readHandler_out$D_IN =
	     { CASE_readHandler_inD_OUT_BITS_9_TO_3_0_reg1_8_ETC__q1, 2'd0 } ;
  assign readHandler_out$ENQ =
	     readHandler_in$EMPTY_N && readHandler_out$FULL_N &&
	     (readHandler_in$D_OUT[9:3] == 7'd0 ||
	      readHandler_in$D_OUT[9:3] == 7'd8 ||
	      readHandler_in$D_OUT[9:3] == 7'd16) ;
  assign readHandler_out$DEQ =
	     readHandler_out$EMPTY_N && !readHandler_isRst_isInReset &&
	     S00_AXI_rready ;
  assign readHandler_out$CLR = 1'b0 ;

  // submodule writeHandler_in
  assign writeHandler_in$D_IN =
	     { writeHandler_addrIn_rv$port1__read[34:3],
	       writeHandler_dataIn_rv$port1__read[71:0],
	       writeHandler_addrIn_rv$port1__read[2:0] } ;
  assign writeHandler_in$ENQ =
	     writeHandler_addrIn_rv$port1__read[35] &&
	     writeHandler_dataIn_rv$port1__read[72] &&
	     writeHandler_in$FULL_N ;
  assign writeHandler_in$DEQ = WILL_FIRE_RL_write_AXI ;
  assign writeHandler_in$CLR = 1'b0 ;

  // submodule writeHandler_out
  assign writeHandler_out$D_IN = 2'd0 ;
  assign writeHandler_out$ENQ =
	     WILL_FIRE_RL_write_AXI &&
	     (writeHandler_in$D_OUT[81:75] == 7'd0 ||
	      writeHandler_in$D_OUT[81:75] == 7'd8) ;
  assign writeHandler_out$DEQ =
	     writeHandler_out$EMPTY_N && !writeHandler_isRst_isInReset &&
	     S00_AXI_bready ;
  assign writeHandler_out$CLR = 1'b0 ;

  // remaining internal signals
  assign reg1_1_MUL_reg2_2___d86 = reg1 * reg2 ;
  always@(readHandler_in$D_OUT or product or reg1 or reg2)
  begin
    case (readHandler_in$D_OUT[9:3])
      7'd0: CASE_readHandler_inD_OUT_BITS_9_TO_3_0_reg1_8_ETC__q1 = reg1;
      7'd8: CASE_readHandler_inD_OUT_BITS_9_TO_3_0_reg1_8_ETC__q1 = reg2;
      default: CASE_readHandler_inD_OUT_BITS_9_TO_3_0_reg1_8_ETC__q1 =
		   product;
    endcase
  end

  // handling of inlined registers

  always@(posedge aclk)
  begin
    if (aresetn == `BSV_RESET_VALUE)
      begin
        product <= `BSV_ASSIGNMENT_DELAY 64'd0;
	reg1 <= `BSV_ASSIGNMENT_DELAY 64'd0;
	reg2 <= `BSV_ASSIGNMENT_DELAY 64'd0;
	writeHandler_addrIn_rv <= `BSV_ASSIGNMENT_DELAY 36'h2AAAAAAAA;
	writeHandler_dataIn_rv <= `BSV_ASSIGNMENT_DELAY
	    73'h0AAAAAAAAAAAAAAAAAA;
      end
    else
      begin
        if (product$EN) product <= `BSV_ASSIGNMENT_DELAY product$D_IN;
	if (reg1$EN) reg1 <= `BSV_ASSIGNMENT_DELAY reg1$D_IN;
	if (reg2$EN) reg2 <= `BSV_ASSIGNMENT_DELAY reg2$D_IN;
	if (writeHandler_addrIn_rv$EN)
	  writeHandler_addrIn_rv <= `BSV_ASSIGNMENT_DELAY
	      writeHandler_addrIn_rv$D_IN;
	if (writeHandler_dataIn_rv$EN)
	  writeHandler_dataIn_rv <= `BSV_ASSIGNMENT_DELAY
	      writeHandler_dataIn_rv$D_IN;
      end
  end

  always@(posedge aclk or `BSV_RESET_EDGE aresetn)
  if (aresetn == `BSV_RESET_VALUE)
    begin
      readHandler_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
      writeHandler_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
    end
  else
    begin
      if (readHandler_isRst_isInReset$EN)
	readHandler_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY
	    readHandler_isRst_isInReset$D_IN;
      if (writeHandler_isRst_isInReset$EN)
	writeHandler_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY
	    writeHandler_isRst_isInReset$D_IN;
    end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    product = 64'hAAAAAAAAAAAAAAAA;
    readHandler_isRst_isInReset = 1'h0;
    reg1 = 64'hAAAAAAAAAAAAAAAA;
    reg2 = 64'hAAAAAAAAAAAAAAAA;
    writeHandler_addrIn_rv = 36'hAAAAAAAAA;
    writeHandler_dataIn_rv = 73'h0AAAAAAAAAAAAAAAAAA;
    writeHandler_isRst_isInReset = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkMul_AXI

