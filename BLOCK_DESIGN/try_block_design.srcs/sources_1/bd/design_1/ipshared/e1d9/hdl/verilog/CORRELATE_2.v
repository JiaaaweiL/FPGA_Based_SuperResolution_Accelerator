// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module CORRELATE_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        prev_output_channel_V_address0,
        prev_output_channel_V_ce0,
        prev_output_channel_V_q0,
        filter_V_address0,
        filter_V_ce0,
        filter_V_q0,
        correlate_img_V_address0,
        correlate_img_V_ce0,
        correlate_img_V_we0,
        correlate_img_V_d0
);

parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] prev_output_channel_V_address0;
output   prev_output_channel_V_ce0;
input  [11:0] prev_output_channel_V_q0;
output  [4:0] filter_V_address0;
output   filter_V_ce0;
input  [6:0] filter_V_q0;
output  [5:0] correlate_img_V_address0;
output   correlate_img_V_ce0;
output   correlate_img_V_we0;
output  [11:0] correlate_img_V_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg prev_output_channel_V_ce0;
reg filter_V_ce0;
reg correlate_img_V_ce0;
reg correlate_img_V_we0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [31:0] zext_ln29_fu_204_p1;
reg   [31:0] zext_ln29_reg_402;
wire    ap_CS_fsm_state2;
wire   [6:0] index_output_value_fu_232_p2;
reg   [6:0] index_output_value_reg_410;
wire   [31:0] zext_ln37_fu_244_p1;
reg   [31:0] zext_ln37_reg_415;
wire   [0:0] icmp_ln29_1_fu_226_p2;
wire  signed [9:0] sext_ln37_fu_258_p1;
reg  signed [9:0] sext_ln37_reg_420;
wire  signed [31:0] sext_ln34_fu_262_p1;
wire    ap_CS_fsm_state3;
wire   [2:0] k_x_fu_272_p2;
reg   [2:0] k_x_reg_433;
wire   [9:0] index_filter_fu_278_p2;
reg   [9:0] index_filter_reg_438;
wire   [0:0] icmp_ln34_fu_266_p2;
wire   [13:0] zext_ln1116_5_fu_313_p1;
reg   [13:0] zext_ln1116_5_reg_443;
wire   [6:0] add_ln29_fu_322_p2;
wire   [6:0] add_ln29_1_fu_328_p2;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln37_fu_334_p2;
wire   [31:0] add_ln41_fu_358_p2;
reg   [31:0] add_ln41_reg_471;
wire   [31:0] k_y_1_fu_364_p2;
reg   [31:0] k_y_1_reg_476;
reg  signed [11:0] prev_output_channel_1_reg_481;
wire    ap_CS_fsm_state5;
reg  signed [6:0] filter_V_load_reg_486;
wire    ap_CS_fsm_state6;
reg  signed [6:0] phi_ln29_reg_103;
reg   [6:0] column_index_after_s_reg_115;
reg   [6:0] indvars_iv_reg_127;
reg   [11:0] p_087_0_reg_139;
reg  signed [9:0] index_filter_0_reg_152;
reg   [2:0] k_x_0_reg_163;
reg   [11:0] p_Val2_s_reg_174;
reg  signed [31:0] index_filter_1_reg_186;
reg   [31:0] k_y_0_reg_195;
wire   [63:0] zext_ln44_fu_317_p1;
wire  signed [63:0] sext_ln1116_fu_348_p1;
wire  signed [63:0] sext_ln40_fu_353_p1;
wire   [0:0] icmp_ln29_fu_208_p2;
wire   [6:0] select_ln29_fu_214_p3;
wire   [6:0] add_ln37_fu_238_p2;
wire  signed [7:0] sext_ln29_fu_248_p1;
wire   [7:0] zext_ln29_1_fu_222_p1;
wire   [7:0] add_ln37_1_fu_252_p2;
wire   [8:0] tmp_115_fu_283_p3;
wire   [4:0] tmp_116_fu_295_p3;
wire   [9:0] zext_ln1116_4_fu_303_p1;
wire   [9:0] zext_ln1116_fu_291_p1;
wire   [9:0] add_ln1116_fu_307_p2;
wire   [13:0] trunc_ln1116_fu_339_p1;
wire   [13:0] add_ln1116_2_fu_343_p2;
wire  signed [15:0] grp_fu_393_p3;
wire   [15:0] grp_fu_393_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'd1;
end

