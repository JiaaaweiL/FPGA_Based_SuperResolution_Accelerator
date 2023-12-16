// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:FSRCNN:1.0
// IP Revision: 2113339089

(* X_CORE_INFO = "FSRCNN,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "design_1_FSRCNN_0_8,FSRCNN,{}" *)
(* CORE_GENERATION_INFO = "design_1_FSRCNN_0_8,FSRCNN,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=FSRCNN,x_ipVersion=1.0,x_ipCoreRevision=2113339089,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_SCALAR_PARAMETERS_ADDR_WIDTH=6,C_S_AXI_SCALAR_PARAMETERS_DATA_WIDTH=32}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_FSRCNN_0_8 (
  s_axi_scalar_parameters_AWADDR,
  s_axi_scalar_parameters_AWVALID,
  s_axi_scalar_parameters_AWREADY,
  s_axi_scalar_parameters_WDATA,
  s_axi_scalar_parameters_WSTRB,
  s_axi_scalar_parameters_WVALID,
  s_axi_scalar_parameters_WREADY,
  s_axi_scalar_parameters_BRESP,
  s_axi_scalar_parameters_BVALID,
  s_axi_scalar_parameters_BREADY,
  s_axi_scalar_parameters_ARADDR,
  s_axi_scalar_parameters_ARVALID,
  s_axi_scalar_parameters_ARREADY,
  s_axi_scalar_parameters_RDATA,
  s_axi_scalar_parameters_RRESP,
  s_axi_scalar_parameters_RVALID,
  s_axi_scalar_parameters_RREADY,
  ap_clk,
  ap_rst_n,
  stream_in_TVALID,
  stream_in_TREADY,
  stream_in_TDATA,
  stream_in_TKEEP,
  stream_in_TSTRB,
  stream_in_TUSER,
  stream_in_TLAST,
  stream_in_TID,
  stream_in_TDEST,
  stream_out_TVALID,
  stream_out_TREADY,
  stream_out_TDATA,
  stream_out_TKEEP,
  stream_out_TSTRB,
  stream_out_TUSER,
  stream_out_TLAST,
  stream_out_TID,
  stream_out_TDEST
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters AWADDR" *)
input wire [5 : 0] s_axi_scalar_parameters_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters AWVALID" *)
input wire s_axi_scalar_parameters_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters AWREADY" *)
output wire s_axi_scalar_parameters_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters WDATA" *)
input wire [31 : 0] s_axi_scalar_parameters_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters WSTRB" *)
input wire [3 : 0] s_axi_scalar_parameters_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters WVALID" *)
input wire s_axi_scalar_parameters_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters WREADY" *)
output wire s_axi_scalar_parameters_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters BRESP" *)
output wire [1 : 0] s_axi_scalar_parameters_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters BVALID" *)
output wire s_axi_scalar_parameters_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters BREADY" *)
input wire s_axi_scalar_parameters_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters ARADDR" *)
input wire [5 : 0] s_axi_scalar_parameters_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters ARVALID" *)
input wire s_axi_scalar_parameters_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters ARREADY" *)
output wire s_axi_scalar_parameters_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters RDATA" *)
output wire [31 : 0] s_axi_scalar_parameters_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters RRESP" *)
output wire [1 : 0] s_axi_scalar_parameters_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters RVALID" *)
output wire s_axi_scalar_parameters_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_scalar_parameters, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 1e+08, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, NU\
M_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_scalar_parameters RREADY" *)
input wire s_axi_scalar_parameters_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_scalar_parameters:stream_in:stream_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TVALID" *)
input wire stream_in_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TREADY" *)
output wire stream_in_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TDATA" *)
input wire [31 : 0] stream_in_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TKEEP" *)
input wire [3 : 0] stream_in_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TSTRB" *)
input wire [3 : 0] stream_in_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TUSER" *)
input wire [0 : 0] stream_in_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TLAST" *)
input wire [0 : 0] stream_in_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TID" *)
input wire [0 : 0] stream_in_TID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_in, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_in TDEST" *)
input wire [0 : 0] stream_in_TDEST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TVALID" *)
output wire stream_out_TVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TREADY" *)
input wire stream_out_TREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TDATA" *)
output wire [31 : 0] stream_out_TDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TKEEP" *)
output wire [3 : 0] stream_out_TKEEP;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TSTRB" *)
output wire [3 : 0] stream_out_TSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TUSER" *)
output wire [0 : 0] stream_out_TUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TLAST" *)
output wire [0 : 0] stream_out_TLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TID" *)
output wire [0 : 0] stream_out_TID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME stream_out, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 stream_out TDEST" *)
output wire [0 : 0] stream_out_TDEST;

  FSRCNN #(
    .C_S_AXI_SCALAR_PARAMETERS_ADDR_WIDTH(6),
    .C_S_AXI_SCALAR_PARAMETERS_DATA_WIDTH(32)
  ) inst (
    .s_axi_scalar_parameters_AWADDR(s_axi_scalar_parameters_AWADDR),
    .s_axi_scalar_parameters_AWVALID(s_axi_scalar_parameters_AWVALID),
    .s_axi_scalar_parameters_AWREADY(s_axi_scalar_parameters_AWREADY),
    .s_axi_scalar_parameters_WDATA(s_axi_scalar_parameters_WDATA),
    .s_axi_scalar_parameters_WSTRB(s_axi_scalar_parameters_WSTRB),
    .s_axi_scalar_parameters_WVALID(s_axi_scalar_parameters_WVALID),
    .s_axi_scalar_parameters_WREADY(s_axi_scalar_parameters_WREADY),
    .s_axi_scalar_parameters_BRESP(s_axi_scalar_parameters_BRESP),
    .s_axi_scalar_parameters_BVALID(s_axi_scalar_parameters_BVALID),
    .s_axi_scalar_parameters_BREADY(s_axi_scalar_parameters_BREADY),
    .s_axi_scalar_parameters_ARADDR(s_axi_scalar_parameters_ARADDR),
    .s_axi_scalar_parameters_ARVALID(s_axi_scalar_parameters_ARVALID),
    .s_axi_scalar_parameters_ARREADY(s_axi_scalar_parameters_ARREADY),
    .s_axi_scalar_parameters_RDATA(s_axi_scalar_parameters_RDATA),
    .s_axi_scalar_parameters_RRESP(s_axi_scalar_parameters_RRESP),
    .s_axi_scalar_parameters_RVALID(s_axi_scalar_parameters_RVALID),
    .s_axi_scalar_parameters_RREADY(s_axi_scalar_parameters_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .stream_in_TVALID(stream_in_TVALID),
    .stream_in_TREADY(stream_in_TREADY),
    .stream_in_TDATA(stream_in_TDATA),
    .stream_in_TKEEP(stream_in_TKEEP),
    .stream_in_TSTRB(stream_in_TSTRB),
    .stream_in_TUSER(stream_in_TUSER),
    .stream_in_TLAST(stream_in_TLAST),
    .stream_in_TID(stream_in_TID),
    .stream_in_TDEST(stream_in_TDEST),
    .stream_out_TVALID(stream_out_TVALID),
    .stream_out_TREADY(stream_out_TREADY),
    .stream_out_TDATA(stream_out_TDATA),
    .stream_out_TKEEP(stream_out_TKEEP),
    .stream_out_TSTRB(stream_out_TSTRB),
    .stream_out_TUSER(stream_out_TUSER),
    .stream_out_TLAST(stream_out_TLAST),
    .stream_out_TID(stream_out_TID),
    .stream_out_TDEST(stream_out_TDEST)
  );
endmodule
