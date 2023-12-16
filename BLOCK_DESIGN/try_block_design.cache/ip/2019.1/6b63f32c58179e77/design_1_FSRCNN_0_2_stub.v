// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Dec  7 22:11:06 2023
// Host        : Jiawei_Li running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FSRCNN_0_2_stub.v
// Design      : design_1_FSRCNN_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "FSRCNN,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_scalar_parameters_AWADDR, 
  s_axi_scalar_parameters_AWVALID, s_axi_scalar_parameters_AWREADY, 
  s_axi_scalar_parameters_WDATA, s_axi_scalar_parameters_WSTRB, 
  s_axi_scalar_parameters_WVALID, s_axi_scalar_parameters_WREADY, 
  s_axi_scalar_parameters_BRESP, s_axi_scalar_parameters_BVALID, 
  s_axi_scalar_parameters_BREADY, s_axi_scalar_parameters_ARADDR, 
  s_axi_scalar_parameters_ARVALID, s_axi_scalar_parameters_ARREADY, 
  s_axi_scalar_parameters_RDATA, s_axi_scalar_parameters_RRESP, 
  s_axi_scalar_parameters_RVALID, s_axi_scalar_parameters_RREADY, ap_clk, ap_rst_n, 
  stream_in_TVALID, stream_in_TREADY, stream_in_TDATA, stream_in_TKEEP, stream_in_TSTRB, 
  stream_in_TUSER, stream_in_TLAST, stream_in_TID, stream_in_TDEST, stream_out_TVALID, 
  stream_out_TREADY, stream_out_TDATA, stream_out_TKEEP, stream_out_TSTRB, 
  stream_out_TUSER, stream_out_TLAST, stream_out_TID, stream_out_TDEST)
/* synthesis syn_black_box black_box_pad_pin="s_axi_scalar_parameters_AWADDR[5:0],s_axi_scalar_parameters_AWVALID,s_axi_scalar_parameters_AWREADY,s_axi_scalar_parameters_WDATA[31:0],s_axi_scalar_parameters_WSTRB[3:0],s_axi_scalar_parameters_WVALID,s_axi_scalar_parameters_WREADY,s_axi_scalar_parameters_BRESP[1:0],s_axi_scalar_parameters_BVALID,s_axi_scalar_parameters_BREADY,s_axi_scalar_parameters_ARADDR[5:0],s_axi_scalar_parameters_ARVALID,s_axi_scalar_parameters_ARREADY,s_axi_scalar_parameters_RDATA[31:0],s_axi_scalar_parameters_RRESP[1:0],s_axi_scalar_parameters_RVALID,s_axi_scalar_parameters_RREADY,ap_clk,ap_rst_n,stream_in_TVALID,stream_in_TREADY,stream_in_TDATA[31:0],stream_in_TKEEP[3:0],stream_in_TSTRB[3:0],stream_in_TUSER[0:0],stream_in_TLAST[0:0],stream_in_TID[0:0],stream_in_TDEST[0:0],stream_out_TVALID,stream_out_TREADY,stream_out_TDATA[31:0],stream_out_TKEEP[3:0],stream_out_TSTRB[3:0],stream_out_TUSER[0:0],stream_out_TLAST[0:0],stream_out_TID[0:0],stream_out_TDEST[0:0]" */;
  input [5:0]s_axi_scalar_parameters_AWADDR;
  input s_axi_scalar_parameters_AWVALID;
  output s_axi_scalar_parameters_AWREADY;
  input [31:0]s_axi_scalar_parameters_WDATA;
  input [3:0]s_axi_scalar_parameters_WSTRB;
  input s_axi_scalar_parameters_WVALID;
  output s_axi_scalar_parameters_WREADY;
  output [1:0]s_axi_scalar_parameters_BRESP;
  output s_axi_scalar_parameters_BVALID;
  input s_axi_scalar_parameters_BREADY;
  input [5:0]s_axi_scalar_parameters_ARADDR;
  input s_axi_scalar_parameters_ARVALID;
  output s_axi_scalar_parameters_ARREADY;
  output [31:0]s_axi_scalar_parameters_RDATA;
  output [1:0]s_axi_scalar_parameters_RRESP;
  output s_axi_scalar_parameters_RVALID;
  input s_axi_scalar_parameters_RREADY;
  input ap_clk;
  input ap_rst_n;
  input stream_in_TVALID;
  output stream_in_TREADY;
  input [31:0]stream_in_TDATA;
  input [3:0]stream_in_TKEEP;
  input [3:0]stream_in_TSTRB;
  input [0:0]stream_in_TUSER;
  input [0:0]stream_in_TLAST;
  input [0:0]stream_in_TID;
  input [0:0]stream_in_TDEST;
  output stream_out_TVALID;
  input stream_out_TREADY;
  output [31:0]stream_out_TDATA;
  output [3:0]stream_out_TKEEP;
  output [3:0]stream_out_TSTRB;
  output [0:0]stream_out_TUSER;
  output [0:0]stream_out_TLAST;
  output [0:0]stream_out_TID;
  output [0:0]stream_out_TDEST;
endmodule