FSRCNN_mac_muladdbkb #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 7 ),
    .din1_WIDTH( 12 ),
    .din2_WIDTH( 16 ),
    .dout_WIDTH( 16 ))
FSRCNN_mac_muladdbkb_U1(
    .din0(filter_V_load_reg_486),
    .din1(prev_output_channel_1_reg_481),
    .din2(grp_fu_393_p2),
    .dout(grp_fu_393_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        column_index_after_s_reg_115 <= 7'd0;
    end else if (((icmp_ln34_fu_266_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        column_index_after_s_reg_115 <= index_output_value_reg_410;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln37_fu_334_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        index_filter_0_reg_152 <= index_filter_reg_438;
    end else if (((icmp_ln29_1_fu_226_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        index_filter_0_reg_152 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        index_filter_1_reg_186 <= add_ln41_reg_471;
    end else if (((icmp_ln34_fu_266_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        index_filter_1_reg_186 <= sext_ln34_fu_262_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv_reg_127 <= 7'd5;
    end else if (((icmp_ln34_fu_266_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv_reg_127 <= add_ln29_fu_322_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln37_fu_334_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        k_x_0_reg_163 <= k_x_reg_433;
    end else if (((icmp_ln29_1_fu_226_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        k_x_0_reg_163 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        k_y_0_reg_195 <= k_y_1_reg_476;
    end else if (((icmp_ln34_fu_266_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        k_y_0_reg_195 <= zext_ln29_reg_402;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln37_fu_334_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        p_087_0_reg_139 <= p_Val2_s_reg_174;
    end else if (((icmp_ln29_1_fu_226_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        p_087_0_reg_139 <= 12'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_Val2_s_reg_174 <= {{grp_fu_393_p3[15:4]}};
    end else if (((icmp_ln34_fu_266_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        p_Val2_s_reg_174 <= p_087_0_reg_139;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_ln29_reg_103 <= 7'd0;
    end else if (((icmp_ln34_fu_266_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_ln29_reg_103 <= add_ln29_1_fu_328_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln37_fu_334_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        add_ln41_reg_471 <= add_ln41_fu_358_p2;
        k_y_1_reg_476 <= k_y_1_fu_364_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        filter_V_load_reg_486 <= filter_V_q0;
        prev_output_channel_1_reg_481 <= prev_output_channel_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln34_fu_266_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        index_filter_reg_438 <= index_filter_fu_278_p2;
        zext_ln1116_5_reg_443[9 : 2] <= zext_ln1116_5_fu_313_p1[9 : 2];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        index_output_value_reg_410 <= index_output_value_fu_232_p2;
        zext_ln29_reg_402[6 : 0] <= zext_ln29_fu_204_p1[6 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        k_x_reg_433 <= k_x_fu_272_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln29_1_fu_226_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        sext_ln37_reg_420 <= sext_ln37_fu_258_p1;
        zext_ln37_reg_415[6 : 0] <= zext_ln37_fu_244_p1[6 : 0];
    end
end

always @ (*) begin
    if ((((icmp_ln29_1_fu_226_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln29_1_fu_226_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        correlate_img_V_ce0 = 1'b1;
    end else begin
        correlate_img_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln34_fu_266_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        correlate_img_V_we0 = 1'b1;
    end else begin
        correlate_img_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        filter_V_ce0 = 1'b1;
    end else begin
        filter_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        prev_output_channel_V_ce0 = 1'b1;
    end else begin
        prev_output_channel_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln29_1_fu_226_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln34_fu_266_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln37_fu_334_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1116_2_fu_343_p2 = (trunc_ln1116_fu_339_p1 + zext_ln1116_5_reg_443);

assign add_ln1116_fu_307_p2 = (zext_ln1116_4_fu_303_p1 + zext_ln1116_fu_291_p1);

assign add_ln29_1_fu_328_p2 = ($signed(phi_ln29_reg_103) + $signed(7'd127));

assign add_ln29_fu_322_p2 = (indvars_iv_reg_127 + 7'd1);

assign add_ln37_1_fu_252_p2 = ($signed(sext_ln29_fu_248_p1) + $signed(zext_ln29_1_fu_222_p1));

assign add_ln37_fu_238_p2 = (column_index_after_s_reg_115 + 7'd5);

assign add_ln41_fu_358_p2 = ($signed(32'd1) + $signed(index_filter_1_reg_186));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign correlate_img_V_address0 = zext_ln44_fu_317_p1;

assign correlate_img_V_d0 = p_087_0_reg_139;

assign filter_V_address0 = sext_ln40_fu_353_p1;

assign grp_fu_393_p2 = {{p_Val2_s_reg_174}, {4'd0}};

assign icmp_ln29_1_fu_226_p2 = ((column_index_after_s_reg_115 == 7'd64) ? 1'b1 : 1'b0);

assign icmp_ln29_fu_208_p2 = ((indvars_iv_reg_127 > column_index_after_s_reg_115) ? 1'b1 : 1'b0);

assign icmp_ln34_fu_266_p2 = ((k_x_0_reg_163 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln37_fu_334_p2 = (($signed(k_y_0_reg_195) < $signed(zext_ln37_reg_415)) ? 1'b1 : 1'b0);

assign index_filter_fu_278_p2 = ($signed(index_filter_0_reg_152) + $signed(sext_ln37_reg_420));

assign index_output_value_fu_232_p2 = (column_index_after_s_reg_115 + 7'd1);

assign k_x_fu_272_p2 = (k_x_0_reg_163 + 3'd1);

assign k_y_1_fu_364_p2 = (32'd1 + k_y_0_reg_195);

assign prev_output_channel_V_address0 = sext_ln1116_fu_348_p1;

assign select_ln29_fu_214_p3 = ((icmp_ln29_fu_208_p2[0:0] === 1'b1) ? indvars_iv_reg_127 : column_index_after_s_reg_115);

assign sext_ln1116_fu_348_p1 = $signed(add_ln1116_2_fu_343_p2);

assign sext_ln29_fu_248_p1 = phi_ln29_reg_103;

assign sext_ln34_fu_262_p1 = index_filter_0_reg_152;

assign sext_ln37_fu_258_p1 = $signed(add_ln37_1_fu_252_p2);

assign sext_ln40_fu_353_p1 = index_filter_1_reg_186;

assign tmp_115_fu_283_p3 = {{k_x_0_reg_163}, {6'd0}};

assign tmp_116_fu_295_p3 = {{k_x_0_reg_163}, {2'd0}};

assign trunc_ln1116_fu_339_p1 = k_y_0_reg_195[13:0];

assign zext_ln1116_4_fu_303_p1 = tmp_116_fu_295_p3;

assign zext_ln1116_5_fu_313_p1 = add_ln1116_fu_307_p2;

assign zext_ln1116_fu_291_p1 = tmp_115_fu_283_p3;

assign zext_ln29_1_fu_222_p1 = select_ln29_fu_214_p3;

assign zext_ln29_fu_204_p1 = column_index_after_s_reg_115;

assign zext_ln37_fu_244_p1 = add_ln37_fu_238_p2;

assign zext_ln44_fu_317_p1 = column_index_after_s_reg_115;

always @ (posedge ap_clk) begin
    zext_ln29_reg_402[31:7] <= 25'b0000000000000000000000000;
    zext_ln37_reg_415[31:7] <= 25'b0000000000000000000000000;
    zext_ln1116_5_reg_443[1:0] <= 2'b00;
    zext_ln1116_5_reg_443[13:10] <= 4'b0000;
end

endmodule //CORRELATE_2
