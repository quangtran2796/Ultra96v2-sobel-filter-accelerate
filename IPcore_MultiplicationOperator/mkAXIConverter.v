//
// Generated by Bluespec Compiler (build 503820f)
//
// On Sun Dec 27 19:24:34 UTC 2020
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
// M00_AXI_arvalid                O     1
// M00_AXI_araddr                 O    64
// M00_AXI_arprot                 O     3
// M00_AXI_rready                 O     1
// M00_AXI_awvalid                O     1
// M00_AXI_awaddr                 O    64
// M00_AXI_awprot                 O     3
// M00_AXI_wvalid                 O     1
// M00_AXI_wdata                  O    64
// M00_AXI_wstrb                  O     8
// M00_AXI_bready                 O     1
// aclk                           I     1 clock
// aresetn                        I     1 reset
// S00_AXI_arvalid                I     1
// S00_AXI_araddr                 I    64 reg
// S00_AXI_arprot                 I     3 reg
// S00_AXI_rready                 I     1
// S00_AXI_awvalid                I     1
// S00_AXI_awaddr                 I    64
// S00_AXI_awprot                 I     3
// S00_AXI_wvalid                 I     1
// S00_AXI_wdata                  I    64
// S00_AXI_wstrb                  I     8
// S00_AXI_bready                 I     1
// M00_AXI_arready                I     1
// M00_AXI_rvalid                 I     1
// M00_AXI_rdata                  I    64 reg
// M00_AXI_rresp                  I     2 reg
// M00_AXI_awready                I     1
// M00_AXI_wready                 I     1
// M00_AXI_bvalid                 I     1
// M00_AXI_bresp                  I     2 reg
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

