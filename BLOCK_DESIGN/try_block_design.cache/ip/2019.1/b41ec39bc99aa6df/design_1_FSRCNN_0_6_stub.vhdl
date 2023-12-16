-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Dec 14 12:03:26 2023
-- Host        : Jiawei_Li running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_FSRCNN_0_6_stub.vhdl
-- Design      : design_1_FSRCNN_0_6
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_scalar_parameters_AWADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_scalar_parameters_AWVALID : in STD_LOGIC;
    s_axi_scalar_parameters_AWREADY : out STD_LOGIC;
    s_axi_scalar_parameters_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_scalar_parameters_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_scalar_parameters_WVALID : in STD_LOGIC;
    s_axi_scalar_parameters_WREADY : out STD_LOGIC;
    s_axi_scalar_parameters_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_scalar_parameters_BVALID : out STD_LOGIC;
    s_axi_scalar_parameters_BREADY : in STD_LOGIC;
    s_axi_scalar_parameters_ARADDR : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_scalar_parameters_ARVALID : in STD_LOGIC;
    s_axi_scalar_parameters_ARREADY : out STD_LOGIC;
    s_axi_scalar_parameters_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_scalar_parameters_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_scalar_parameters_RVALID : out STD_LOGIC;
    s_axi_scalar_parameters_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    stream_in_TVALID : in STD_LOGIC;
    stream_in_TREADY : out STD_LOGIC;
    stream_in_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_in_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_in_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_in_TUSER : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_TID : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_TDEST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_TVALID : out STD_LOGIC;
    stream_out_TREADY : in STD_LOGIC;
    stream_out_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    stream_out_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_out_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    stream_out_TUSER : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_TID : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_TDEST : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_scalar_parameters_AWADDR[5:0],s_axi_scalar_parameters_AWVALID,s_axi_scalar_parameters_AWREADY,s_axi_scalar_parameters_WDATA[31:0],s_axi_scalar_parameters_WSTRB[3:0],s_axi_scalar_parameters_WVALID,s_axi_scalar_parameters_WREADY,s_axi_scalar_parameters_BRESP[1:0],s_axi_scalar_parameters_BVALID,s_axi_scalar_parameters_BREADY,s_axi_scalar_parameters_ARADDR[5:0],s_axi_scalar_parameters_ARVALID,s_axi_scalar_parameters_ARREADY,s_axi_scalar_parameters_RDATA[31:0],s_axi_scalar_parameters_RRESP[1:0],s_axi_scalar_parameters_RVALID,s_axi_scalar_parameters_RREADY,ap_clk,ap_rst_n,stream_in_TVALID,stream_in_TREADY,stream_in_TDATA[31:0],stream_in_TKEEP[3:0],stream_in_TSTRB[3:0],stream_in_TUSER[0:0],stream_in_TLAST[0:0],stream_in_TID[0:0],stream_in_TDEST[0:0],stream_out_TVALID,stream_out_TREADY,stream_out_TDATA[31:0],stream_out_TKEEP[3:0],stream_out_TSTRB[3:0],stream_out_TUSER[0:0],stream_out_TLAST[0:0],stream_out_TID[0:0],stream_out_TDEST[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "FSRCNN,Vivado 2019.1";
begin
end;