module mkAXIConverter(aclk,
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

		      S00_AXI_bresp,

		      M00_AXI_arvalid,

		      M00_AXI_arready,

		      M00_AXI_araddr,

		      M00_AXI_arprot,

		      M00_AXI_rready,

		      M00_AXI_rvalid,

		      M00_AXI_rdata,

		      M00_AXI_rresp,

		      M00_AXI_awready,

		      M00_AXI_awvalid,

		      M00_AXI_awaddr,

		      M00_AXI_awprot,

		      M00_AXI_wready,

		      M00_AXI_wvalid,

		      M00_AXI_wdata,

		      M00_AXI_wstrb,

		      M00_AXI_bvalid,

		      M00_AXI_bready,

		      M00_AXI_bresp);
  input  aclk;
  input  aresetn;

  // value method slave_read_fab_arready
  output S00_AXI_arready;

  // action method slave_read_fab_parvalid
  input  S00_AXI_arvalid;

  // action method slave_read_fab_paraddr
  input  [63 : 0] S00_AXI_araddr;

  // action method slave_read_fab_parprot
  input  [2 : 0] S00_AXI_arprot;

  // value method slave_read_fab_rvalid
  output S00_AXI_rvalid;

  // action method slave_read_fab_prready
  input  S00_AXI_rready;

  // value method slave_read_fab_rdata
  output [63 : 0] S00_AXI_rdata;

  // value method slave_read_fab_rresp
  output [1 : 0] S00_AXI_rresp;

  // value method slave_write_fab_awready
  output S00_AXI_awready;

  // action method slave_write_fab_pawvalid
  input  S00_AXI_awvalid;

  // action method slave_write_fab_pawaddr
  input  [63 : 0] S00_AXI_awaddr;

  // action method slave_write_fab_pawprot
  input  [2 : 0] S00_AXI_awprot;

  // value method slave_write_fab_wready
  output S00_AXI_wready;

  // action method slave_write_fab_pwvalid
  input  S00_AXI_wvalid;

  // action method slave_write_fab_pwdata
  input  [63 : 0] S00_AXI_wdata;

  // action method slave_write_fab_pwstrb
  input  [7 : 0] S00_AXI_wstrb;

  // value method slave_write_fab_bvalid
  output S00_AXI_bvalid;

  // action method slave_write_fab_pbready
  input  S00_AXI_bready;

  // value method slave_write_fab_bresp
  output [1 : 0] S00_AXI_bresp;

  // value method master_read_fab_arvalid
  output M00_AXI_arvalid;

  // action method master_read_fab_parready
  input  M00_AXI_arready;

  // value method master_read_fab_araddr
  output [63 : 0] M00_AXI_araddr;

  // value method master_read_fab_arprot
  output [2 : 0] M00_AXI_arprot;

  // value method master_read_fab_rready
  output M00_AXI_rready;

  // action method master_read_fab_prvalid
  input  M00_AXI_rvalid;

  // action method master_read_fab_prdata
  input  [63 : 0] M00_AXI_rdata;

  // action method master_read_fab_prresp
  input  [1 : 0] M00_AXI_rresp;

  // action method master_write_fab_pawready
  input  M00_AXI_awready;

  // value method master_write_fab_awvalid
  output M00_AXI_awvalid;

  // value method master_write_fab_awaddr
  output [63 : 0] M00_AXI_awaddr;

  // value method master_write_fab_awprot
  output [2 : 0] M00_AXI_awprot;

  // action method master_write_fab_pwready
  input  M00_AXI_wready;

  // value method master_write_fab_wvalid
  output M00_AXI_wvalid;

  // value method master_write_fab_wdata
  output [63 : 0] M00_AXI_wdata;

  // value method master_write_fab_wstrb
  output [7 : 0] M00_AXI_wstrb;

  // action method master_write_fab_pbvalid
  input  M00_AXI_bvalid;

  // value method master_write_fab_bready
  output M00_AXI_bready;

  // action method master_write_fab_pbresp
  input  [1 : 0] M00_AXI_bresp;

  // signals for module outputs
  wire [63 : 0] M00_AXI_araddr, M00_AXI_awaddr, M00_AXI_wdata, S00_AXI_rdata;
  wire [7 : 0] M00_AXI_wstrb;
  wire [2 : 0] M00_AXI_arprot, M00_AXI_awprot;
  wire [1 : 0] S00_AXI_bresp, S00_AXI_rresp;
  wire M00_AXI_arvalid,
       M00_AXI_awvalid,
       M00_AXI_bready,
       M00_AXI_rready,
       M00_AXI_wvalid,
       S00_AXI_arready,
       S00_AXI_awready,
       S00_AXI_bvalid,
       S00_AXI_rvalid,
       S00_AXI_wready;

  // inlined wires
  wire [72 : 0] master_write_dataOut_rv$port0__write_1,
		master_write_dataOut_rv$port1__read,
		master_write_dataOut_rv$port2__read,
		slave_write_dataIn_rv$port0__write_1,
		slave_write_dataIn_rv$port1__read,
		slave_write_dataIn_rv$port2__read;
  wire [67 : 0] master_write_addrOut_rv$port0__write_1,
		master_write_addrOut_rv$port1__read,
		master_write_addrOut_rv$port2__read,
		slave_write_addrIn_rv$port0__write_1,
		slave_write_addrIn_rv$port1__read,
		slave_write_addrIn_rv$port2__read;
  wire master_write_addrOut_rv$EN_port0__write,
       master_write_addrOut_rv$EN_port1__write,
       master_write_dataOut_rv$EN_port0__write,
       master_write_dataOut_rv$EN_port1__write,
       slave_write_addrIn_rv$EN_port0__write,
       slave_write_addrIn_rv$EN_port1__write,
       slave_write_dataIn_rv$EN_port0__write,
       slave_write_dataIn_rv$EN_port1__write;

  // register address_image_1
  reg [63 : 0] address_image_1;
  wire [63 : 0] address_image_1$D_IN;
  wire address_image_1$EN;

  // register address_image_2
  reg [63 : 0] address_image_2;
  wire [63 : 0] address_image_2$D_IN;
  wire address_image_2$EN;

  // register conversion_finished
  reg [63 : 0] conversion_finished;
  wire [63 : 0] conversion_finished$D_IN;
  wire conversion_finished$EN;

  // register converting_flag
  reg converting_flag;
  wire converting_flag$D_IN, converting_flag$EN;

  // register ddr_read_count
  reg [63 : 0] ddr_read_count;
  wire [63 : 0] ddr_read_count$D_IN;
  wire ddr_read_count$EN;

  // register ddr_write_count
  reg [63 : 0] ddr_write_count;
  wire [63 : 0] ddr_write_count$D_IN;
  wire ddr_write_count$EN;

  // register gray_data
  reg [8 : 0] gray_data;
  wire [8 : 0] gray_data$D_IN;
  wire gray_data$EN;

  // register image_size
  reg [63 : 0] image_size;
  wire [63 : 0] image_size$D_IN;
  wire image_size$EN;

  // register master_read_isRst_isInReset
  reg master_read_isRst_isInReset;
  wire master_read_isRst_isInReset$D_IN, master_read_isRst_isInReset$EN;

  // register master_write_addrOut_rv
  reg [67 : 0] master_write_addrOut_rv;
  wire [67 : 0] master_write_addrOut_rv$D_IN;
  wire master_write_addrOut_rv$EN;

  // register master_write_dataOut_rv
  reg [72 : 0] master_write_dataOut_rv;
  wire [72 : 0] master_write_dataOut_rv$D_IN;
  wire master_write_dataOut_rv$EN;

  // register master_write_isRst_isInReset
  reg master_write_isRst_isInReset;
  wire master_write_isRst_isInReset$D_IN, master_write_isRst_isInReset$EN;

  // register slave_read_isRst_isInReset
  reg slave_read_isRst_isInReset;
  wire slave_read_isRst_isInReset$D_IN, slave_read_isRst_isInReset$EN;

  // register slave_write_addrIn_rv
  reg [67 : 0] slave_write_addrIn_rv;
  wire [67 : 0] slave_write_addrIn_rv$D_IN;
  wire slave_write_addrIn_rv$EN;

  // register slave_write_dataIn_rv
  reg [72 : 0] slave_write_dataIn_rv;
  wire [72 : 0] slave_write_dataIn_rv$D_IN;
  wire slave_write_dataIn_rv$EN;

  // register slave_write_isRst_isInReset
  reg slave_write_isRst_isInReset;
  wire slave_write_isRst_isInReset$D_IN, slave_write_isRst_isInReset$EN;

  // register start
  reg [63 : 0] start;
  wire [63 : 0] start$D_IN;
  wire start$EN;

  // register start_write_request
  reg start_write_request;
  wire start_write_request$D_IN, start_write_request$EN;

  // ports of submodule buffer
  wire [63 : 0] buffer$D_IN;
  wire buffer$CLR, buffer$DEQ, buffer$EMPTY_N, buffer$ENQ, buffer$FULL_N;

  // ports of submodule master_read_in
  wire [66 : 0] master_read_in$D_IN, master_read_in$D_OUT;
  wire master_read_in$CLR,
       master_read_in$DEQ,
       master_read_in$EMPTY_N,
       master_read_in$ENQ,
       master_read_in$FULL_N;

  // ports of submodule master_read_out
  wire [65 : 0] master_read_out$D_IN, master_read_out$D_OUT;
  wire master_read_out$CLR,
       master_read_out$DEQ,
       master_read_out$EMPTY_N,
       master_read_out$ENQ,
       master_read_out$FULL_N;

  // ports of submodule master_write_in
  wire [138 : 0] master_write_in$D_IN, master_write_in$D_OUT;
  wire master_write_in$CLR,
       master_write_in$DEQ,
       master_write_in$EMPTY_N,
       master_write_in$ENQ,
       master_write_in$FULL_N;

  // ports of submodule master_write_out
  wire [1 : 0] master_write_out$D_IN;
  wire master_write_out$CLR,
       master_write_out$DEQ,
       master_write_out$ENQ,
       master_write_out$FULL_N;

  // ports of submodule slave_read_in
  wire [66 : 0] slave_read_in$D_IN, slave_read_in$D_OUT;
  wire slave_read_in$CLR,
       slave_read_in$DEQ,
       slave_read_in$EMPTY_N,
       slave_read_in$ENQ,
       slave_read_in$FULL_N;

  // ports of submodule slave_read_out
  wire [65 : 0] slave_read_out$D_IN, slave_read_out$D_OUT;
  wire slave_read_out$CLR,
       slave_read_out$DEQ,
       slave_read_out$EMPTY_N,
       slave_read_out$ENQ,
       slave_read_out$FULL_N;

  // ports of submodule slave_write_in
  wire [138 : 0] slave_write_in$D_IN, slave_write_in$D_OUT;
  wire slave_write_in$CLR,
       slave_write_in$DEQ,
       slave_write_in$EMPTY_N,
       slave_write_in$ENQ,
       slave_write_in$FULL_N;

  // ports of submodule slave_write_out
  wire [1 : 0] slave_write_out$D_IN, slave_write_out$D_OUT;
  wire slave_write_out$CLR,
       slave_write_out$DEQ,
       slave_write_out$EMPTY_N,
       slave_write_out$ENQ,
       slave_write_out$FULL_N;

  // rule scheduling signals
  wire WILL_FIRE_RL_convertRGB2Gray,
       WILL_FIRE_RL_handleWriteRequest,
       WILL_FIRE_RL_writeRequest;

  // inputs to muxes for submodule ports
  wire MUX_conversion_finished$write_1__SEL_1,
       MUX_converting_flag$write_1__SEL_2;

  // remaining internal signals
  reg [63 : 0] IF_slave_read_in_first__22_BITS_8_TO_3_23_EQ_0_ETC___d141;
  wire [63 : 0] addr__h6339, addr__h6644, x__h6455, x__h6792;

  // value method slave_read_fab_arready
  assign S00_AXI_arready =
	     !slave_read_isRst_isInReset && slave_read_in$FULL_N ;

  // value method slave_read_fab_rvalid
  assign S00_AXI_rvalid =
	     !slave_read_isRst_isInReset && slave_read_out$EMPTY_N ;

  // value method slave_read_fab_rdata
  assign S00_AXI_rdata =
	     slave_read_out$EMPTY_N ? slave_read_out$D_OUT[65:2] : 64'd0 ;

  // value method slave_read_fab_rresp
  assign S00_AXI_rresp =
	     slave_read_out$EMPTY_N ? slave_read_out$D_OUT[1:0] : 2'd0 ;

  // value method slave_write_fab_awready
  assign S00_AXI_awready =
	     !slave_write_isRst_isInReset && !slave_write_addrIn_rv[67] ;

  // value method slave_write_fab_wready
  assign S00_AXI_wready =
	     !slave_write_isRst_isInReset && !slave_write_dataIn_rv[72] ;

  // value method slave_write_fab_bvalid
  assign S00_AXI_bvalid =
	     !slave_write_isRst_isInReset && slave_write_out$EMPTY_N ;

  // value method slave_write_fab_bresp
  assign S00_AXI_bresp =
	     slave_write_out$EMPTY_N ? slave_write_out$D_OUT : 2'd0 ;

  // value method master_read_fab_arvalid
  assign M00_AXI_arvalid =
	     !master_read_isRst_isInReset && master_read_in$EMPTY_N ;

  // value method master_read_fab_araddr
  assign M00_AXI_araddr =
	     master_read_in$EMPTY_N ? master_read_in$D_OUT[66:3] : 64'd0 ;

  // value method master_read_fab_arprot
  assign M00_AXI_arprot =
	     master_read_in$EMPTY_N ? master_read_in$D_OUT[2:0] : 3'd0 ;

  // value method master_read_fab_rready
  assign M00_AXI_rready =
	     !master_read_isRst_isInReset && master_read_out$FULL_N ;

  // value method master_write_fab_awvalid
  assign M00_AXI_awvalid =
	     !master_write_isRst_isInReset &&
	     master_write_addrOut_rv$port1__read[67] ;

  // value method master_write_fab_awaddr
  assign M00_AXI_awaddr =
	     master_write_addrOut_rv$port1__read[67] ?
	       master_write_addrOut_rv$port1__read[66:3] :
	       64'd0 ;

  // value method master_write_fab_awprot
  assign M00_AXI_awprot =
	     master_write_addrOut_rv$port1__read[67] ?
	       master_write_addrOut_rv$port1__read[2:0] :
	       3'd0 ;

  // value method master_write_fab_wvalid
  assign M00_AXI_wvalid =
	     !master_write_isRst_isInReset &&
	     master_write_dataOut_rv$port1__read[72] ;

  // value method master_write_fab_wdata
  assign M00_AXI_wdata =
	     master_write_dataOut_rv$port1__read[72] ?
	       master_write_dataOut_rv$port1__read[71:8] :
	       64'd0 ;

  // value method master_write_fab_wstrb
  assign M00_AXI_wstrb =
	     master_write_dataOut_rv$port1__read[72] ?
	       master_write_dataOut_rv$port1__read[7:0] :
	       8'd0 ;

  // value method master_write_fab_bready
  assign M00_AXI_bready =
	     !master_write_isRst_isInReset && master_write_out$FULL_N ;

  // submodule buffer
  SizedFIFO #(.p1width(32'd64),
	      .p2depth(32'd10),
	      .p3cntr_width(32'd4),
	      .guarded(32'd1)) buffer(.RST(aresetn),
				      .CLK(aclk),
				      .D_IN(buffer$D_IN),
				      .ENQ(buffer$ENQ),
				      .DEQ(buffer$DEQ),
				      .CLR(buffer$CLR),
				      .D_OUT(),
				      .FULL_N(buffer$FULL_N),
				      .EMPTY_N(buffer$EMPTY_N));

  // submodule master_read_in
  FIFO2 #(.width(32'd67), .guarded(32'd1)) master_read_in(.RST(aresetn),
							  .CLK(aclk),
							  .D_IN(master_read_in$D_IN),
							  .ENQ(master_read_in$ENQ),
							  .DEQ(master_read_in$DEQ),
							  .CLR(master_read_in$CLR),
							  .D_OUT(master_read_in$D_OUT),
							  .FULL_N(master_read_in$FULL_N),
							  .EMPTY_N(master_read_in$EMPTY_N));

  // submodule master_read_out
  FIFO2 #(.width(32'd66), .guarded(32'd1)) master_read_out(.RST(aresetn),
							   .CLK(aclk),
							   .D_IN(master_read_out$D_IN),
							   .ENQ(master_read_out$ENQ),
							   .DEQ(master_read_out$DEQ),
							   .CLR(master_read_out$CLR),
							   .D_OUT(master_read_out$D_OUT),
							   .FULL_N(master_read_out$FULL_N),
							   .EMPTY_N(master_read_out$EMPTY_N));

  // submodule master_write_in
  FIFO2 #(.width(32'd139), .guarded(32'd1)) master_write_in(.RST(aresetn),
							    .CLK(aclk),
							    .D_IN(master_write_in$D_IN),
							    .ENQ(master_write_in$ENQ),
							    .DEQ(master_write_in$DEQ),
							    .CLR(master_write_in$CLR),
							    .D_OUT(master_write_in$D_OUT),
							    .FULL_N(master_write_in$FULL_N),
							    .EMPTY_N(master_write_in$EMPTY_N));

  // submodule master_write_out
  FIFO2 #(.width(32'd2), .guarded(32'd1)) master_write_out(.RST(aresetn),
							   .CLK(aclk),
							   .D_IN(master_write_out$D_IN),
							   .ENQ(master_write_out$ENQ),
							   .DEQ(master_write_out$DEQ),
							   .CLR(master_write_out$CLR),
							   .D_OUT(),
							   .FULL_N(master_write_out$FULL_N),
							   .EMPTY_N());

  // submodule slave_read_in
  FIFO2 #(.width(32'd67), .guarded(32'd1)) slave_read_in(.RST(aresetn),
							 .CLK(aclk),
							 .D_IN(slave_read_in$D_IN),
							 .ENQ(slave_read_in$ENQ),
							 .DEQ(slave_read_in$DEQ),
							 .CLR(slave_read_in$CLR),
							 .D_OUT(slave_read_in$D_OUT),
							 .FULL_N(slave_read_in$FULL_N),
							 .EMPTY_N(slave_read_in$EMPTY_N));

  // submodule slave_read_out
  FIFO2 #(.width(32'd66), .guarded(32'd1)) slave_read_out(.RST(aresetn),
							  .CLK(aclk),
							  .D_IN(slave_read_out$D_IN),
							  .ENQ(slave_read_out$ENQ),
							  .DEQ(slave_read_out$DEQ),
							  .CLR(slave_read_out$CLR),
							  .D_OUT(slave_read_out$D_OUT),
							  .FULL_N(slave_read_out$FULL_N),
							  .EMPTY_N(slave_read_out$EMPTY_N));

  // submodule slave_write_in
  FIFO2 #(.width(32'd139), .guarded(32'd1)) slave_write_in(.RST(aresetn),
							   .CLK(aclk),
							   .D_IN(slave_write_in$D_IN),
							   .ENQ(slave_write_in$ENQ),
							   .DEQ(slave_write_in$DEQ),
							   .CLR(slave_write_in$CLR),
							   .D_OUT(slave_write_in$D_OUT),
							   .FULL_N(slave_write_in$FULL_N),
							   .EMPTY_N(slave_write_in$EMPTY_N));

  // submodule slave_write_out
  FIFO2 #(.width(32'd2), .guarded(32'd1)) slave_write_out(.RST(aresetn),
							  .CLK(aclk),
							  .D_IN(slave_write_out$D_IN),
							  .ENQ(slave_write_out$ENQ),
							  .DEQ(slave_write_out$DEQ),
							  .CLR(slave_write_out$CLR),
							  .D_OUT(slave_write_out$D_OUT),
							  .FULL_N(slave_write_out$FULL_N),
							  .EMPTY_N(slave_write_out$EMPTY_N));

  // rule RL_handleWriteRequest
  assign WILL_FIRE_RL_handleWriteRequest =
	     slave_write_in$EMPTY_N && slave_write_out$FULL_N &&
	     !start_write_request ;

  // rule RL_writeRequest
  assign WILL_FIRE_RL_writeRequest =
	     buffer$EMPTY_N && master_write_in$FULL_N &&
	     start_write_request &&
	     !WILL_FIRE_RL_convertRGB2Gray ;

  // rule RL_convertRGB2Gray
  assign WILL_FIRE_RL_convertRGB2Gray =
	     master_read_out$EMPTY_N && buffer$FULL_N ;

  // inputs to muxes for submodule ports
  assign MUX_conversion_finished$write_1__SEL_1 =
	     WILL_FIRE_RL_handleWriteRequest &&
	     slave_write_in$D_OUT[80:75] == 6'd16 ;
  assign MUX_converting_flag$write_1__SEL_2 =
	     master_read_in$FULL_N && start != 64'd0 &&
	     conversion_finished == 64'd0 &&
	     !converting_flag ;

  // inlined wires
  assign slave_write_addrIn_rv$EN_port0__write =
	     !slave_write_addrIn_rv[67] && !slave_write_isRst_isInReset &&
	     S00_AXI_awvalid ;
  assign slave_write_addrIn_rv$port0__write_1 =
	     { 1'd1, S00_AXI_awaddr, S00_AXI_awprot } ;
  assign slave_write_addrIn_rv$port1__read =
	     slave_write_addrIn_rv$EN_port0__write ?
	       slave_write_addrIn_rv$port0__write_1 :
	       slave_write_addrIn_rv ;
  assign slave_write_addrIn_rv$EN_port1__write =
	     slave_write_addrIn_rv$port1__read[67] &&
	     slave_write_dataIn_rv$port1__read[72] &&
	     slave_write_in$FULL_N ;
  assign slave_write_addrIn_rv$port2__read =
	     slave_write_addrIn_rv$EN_port1__write ?
	       68'h2AAAAAAAAAAAAAAAA :
	       slave_write_addrIn_rv$port1__read ;
  assign slave_write_dataIn_rv$EN_port0__write =
	     !slave_write_dataIn_rv[72] && !slave_write_isRst_isInReset &&
	     S00_AXI_wvalid ;
  assign slave_write_dataIn_rv$port0__write_1 =
	     { 1'd1, S00_AXI_wdata, S00_AXI_wstrb } ;
  assign slave_write_dataIn_rv$port1__read =
	     slave_write_dataIn_rv$EN_port0__write ?
	       slave_write_dataIn_rv$port0__write_1 :
	       slave_write_dataIn_rv ;
  assign slave_write_dataIn_rv$EN_port1__write =
	     slave_write_addrIn_rv$port1__read[67] &&
	     slave_write_dataIn_rv$port1__read[72] &&
	     slave_write_in$FULL_N ;
  assign slave_write_dataIn_rv$port2__read =
	     slave_write_dataIn_rv$EN_port1__write ?
	       73'h0AAAAAAAAAAAAAAAAAA :
	       slave_write_dataIn_rv$port1__read ;
  assign master_write_addrOut_rv$EN_port0__write =
	     master_write_in$EMPTY_N && !master_write_addrOut_rv[67] &&
	     !master_write_dataOut_rv[72] ;
  assign master_write_addrOut_rv$port0__write_1 =
	     { 1'd1,
	       master_write_in$D_OUT[138:75],
	       master_write_in$D_OUT[2:0] } ;
  assign master_write_addrOut_rv$port1__read =
	     master_write_addrOut_rv$EN_port0__write ?
	       master_write_addrOut_rv$port0__write_1 :
	       master_write_addrOut_rv ;
  assign master_write_addrOut_rv$EN_port1__write =
	     master_write_addrOut_rv$port1__read[67] &&
	     !master_write_isRst_isInReset &&
	     M00_AXI_awready ;
  assign master_write_addrOut_rv$port2__read =
	     master_write_addrOut_rv$EN_port1__write ?
	       68'h2AAAAAAAAAAAAAAAA :
	       master_write_addrOut_rv$port1__read ;
  assign master_write_dataOut_rv$EN_port0__write =
	     master_write_in$EMPTY_N && !master_write_addrOut_rv[67] &&
	     !master_write_dataOut_rv[72] ;
  assign master_write_dataOut_rv$port0__write_1 =
	     { 1'd1, master_write_in$D_OUT[74:3] } ;
  assign master_write_dataOut_rv$port1__read =
	     master_write_dataOut_rv$EN_port0__write ?
	       master_write_dataOut_rv$port0__write_1 :
	       master_write_dataOut_rv ;
  assign master_write_dataOut_rv$EN_port1__write =
	     master_write_dataOut_rv$port1__read[72] &&
	     !master_write_isRst_isInReset &&
	     M00_AXI_wready ;
  assign master_write_dataOut_rv$port2__read =
	     master_write_dataOut_rv$EN_port1__write ?
	       73'h0AAAAAAAAAAAAAAAAAA :
	       master_write_dataOut_rv$port1__read ;

  // register address_image_1
  assign address_image_1$D_IN = slave_write_in$D_OUT[74:11] ;
  assign address_image_1$EN =
	     WILL_FIRE_RL_handleWriteRequest &&
	     slave_write_in$D_OUT[80:75] == 6'd0 ;

  // register address_image_2
  assign address_image_2$D_IN = slave_write_in$D_OUT[74:11] ;
  assign address_image_2$EN =
	     WILL_FIRE_RL_handleWriteRequest &&
	     slave_write_in$D_OUT[80:75] == 6'd8 ;

  // register conversion_finished
  assign conversion_finished$D_IN =
	     MUX_conversion_finished$write_1__SEL_1 ? 64'd0 : 64'd1 ;
  assign conversion_finished$EN =
	     WILL_FIRE_RL_handleWriteRequest &&
	     slave_write_in$D_OUT[80:75] == 6'd16 ||
	     WILL_FIRE_RL_writeRequest && ddr_write_count == 64'd98304 ;

  // register converting_flag
  assign converting_flag$D_IN = !WILL_FIRE_RL_writeRequest ;
  assign converting_flag$EN =
	     WILL_FIRE_RL_writeRequest ||
	     master_read_in$FULL_N && start != 64'd0 &&
	     conversion_finished == 64'd0 &&
	     !converting_flag ;

  // register ddr_read_count
  assign ddr_read_count$D_IN =
	     (ddr_write_count == 64'd98304) ? 64'd0 : x__h6455 ;
  assign ddr_read_count$EN = MUX_converting_flag$write_1__SEL_2 ;

  // register ddr_write_count
  assign ddr_write_count$D_IN =
	     (ddr_write_count == 64'd98304) ? 64'd0 : x__h6792 ;
  assign ddr_write_count$EN = WILL_FIRE_RL_writeRequest ;

  // register gray_data
  assign gray_data$D_IN = 9'h0 ;
  assign gray_data$EN = 1'b0 ;

  // register image_size
  assign image_size$D_IN = slave_write_in$D_OUT[74:11] ;
  assign image_size$EN =
	     WILL_FIRE_RL_handleWriteRequest &&
	     slave_write_in$D_OUT[80:75] == 6'd32 ;

  // register master_read_isRst_isInReset
  assign master_read_isRst_isInReset$D_IN = 1'd0 ;
  assign master_read_isRst_isInReset$EN = master_read_isRst_isInReset ;

  // register master_write_addrOut_rv
  assign master_write_addrOut_rv$D_IN = master_write_addrOut_rv$port2__read ;
  assign master_write_addrOut_rv$EN = 1'b1 ;

  // register master_write_dataOut_rv
  assign master_write_dataOut_rv$D_IN = master_write_dataOut_rv$port2__read ;
  assign master_write_dataOut_rv$EN = 1'b1 ;

  // register master_write_isRst_isInReset
  assign master_write_isRst_isInReset$D_IN = 1'd0 ;
  assign master_write_isRst_isInReset$EN = master_write_isRst_isInReset ;

  // register slave_read_isRst_isInReset
  assign slave_read_isRst_isInReset$D_IN = 1'd0 ;
  assign slave_read_isRst_isInReset$EN = slave_read_isRst_isInReset ;

  // register slave_write_addrIn_rv
  assign slave_write_addrIn_rv$D_IN = slave_write_addrIn_rv$port2__read ;
  assign slave_write_addrIn_rv$EN = 1'b1 ;

  // register slave_write_dataIn_rv
  assign slave_write_dataIn_rv$D_IN = slave_write_dataIn_rv$port2__read ;
  assign slave_write_dataIn_rv$EN = 1'b1 ;

  // register slave_write_isRst_isInReset
  assign slave_write_isRst_isInReset$D_IN = 1'd0 ;
  assign slave_write_isRst_isInReset$EN = slave_write_isRst_isInReset ;

  // register start
  assign start$D_IN =
	     MUX_conversion_finished$write_1__SEL_1 ?
	       slave_write_in$D_OUT[74:11] :
	       64'd0 ;
  assign start$EN =
	     WILL_FIRE_RL_handleWriteRequest &&
	     slave_write_in$D_OUT[80:75] == 6'd16 ||
	     WILL_FIRE_RL_writeRequest && ddr_write_count == 64'd98304 ;

  // register start_write_request
  assign start_write_request$D_IN = !WILL_FIRE_RL_writeRequest ;
  assign start_write_request$EN =
	     WILL_FIRE_RL_writeRequest || WILL_FIRE_RL_convertRGB2Gray ;

  // submodule buffer
  assign buffer$D_IN = master_read_out$D_OUT[65:2] ;
  assign buffer$ENQ = WILL_FIRE_RL_convertRGB2Gray ;
  assign buffer$DEQ = WILL_FIRE_RL_writeRequest ;
  assign buffer$CLR = 1'b0 ;

  // submodule master_read_in
  assign master_read_in$D_IN = { addr__h6339, 3'd0 } ;
  assign master_read_in$ENQ = MUX_converting_flag$write_1__SEL_2 ;
  assign master_read_in$DEQ =
	     master_read_in$EMPTY_N && !master_read_isRst_isInReset &&
	     M00_AXI_arready ;
  assign master_read_in$CLR = 1'b0 ;

  // submodule master_read_out
  assign master_read_out$D_IN = { M00_AXI_rdata, M00_AXI_rresp } ;
  assign master_read_out$ENQ =
	     master_read_out$FULL_N && !master_read_isRst_isInReset &&
	     M00_AXI_rvalid ;
  assign master_read_out$DEQ = WILL_FIRE_RL_convertRGB2Gray ;
  assign master_read_out$CLR = 1'b0 ;

  // submodule master_write_in
  assign master_write_in$D_IN = { addr__h6644, 75'd24568 } ;
  assign master_write_in$ENQ = WILL_FIRE_RL_writeRequest ;
  assign master_write_in$DEQ =
	     master_write_in$EMPTY_N && !master_write_addrOut_rv[67] &&
	     !master_write_dataOut_rv[72] ;
  assign master_write_in$CLR = 1'b0 ;

  // submodule master_write_out
  assign master_write_out$D_IN = M00_AXI_bresp ;
  assign master_write_out$ENQ =
	     master_write_out$FULL_N && !master_write_isRst_isInReset &&
	     M00_AXI_bvalid ;
  assign master_write_out$DEQ = 1'b0 ;
  assign master_write_out$CLR = 1'b0 ;

  // submodule slave_read_in
  assign slave_read_in$D_IN = { S00_AXI_araddr, S00_AXI_arprot } ;
  assign slave_read_in$ENQ =
	     slave_read_in$FULL_N && !slave_read_isRst_isInReset &&
	     S00_AXI_arvalid ;
  assign slave_read_in$DEQ = slave_read_in$EMPTY_N && slave_read_out$FULL_N ;
  assign slave_read_in$CLR = 1'b0 ;

  // submodule slave_read_out
  assign slave_read_out$D_IN =
	     { IF_slave_read_in_first__22_BITS_8_TO_3_23_EQ_0_ETC___d141,
	       2'd0 } ;
  assign slave_read_out$ENQ =
	     slave_read_in$EMPTY_N && slave_read_out$FULL_N &&
	     (slave_read_in$D_OUT[8:3] == 6'd0 ||
	      slave_read_in$D_OUT[8:3] == 6'd8 ||
	      slave_read_in$D_OUT[8:3] == 6'd16 ||
	      slave_read_in$D_OUT[8:3] == 6'd24 ||
	      slave_read_in$D_OUT[8:3] == 6'd32) ;
  assign slave_read_out$DEQ =
	     slave_read_out$EMPTY_N && !slave_read_isRst_isInReset &&
	     S00_AXI_rready ;
  assign slave_read_out$CLR = 1'b0 ;

  // submodule slave_write_in
  assign slave_write_in$D_IN =
	     { slave_write_addrIn_rv$port1__read[66:3],
	       slave_write_dataIn_rv$port1__read[71:0],
	       slave_write_addrIn_rv$port1__read[2:0] } ;
  assign slave_write_in$ENQ =
	     slave_write_addrIn_rv$port1__read[67] &&
	     slave_write_dataIn_rv$port1__read[72] &&
	     slave_write_in$FULL_N ;
  assign slave_write_in$DEQ = WILL_FIRE_RL_handleWriteRequest ;
  assign slave_write_in$CLR = 1'b0 ;

  // submodule slave_write_out
  assign slave_write_out$D_IN = 2'd0 ;
  assign slave_write_out$ENQ =
	     WILL_FIRE_RL_handleWriteRequest &&
	     (slave_write_in$D_OUT[80:75] == 6'd0 ||
	      slave_write_in$D_OUT[80:75] == 6'd8 ||
	      slave_write_in$D_OUT[80:75] == 6'd16 ||
	      slave_write_in$D_OUT[80:75] == 6'd32) ;
  assign slave_write_out$DEQ =
	     slave_write_out$EMPTY_N && !slave_write_isRst_isInReset &&
	     S00_AXI_bready ;
  assign slave_write_out$CLR = 1'b0 ;

  // remaining internal signals
  assign addr__h6339 = address_image_1 + ddr_read_count ;
  assign addr__h6644 = address_image_2 + ddr_write_count ;
  assign x__h6455 = ddr_read_count + 64'd8 ;
  assign x__h6792 = ddr_write_count + 64'd8 ;
  always@(slave_read_in$D_OUT or
	  image_size or
	  address_image_1 or address_image_2 or start or conversion_finished)
  begin
    case (slave_read_in$D_OUT[8:3])
      6'd0:
	  IF_slave_read_in_first__22_BITS_8_TO_3_23_EQ_0_ETC___d141 =
	      address_image_1;
      6'd8:
	  IF_slave_read_in_first__22_BITS_8_TO_3_23_EQ_0_ETC___d141 =
	      address_image_2;
      6'd16:
	  IF_slave_read_in_first__22_BITS_8_TO_3_23_EQ_0_ETC___d141 = start;
      6'd24:
	  IF_slave_read_in_first__22_BITS_8_TO_3_23_EQ_0_ETC___d141 =
	      conversion_finished;
      default: IF_slave_read_in_first__22_BITS_8_TO_3_23_EQ_0_ETC___d141 =
		   image_size;
    endcase
  end

  // handling of inlined registers

  always@(posedge aclk)
  begin
    if (aresetn == `BSV_RESET_VALUE)
      begin
        address_image_1 <= `BSV_ASSIGNMENT_DELAY 64'd0;
	address_image_2 <= `BSV_ASSIGNMENT_DELAY 64'd0;
	conversion_finished <= `BSV_ASSIGNMENT_DELAY 64'd0;
	converting_flag <= `BSV_ASSIGNMENT_DELAY 1'd0;
	ddr_read_count <= `BSV_ASSIGNMENT_DELAY 64'd0;
	ddr_write_count <= `BSV_ASSIGNMENT_DELAY 64'd0;
	gray_data <= `BSV_ASSIGNMENT_DELAY 9'd0;
	image_size <= `BSV_ASSIGNMENT_DELAY 64'd0;
	master_write_addrOut_rv <= `BSV_ASSIGNMENT_DELAY
	    68'h2AAAAAAAAAAAAAAAA;
	master_write_dataOut_rv <= `BSV_ASSIGNMENT_DELAY
	    73'h0AAAAAAAAAAAAAAAAAA;
	slave_write_addrIn_rv <= `BSV_ASSIGNMENT_DELAY 68'h2AAAAAAAAAAAAAAAA;
	slave_write_dataIn_rv <= `BSV_ASSIGNMENT_DELAY
	    73'h0AAAAAAAAAAAAAAAAAA;
	start <= `BSV_ASSIGNMENT_DELAY 64'd0;
	start_write_request <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (address_image_1$EN)
	  address_image_1 <= `BSV_ASSIGNMENT_DELAY address_image_1$D_IN;
	if (address_image_2$EN)
	  address_image_2 <= `BSV_ASSIGNMENT_DELAY address_image_2$D_IN;
	if (conversion_finished$EN)
	  conversion_finished <= `BSV_ASSIGNMENT_DELAY
	      conversion_finished$D_IN;
	if (converting_flag$EN)
	  converting_flag <= `BSV_ASSIGNMENT_DELAY converting_flag$D_IN;
	if (ddr_read_count$EN)
	  ddr_read_count <= `BSV_ASSIGNMENT_DELAY ddr_read_count$D_IN;
	if (ddr_write_count$EN)
	  ddr_write_count <= `BSV_ASSIGNMENT_DELAY ddr_write_count$D_IN;
	if (gray_data$EN) gray_data <= `BSV_ASSIGNMENT_DELAY gray_data$D_IN;
	if (image_size$EN)
	  image_size <= `BSV_ASSIGNMENT_DELAY image_size$D_IN;
	if (master_write_addrOut_rv$EN)
	  master_write_addrOut_rv <= `BSV_ASSIGNMENT_DELAY
	      master_write_addrOut_rv$D_IN;
	if (master_write_dataOut_rv$EN)
	  master_write_dataOut_rv <= `BSV_ASSIGNMENT_DELAY
	      master_write_dataOut_rv$D_IN;
	if (slave_write_addrIn_rv$EN)
	  slave_write_addrIn_rv <= `BSV_ASSIGNMENT_DELAY
	      slave_write_addrIn_rv$D_IN;
	if (slave_write_dataIn_rv$EN)
	  slave_write_dataIn_rv <= `BSV_ASSIGNMENT_DELAY
	      slave_write_dataIn_rv$D_IN;
	if (start$EN) start <= `BSV_ASSIGNMENT_DELAY start$D_IN;
	if (start_write_request$EN)
	  start_write_request <= `BSV_ASSIGNMENT_DELAY
	      start_write_request$D_IN;
      end
  end

  always@(posedge aclk or `BSV_RESET_EDGE aresetn)
  if (aresetn == `BSV_RESET_VALUE)
    begin
      master_read_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
      master_write_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
      slave_read_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
      slave_write_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
    end
  else
    begin
      if (master_read_isRst_isInReset$EN)
	master_read_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY
	    master_read_isRst_isInReset$D_IN;
      if (master_write_isRst_isInReset$EN)
	master_write_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY
	    master_write_isRst_isInReset$D_IN;
      if (slave_read_isRst_isInReset$EN)
	slave_read_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY
	    slave_read_isRst_isInReset$D_IN;
      if (slave_write_isRst_isInReset$EN)
	slave_write_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY
	    slave_write_isRst_isInReset$D_IN;
    end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    address_image_1 = 64'hAAAAAAAAAAAAAAAA;
    address_image_2 = 64'hAAAAAAAAAAAAAAAA;
    conversion_finished = 64'hAAAAAAAAAAAAAAAA;
    converting_flag = 1'h0;
    ddr_read_count = 64'hAAAAAAAAAAAAAAAA;
    ddr_write_count = 64'hAAAAAAAAAAAAAAAA;
    gray_data = 9'h0AA;
    image_size = 64'hAAAAAAAAAAAAAAAA;
    master_read_isRst_isInReset = 1'h0;
    master_write_addrOut_rv = 68'hAAAAAAAAAAAAAAAAA;
    master_write_dataOut_rv = 73'h0AAAAAAAAAAAAAAAAAA;
    master_write_isRst_isInReset = 1'h0;
    slave_read_isRst_isInReset = 1'h0;
    slave_write_addrIn_rv = 68'hAAAAAAAAAAAAAAAAA;
    slave_write_dataIn_rv = 73'h0AAAAAAAAAAAAAAAAAA;
    slave_write_isRst_isInReset = 1'h0;
    start = 64'hAAAAAAAAAAAAAAAA;
    start_write_request = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkAXIConverter

