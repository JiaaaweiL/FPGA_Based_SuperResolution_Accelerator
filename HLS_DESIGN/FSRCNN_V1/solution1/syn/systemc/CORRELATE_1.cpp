// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "CORRELATE_1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic CORRELATE_1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic CORRELATE_1::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> CORRELATE_1::ap_ST_fsm_state1 = "1";
const sc_lv<6> CORRELATE_1::ap_ST_fsm_state2 = "10";
const sc_lv<6> CORRELATE_1::ap_ST_fsm_state3 = "100";
const sc_lv<6> CORRELATE_1::ap_ST_fsm_state4 = "1000";
const sc_lv<6> CORRELATE_1::ap_ST_fsm_state5 = "10000";
const sc_lv<6> CORRELATE_1::ap_ST_fsm_state6 = "100000";
const sc_lv<32> CORRELATE_1::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> CORRELATE_1::ap_const_lv32_1 = "1";
const sc_lv<1> CORRELATE_1::ap_const_lv1_0 = "0";
const sc_lv<32> CORRELATE_1::ap_const_lv32_2 = "10";
const sc_lv<32> CORRELATE_1::ap_const_lv32_3 = "11";
const sc_lv<32> CORRELATE_1::ap_const_lv32_4 = "100";
const sc_lv<32> CORRELATE_1::ap_const_lv32_5 = "101";
const sc_lv<10> CORRELATE_1::ap_const_lv10_0 = "0000000000";
const sc_lv<21> CORRELATE_1::ap_const_lv21_0 = "000000000000000000000";
const sc_lv<1> CORRELATE_1::ap_const_lv1_1 = "1";
const sc_lv<10> CORRELATE_1::ap_const_lv10_240 = "1001000000";
const sc_lv<10> CORRELATE_1::ap_const_lv10_1 = "1";
const sc_lv<21> CORRELATE_1::ap_const_lv21_71D = "11100011101";
const sc_lv<32> CORRELATE_1::ap_const_lv32_E = "1110";
const sc_lv<32> CORRELATE_1::ap_const_lv32_14 = "10100";
const sc_lv<10> CORRELATE_1::ap_const_lv10_16 = "10110";
const sc_lv<32> CORRELATE_1::ap_const_lv32_6 = "110";
const sc_lv<4> CORRELATE_1::ap_const_lv4_3 = "11";
const sc_lv<2> CORRELATE_1::ap_const_lv2_0 = "00";
const sc_lv<32> CORRELATE_1::ap_const_lv32_9 = "1001";
const sc_lv<4> CORRELATE_1::ap_const_lv4_A = "1010";
const sc_lv<2> CORRELATE_1::ap_const_lv2_2 = "10";
const sc_lv<6> CORRELATE_1::ap_const_lv6_0 = "000000";
const sc_lv<12> CORRELATE_1::ap_const_lv12_0 = "000000000000";
const sc_lv<4> CORRELATE_1::ap_const_lv4_0 = "0000";
const sc_lv<32> CORRELATE_1::ap_const_lv32_F = "1111";
const sc_lv<10> CORRELATE_1::ap_const_lv10_3 = "11";
const sc_lv<10> CORRELATE_1::ap_const_lv10_9 = "1001";
const bool CORRELATE_1::ap_const_boolean_1 = true;

CORRELATE_1::CORRELATE_1(sc_module_name name) : sc_module(name), mVcdFile(0) {
    FSRCNN_mul_mul_12CeG_U56 = new FSRCNN_mul_mul_12CeG<1,1,12,12,24>("FSRCNN_mul_mul_12CeG_U56");
    FSRCNN_mul_mul_12CeG_U56->din0(prev_output_channel_2_reg_531);
    FSRCNN_mul_mul_12CeG_U56->din1(filter_V_q0);
    FSRCNN_mul_mul_12CeG_U56->dout(r_V_6_fu_454_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln1116_3_fu_306_p2);
    sensitive << ( add_ln1116_fu_300_p2 );
    sensitive << ( zext_ln1116_fu_275_p1 );

    SC_METHOD(thread_add_ln1116_fu_300_p2);
    sensitive << ( zext_ln1116_7_fu_296_p1 );
    sensitive << ( zext_ln1116_6_fu_285_p1 );

    SC_METHOD(thread_add_ln49_fu_177_p2);
    sensitive << ( phi_mul_reg_130 );

    SC_METHOD(thread_add_ln65_fu_251_p2);
    sensitive << ( trunc_ln50_fu_193_p1 );

    SC_METHOD(thread_add_ln71_2_fu_434_p2);
    sensitive << ( phi_urem_reg_141 );

    SC_METHOD(thread_add_ln71_fu_414_p2);
    sensitive << ( phi_urem33_reg_153 );

    SC_METHOD(thread_and_ln65_fu_269_p2);
    sensitive << ( icmp_ln65_fu_257_p2 );
    sensitive << ( icmp_ln65_1_fu_263_p2 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln46_fu_165_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln46_fu_165_p2 );

    SC_METHOD(thread_correlate_img_V_address0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( zext_ln68_fu_400_p1 );

    SC_METHOD(thread_correlate_img_V_ce0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_correlate_img_V_d0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ret_V_fu_378_p2 );

    SC_METHOD(thread_correlate_img_V_we0);
    sensitive << ( tmp_92_reg_495 );
    sensitive << ( and_ln65_reg_517 );
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_filter_V_address0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( sext_ln62_fu_334_p1 );

    SC_METHOD(thread_filter_V_ce0);
    sensitive << ( ap_CS_fsm_state4 );

    SC_METHOD(thread_icmp_ln46_fu_165_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( index_0_reg_119 );

    SC_METHOD(thread_icmp_ln55_1_fu_235_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln46_fu_165_p2 );
    sensitive << ( tmp_92_fu_221_p3 );
    sensitive << ( trunc_ln51_fu_207_p1 );

    SC_METHOD(thread_icmp_ln55_fu_229_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln46_fu_165_p2 );
    sensitive << ( tmp_92_fu_221_p3 );
    sensitive << ( trunc_ln50_fu_193_p1 );

    SC_METHOD(thread_icmp_ln65_1_fu_263_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln46_fu_165_p2 );
    sensitive << ( tmp_92_fu_221_p3 );
    sensitive << ( trunc_ln51_fu_207_p1 );

    SC_METHOD(thread_icmp_ln65_fu_257_p2);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln46_fu_165_p2 );
    sensitive << ( tmp_92_fu_221_p3 );
    sensitive << ( add_ln65_fu_251_p2 );

    SC_METHOD(thread_icmp_ln71_2_fu_440_p2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( add_ln71_2_fu_434_p2 );

    SC_METHOD(thread_icmp_ln71_fu_420_p2);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( add_ln71_fu_414_p2 );

    SC_METHOD(thread_index_filter_fu_395_p2);
    sensitive << ( select_ln55_reg_526 );

    SC_METHOD(thread_index_fu_171_p2);
    sensitive << ( index_0_reg_119 );

    SC_METHOD(thread_k_y_fu_215_p2);
    sensitive << ( tmp_91_fu_183_p4 );
    sensitive << ( trunc_ln51_2_fu_211_p1 );

    SC_METHOD(thread_lhs_V_fu_363_p3);
    sensitive << ( select_ln55_5_fu_356_p3 );

    SC_METHOD(thread_mul_ln50_fu_201_p1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( mul_ln50_fu_201_p10 );

    SC_METHOD(thread_mul_ln50_fu_201_p10);
    sensitive << ( trunc_ln50_fu_193_p1 );

    SC_METHOD(thread_mul_ln50_fu_201_p2);
    sensitive << ( mul_ln50_fu_201_p1 );

    SC_METHOD(thread_prev_output_channel_V_address0);
    sensitive << ( ap_CS_fsm_state3 );
    sensitive << ( zext_ln1116_8_fu_312_p1 );

    SC_METHOD(thread_prev_output_channel_V_ce0);
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_ret_V_fu_378_p2);
    sensitive << ( zext_ln728_fu_371_p1 );
    sensitive << ( zext_ln703_fu_375_p1 );

    SC_METHOD(thread_select_ln55_1_fu_320_p3);
    sensitive << ( icmp_ln55_1_reg_505 );
    sensitive << ( index_filter_2_fu_72 );

    SC_METHOD(thread_select_ln55_4_fu_349_p3);
    sensitive << ( icmp_ln55_1_reg_505 );
    sensitive << ( sum_V_2_fu_76 );

    SC_METHOD(thread_select_ln55_5_fu_356_p3);
    sensitive << ( icmp_ln55_reg_499 );
    sensitive << ( sum_V_2_fu_76 );
    sensitive << ( select_ln55_4_fu_349_p3 );

    SC_METHOD(thread_select_ln55_fu_327_p3);
    sensitive << ( icmp_ln55_reg_499 );
    sensitive << ( index_filter_2_fu_72 );
    sensitive << ( select_ln55_1_fu_320_p3 );

    SC_METHOD(thread_select_ln71_2_fu_446_p3);
    sensitive << ( add_ln71_2_fu_434_p2 );
    sensitive << ( icmp_ln71_2_fu_440_p2 );

    SC_METHOD(thread_select_ln71_fu_426_p3);
    sensitive << ( add_ln71_fu_414_p2 );
    sensitive << ( icmp_ln71_fu_420_p2 );

    SC_METHOD(thread_sext_ln62_fu_334_p1);
    sensitive << ( select_ln55_fu_327_p3 );

    SC_METHOD(thread_tmp_128_fu_289_p3);
    sensitive << ( tmp_reg_511 );

    SC_METHOD(thread_tmp_91_fu_183_p4);
    sensitive << ( phi_mul_reg_130 );

    SC_METHOD(thread_tmp_92_fu_221_p3);
    sensitive << ( k_y_fu_215_p2 );

    SC_METHOD(thread_tmp_s_fu_278_p3);
    sensitive << ( tmp_reg_511 );

    SC_METHOD(thread_trunc_ln50_fu_193_p1);
    sensitive << ( phi_urem_reg_141 );

    SC_METHOD(thread_trunc_ln51_2_fu_211_p1);
    sensitive << ( phi_urem33_reg_153 );

    SC_METHOD(thread_trunc_ln51_fu_207_p1);
    sensitive << ( phi_urem33_reg_153 );

    SC_METHOD(thread_zext_ln1116_6_fu_285_p1);
    sensitive << ( tmp_s_fu_278_p3 );

    SC_METHOD(thread_zext_ln1116_7_fu_296_p1);
    sensitive << ( tmp_128_fu_289_p3 );

    SC_METHOD(thread_zext_ln1116_8_fu_312_p1);
    sensitive << ( add_ln1116_3_fu_306_p2 );

    SC_METHOD(thread_zext_ln1116_fu_275_p1);
    sensitive << ( k_y_reg_490 );

    SC_METHOD(thread_zext_ln68_fu_400_p1);
    sensitive << ( tmp_91_reg_485 );

    SC_METHOD(thread_zext_ln703_fu_375_p1);
    sensitive << ( r_V_6_reg_541 );

    SC_METHOD(thread_zext_ln728_fu_371_p1);
    sensitive << ( lhs_V_fu_363_p3 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( icmp_ln46_fu_165_p2 );
    sensitive << ( tmp_92_fu_221_p3 );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "CORRELATE_1_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, prev_output_channel_V_address0, "(port)prev_output_channel_V_address0");
    sc_trace(mVcdFile, prev_output_channel_V_ce0, "(port)prev_output_channel_V_ce0");
    sc_trace(mVcdFile, prev_output_channel_V_q0, "(port)prev_output_channel_V_q0");
    sc_trace(mVcdFile, filter_V_address0, "(port)filter_V_address0");
    sc_trace(mVcdFile, filter_V_ce0, "(port)filter_V_ce0");
    sc_trace(mVcdFile, filter_V_q0, "(port)filter_V_q0");
    sc_trace(mVcdFile, correlate_img_V_address0, "(port)correlate_img_V_address0");
    sc_trace(mVcdFile, correlate_img_V_ce0, "(port)correlate_img_V_ce0");
    sc_trace(mVcdFile, correlate_img_V_we0, "(port)correlate_img_V_we0");
    sc_trace(mVcdFile, correlate_img_V_d0, "(port)correlate_img_V_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, index_fu_171_p2, "index_fu_171_p2");
    sc_trace(mVcdFile, index_reg_475, "index_reg_475");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, add_ln49_fu_177_p2, "add_ln49_fu_177_p2");
    sc_trace(mVcdFile, add_ln49_reg_480, "add_ln49_reg_480");
    sc_trace(mVcdFile, icmp_ln46_fu_165_p2, "icmp_ln46_fu_165_p2");
    sc_trace(mVcdFile, tmp_91_fu_183_p4, "tmp_91_fu_183_p4");
    sc_trace(mVcdFile, tmp_91_reg_485, "tmp_91_reg_485");
    sc_trace(mVcdFile, k_y_fu_215_p2, "k_y_fu_215_p2");
    sc_trace(mVcdFile, k_y_reg_490, "k_y_reg_490");
    sc_trace(mVcdFile, tmp_92_fu_221_p3, "tmp_92_fu_221_p3");
    sc_trace(mVcdFile, tmp_92_reg_495, "tmp_92_reg_495");
    sc_trace(mVcdFile, icmp_ln55_fu_229_p2, "icmp_ln55_fu_229_p2");
    sc_trace(mVcdFile, icmp_ln55_reg_499, "icmp_ln55_reg_499");
    sc_trace(mVcdFile, icmp_ln55_1_fu_235_p2, "icmp_ln55_1_fu_235_p2");
    sc_trace(mVcdFile, icmp_ln55_1_reg_505, "icmp_ln55_1_reg_505");
    sc_trace(mVcdFile, tmp_reg_511, "tmp_reg_511");
    sc_trace(mVcdFile, and_ln65_fu_269_p2, "and_ln65_fu_269_p2");
    sc_trace(mVcdFile, and_ln65_reg_517, "and_ln65_reg_517");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, select_ln55_fu_327_p3, "select_ln55_fu_327_p3");
    sc_trace(mVcdFile, select_ln55_reg_526, "select_ln55_reg_526");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, prev_output_channel_2_reg_531, "prev_output_channel_2_reg_531");
    sc_trace(mVcdFile, r_V_6_fu_454_p2, "r_V_6_fu_454_p2");
    sc_trace(mVcdFile, r_V_6_reg_541, "r_V_6_reg_541");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, select_ln71_fu_426_p3, "select_ln71_fu_426_p3");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, select_ln71_2_fu_446_p3, "select_ln71_2_fu_446_p3");
    sc_trace(mVcdFile, index_0_reg_119, "index_0_reg_119");
    sc_trace(mVcdFile, phi_mul_reg_130, "phi_mul_reg_130");
    sc_trace(mVcdFile, phi_urem_reg_141, "phi_urem_reg_141");
    sc_trace(mVcdFile, phi_urem33_reg_153, "phi_urem33_reg_153");
    sc_trace(mVcdFile, zext_ln1116_8_fu_312_p1, "zext_ln1116_8_fu_312_p1");
    sc_trace(mVcdFile, sext_ln62_fu_334_p1, "sext_ln62_fu_334_p1");
    sc_trace(mVcdFile, zext_ln68_fu_400_p1, "zext_ln68_fu_400_p1");
    sc_trace(mVcdFile, index_filter_2_fu_72, "index_filter_2_fu_72");
    sc_trace(mVcdFile, index_filter_fu_395_p2, "index_filter_fu_395_p2");
    sc_trace(mVcdFile, sum_V_2_fu_76, "sum_V_2_fu_76");
    sc_trace(mVcdFile, trunc_ln50_fu_193_p1, "trunc_ln50_fu_193_p1");
    sc_trace(mVcdFile, mul_ln50_fu_201_p1, "mul_ln50_fu_201_p1");
    sc_trace(mVcdFile, trunc_ln51_2_fu_211_p1, "trunc_ln51_2_fu_211_p1");
    sc_trace(mVcdFile, trunc_ln51_fu_207_p1, "trunc_ln51_fu_207_p1");
    sc_trace(mVcdFile, mul_ln50_fu_201_p2, "mul_ln50_fu_201_p2");
    sc_trace(mVcdFile, add_ln65_fu_251_p2, "add_ln65_fu_251_p2");
    sc_trace(mVcdFile, icmp_ln65_fu_257_p2, "icmp_ln65_fu_257_p2");
    sc_trace(mVcdFile, icmp_ln65_1_fu_263_p2, "icmp_ln65_1_fu_263_p2");
    sc_trace(mVcdFile, tmp_s_fu_278_p3, "tmp_s_fu_278_p3");
    sc_trace(mVcdFile, tmp_128_fu_289_p3, "tmp_128_fu_289_p3");
    sc_trace(mVcdFile, zext_ln1116_7_fu_296_p1, "zext_ln1116_7_fu_296_p1");
    sc_trace(mVcdFile, zext_ln1116_6_fu_285_p1, "zext_ln1116_6_fu_285_p1");
    sc_trace(mVcdFile, add_ln1116_fu_300_p2, "add_ln1116_fu_300_p2");
    sc_trace(mVcdFile, zext_ln1116_fu_275_p1, "zext_ln1116_fu_275_p1");
    sc_trace(mVcdFile, add_ln1116_3_fu_306_p2, "add_ln1116_3_fu_306_p2");
    sc_trace(mVcdFile, select_ln55_1_fu_320_p3, "select_ln55_1_fu_320_p3");
    sc_trace(mVcdFile, select_ln55_4_fu_349_p3, "select_ln55_4_fu_349_p3");
    sc_trace(mVcdFile, select_ln55_5_fu_356_p3, "select_ln55_5_fu_356_p3");
    sc_trace(mVcdFile, lhs_V_fu_363_p3, "lhs_V_fu_363_p3");
    sc_trace(mVcdFile, zext_ln728_fu_371_p1, "zext_ln728_fu_371_p1");
    sc_trace(mVcdFile, zext_ln703_fu_375_p1, "zext_ln703_fu_375_p1");
    sc_trace(mVcdFile, ret_V_fu_378_p2, "ret_V_fu_378_p2");
    sc_trace(mVcdFile, add_ln71_fu_414_p2, "add_ln71_fu_414_p2");
    sc_trace(mVcdFile, icmp_ln71_fu_420_p2, "icmp_ln71_fu_420_p2");
    sc_trace(mVcdFile, add_ln71_2_fu_434_p2, "add_ln71_2_fu_434_p2");
    sc_trace(mVcdFile, icmp_ln71_2_fu_440_p2, "icmp_ln71_2_fu_440_p2");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, mul_ln50_fu_201_p10, "mul_ln50_fu_201_p10");
#endif

    }
}

CORRELATE_1::~CORRELATE_1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete FSRCNN_mul_mul_12CeG_U56;
}

void CORRELATE_1::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        index_0_reg_119 = index_reg_475.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        index_0_reg_119 = ap_const_lv10_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        phi_mul_reg_130 = add_ln49_reg_480.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        phi_mul_reg_130 = ap_const_lv21_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        phi_urem33_reg_153 = select_ln71_fu_426_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        phi_urem33_reg_153 = ap_const_lv10_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        phi_urem_reg_141 = select_ln71_2_fu_446_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        phi_urem_reg_141 = ap_const_lv10_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln46_fu_165_p2.read(), ap_const_lv1_0))) {
        add_ln49_reg_480 = add_ln49_fu_177_p2.read();
        k_y_reg_490 = k_y_fu_215_p2.read();
        tmp_91_reg_485 = phi_mul_reg_130.read().range(20, 14);
        tmp_92_reg_495 = k_y_fu_215_p2.read().range(6, 6);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln46_fu_165_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_92_fu_221_p3.read()))) {
        and_ln65_reg_517 = and_ln65_fu_269_p2.read();
        icmp_ln55_1_reg_505 = icmp_ln55_1_fu_235_p2.read();
        icmp_ln55_reg_499 = icmp_ln55_fu_229_p2.read();
        tmp_reg_511 = mul_ln50_fu_201_p2.read().range(9, 6);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_92_reg_495.read()))) {
        index_filter_2_fu_72 = index_filter_fu_395_p2.read();
        sum_V_2_fu_76 = ret_V_fu_378_p2.read().range(15, 4);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        index_reg_475 = index_fu_171_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        prev_output_channel_2_reg_531 = prev_output_channel_V_q0.read();
        select_ln55_reg_526 = select_ln55_fu_327_p3.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read())) {
        r_V_6_reg_541 = r_V_6_fu_454_p2.read();
    }
}

void CORRELATE_1::thread_add_ln1116_3_fu_306_p2() {
    add_ln1116_3_fu_306_p2 = (!add_ln1116_fu_300_p2.read().is_01() || !zext_ln1116_fu_275_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(add_ln1116_fu_300_p2.read()) + sc_biguint<11>(zext_ln1116_fu_275_p1.read()));
}

void CORRELATE_1::thread_add_ln1116_fu_300_p2() {
    add_ln1116_fu_300_p2 = (!zext_ln1116_7_fu_296_p1.read().is_01() || !zext_ln1116_6_fu_285_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(zext_ln1116_7_fu_296_p1.read()) + sc_biguint<11>(zext_ln1116_6_fu_285_p1.read()));
}

void CORRELATE_1::thread_add_ln49_fu_177_p2() {
    add_ln49_fu_177_p2 = (!ap_const_lv21_71D.is_01() || !phi_mul_reg_130.read().is_01())? sc_lv<21>(): (sc_biguint<21>(ap_const_lv21_71D) + sc_biguint<21>(phi_mul_reg_130.read()));
}

void CORRELATE_1::thread_add_ln65_fu_251_p2() {
    add_ln65_fu_251_p2 = (!trunc_ln50_fu_193_p1.read().is_01() || !ap_const_lv4_A.is_01())? sc_lv<4>(): (sc_biguint<4>(trunc_ln50_fu_193_p1.read()) + sc_bigint<4>(ap_const_lv4_A));
}

void CORRELATE_1::thread_add_ln71_2_fu_434_p2() {
    add_ln71_2_fu_434_p2 = (!phi_urem_reg_141.read().is_01() || !ap_const_lv10_1.is_01())? sc_lv<10>(): (sc_biguint<10>(phi_urem_reg_141.read()) + sc_biguint<10>(ap_const_lv10_1));
}

void CORRELATE_1::thread_add_ln71_fu_414_p2() {
    add_ln71_fu_414_p2 = (!phi_urem33_reg_153.read().is_01() || !ap_const_lv10_1.is_01())? sc_lv<10>(): (sc_biguint<10>(phi_urem33_reg_153.read()) + sc_biguint<10>(ap_const_lv10_1));
}

void CORRELATE_1::thread_and_ln65_fu_269_p2() {
    and_ln65_fu_269_p2 = (icmp_ln65_fu_257_p2.read() & icmp_ln65_1_fu_263_p2.read());
}

void CORRELATE_1::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void CORRELATE_1::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void CORRELATE_1::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void CORRELATE_1::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void CORRELATE_1::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void CORRELATE_1::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void CORRELATE_1::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
          esl_seteq<1,1,1>(icmp_ln46_fu_165_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void CORRELATE_1::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void CORRELATE_1::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && 
         esl_seteq<1,1,1>(icmp_ln46_fu_165_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void CORRELATE_1::thread_correlate_img_V_address0() {
    correlate_img_V_address0 =  (sc_lv<6>) (zext_ln68_fu_400_p1.read());
}

void CORRELATE_1::thread_correlate_img_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        correlate_img_V_ce0 = ap_const_logic_1;
    } else {
        correlate_img_V_ce0 = ap_const_logic_0;
    }
}

void CORRELATE_1::thread_correlate_img_V_d0() {
    correlate_img_V_d0 = ret_V_fu_378_p2.read().range(15, 4);
}

void CORRELATE_1::thread_correlate_img_V_we0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_92_reg_495.read()) && 
         esl_seteq<1,1,1>(and_ln65_reg_517.read(), ap_const_lv1_1))) {
        correlate_img_V_we0 = ap_const_logic_1;
    } else {
        correlate_img_V_we0 = ap_const_logic_0;
    }
}

void CORRELATE_1::thread_filter_V_address0() {
    filter_V_address0 =  (sc_lv<4>) (sext_ln62_fu_334_p1.read());
}

void CORRELATE_1::thread_filter_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        filter_V_ce0 = ap_const_logic_1;
    } else {
        filter_V_ce0 = ap_const_logic_0;
    }
}

void CORRELATE_1::thread_icmp_ln46_fu_165_p2() {
    icmp_ln46_fu_165_p2 = (!index_0_reg_119.read().is_01() || !ap_const_lv10_240.is_01())? sc_lv<1>(): sc_lv<1>(index_0_reg_119.read() == ap_const_lv10_240);
}

void CORRELATE_1::thread_icmp_ln55_1_fu_235_p2() {
    icmp_ln55_1_fu_235_p2 = (!trunc_ln51_fu_207_p1.read().is_01() || !ap_const_lv2_0.is_01())? sc_lv<1>(): sc_lv<1>(trunc_ln51_fu_207_p1.read() == ap_const_lv2_0);
}

void CORRELATE_1::thread_icmp_ln55_fu_229_p2() {
    icmp_ln55_fu_229_p2 = (!trunc_ln50_fu_193_p1.read().is_01() || !ap_const_lv4_3.is_01())? sc_lv<1>(): (sc_biguint<4>(trunc_ln50_fu_193_p1.read()) < sc_biguint<4>(ap_const_lv4_3));
}

void CORRELATE_1::thread_icmp_ln65_1_fu_263_p2() {
    icmp_ln65_1_fu_263_p2 = (!trunc_ln51_fu_207_p1.read().is_01() || !ap_const_lv2_2.is_01())? sc_lv<1>(): sc_lv<1>(trunc_ln51_fu_207_p1.read() == ap_const_lv2_2);
}

void CORRELATE_1::thread_icmp_ln65_fu_257_p2() {
    icmp_ln65_fu_257_p2 = (!add_ln65_fu_251_p2.read().is_01() || !ap_const_lv4_3.is_01())? sc_lv<1>(): (sc_biguint<4>(add_ln65_fu_251_p2.read()) < sc_biguint<4>(ap_const_lv4_3));
}

void CORRELATE_1::thread_icmp_ln71_2_fu_440_p2() {
    icmp_ln71_2_fu_440_p2 = (!add_ln71_2_fu_434_p2.read().is_01() || !ap_const_lv10_9.is_01())? sc_lv<1>(): (sc_biguint<10>(add_ln71_2_fu_434_p2.read()) < sc_biguint<10>(ap_const_lv10_9));
}

void CORRELATE_1::thread_icmp_ln71_fu_420_p2() {
    icmp_ln71_fu_420_p2 = (!add_ln71_fu_414_p2.read().is_01() || !ap_const_lv10_3.is_01())? sc_lv<1>(): (sc_biguint<10>(add_ln71_fu_414_p2.read()) < sc_biguint<10>(ap_const_lv10_3));
}

void CORRELATE_1::thread_index_filter_fu_395_p2() {
    index_filter_fu_395_p2 = (!select_ln55_reg_526.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_bigint<32>(select_ln55_reg_526.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void CORRELATE_1::thread_index_fu_171_p2() {
    index_fu_171_p2 = (!index_0_reg_119.read().is_01() || !ap_const_lv10_1.is_01())? sc_lv<10>(): (sc_biguint<10>(index_0_reg_119.read()) + sc_biguint<10>(ap_const_lv10_1));
}

void CORRELATE_1::thread_k_y_fu_215_p2() {
    k_y_fu_215_p2 = (!tmp_91_fu_183_p4.read().is_01() || !trunc_ln51_2_fu_211_p1.read().is_01())? sc_lv<7>(): (sc_biguint<7>(tmp_91_fu_183_p4.read()) + sc_biguint<7>(trunc_ln51_2_fu_211_p1.read()));
}

void CORRELATE_1::thread_lhs_V_fu_363_p3() {
    lhs_V_fu_363_p3 = esl_concat<12,4>(select_ln55_5_fu_356_p3.read(), ap_const_lv4_0);
}

void CORRELATE_1::thread_mul_ln50_fu_201_p1() {
    mul_ln50_fu_201_p1 =  (sc_lv<4>) (mul_ln50_fu_201_p10.read());
}

void CORRELATE_1::thread_mul_ln50_fu_201_p10() {
    mul_ln50_fu_201_p10 = esl_zext<10,4>(trunc_ln50_fu_193_p1.read());
}

void CORRELATE_1::thread_mul_ln50_fu_201_p2() {
    mul_ln50_fu_201_p2 = (!ap_const_lv10_16.is_01() || !mul_ln50_fu_201_p1.read().is_01())? sc_lv<10>(): sc_biguint<10>(ap_const_lv10_16) * sc_biguint<4>(mul_ln50_fu_201_p1.read());
}

void CORRELATE_1::thread_prev_output_channel_V_address0() {
    prev_output_channel_V_address0 =  (sc_lv<13>) (zext_ln1116_8_fu_312_p1.read());
}

void CORRELATE_1::thread_prev_output_channel_V_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        prev_output_channel_V_ce0 = ap_const_logic_1;
    } else {
        prev_output_channel_V_ce0 = ap_const_logic_0;
    }
}

void CORRELATE_1::thread_ret_V_fu_378_p2() {
    ret_V_fu_378_p2 = (!zext_ln728_fu_371_p1.read().is_01() || !zext_ln703_fu_375_p1.read().is_01())? sc_lv<25>(): (sc_biguint<25>(zext_ln728_fu_371_p1.read()) + sc_biguint<25>(zext_ln703_fu_375_p1.read()));
}

void CORRELATE_1::thread_select_ln55_1_fu_320_p3() {
    select_ln55_1_fu_320_p3 = (!icmp_ln55_1_reg_505.read()[0].is_01())? sc_lv<32>(): ((icmp_ln55_1_reg_505.read()[0].to_bool())? ap_const_lv32_0: index_filter_2_fu_72.read());
}

void CORRELATE_1::thread_select_ln55_4_fu_349_p3() {
    select_ln55_4_fu_349_p3 = (!icmp_ln55_1_reg_505.read()[0].is_01())? sc_lv<12>(): ((icmp_ln55_1_reg_505.read()[0].to_bool())? ap_const_lv12_0: sum_V_2_fu_76.read());
}

void CORRELATE_1::thread_select_ln55_5_fu_356_p3() {
    select_ln55_5_fu_356_p3 = (!icmp_ln55_reg_499.read()[0].is_01())? sc_lv<12>(): ((icmp_ln55_reg_499.read()[0].to_bool())? select_ln55_4_fu_349_p3.read(): sum_V_2_fu_76.read());
}

void CORRELATE_1::thread_select_ln55_fu_327_p3() {
    select_ln55_fu_327_p3 = (!icmp_ln55_reg_499.read()[0].is_01())? sc_lv<32>(): ((icmp_ln55_reg_499.read()[0].to_bool())? select_ln55_1_fu_320_p3.read(): index_filter_2_fu_72.read());
}

void CORRELATE_1::thread_select_ln71_2_fu_446_p3() {
    select_ln71_2_fu_446_p3 = (!icmp_ln71_2_fu_440_p2.read()[0].is_01())? sc_lv<10>(): ((icmp_ln71_2_fu_440_p2.read()[0].to_bool())? add_ln71_2_fu_434_p2.read(): ap_const_lv10_0);
}

void CORRELATE_1::thread_select_ln71_fu_426_p3() {
    select_ln71_fu_426_p3 = (!icmp_ln71_fu_420_p2.read()[0].is_01())? sc_lv<10>(): ((icmp_ln71_fu_420_p2.read()[0].to_bool())? add_ln71_fu_414_p2.read(): ap_const_lv10_0);
}

void CORRELATE_1::thread_sext_ln62_fu_334_p1() {
    sext_ln62_fu_334_p1 = esl_sext<64,32>(select_ln55_fu_327_p3.read());
}

void CORRELATE_1::thread_tmp_128_fu_289_p3() {
    tmp_128_fu_289_p3 = esl_concat<4,2>(tmp_reg_511.read(), ap_const_lv2_0);
}

void CORRELATE_1::thread_tmp_91_fu_183_p4() {
    tmp_91_fu_183_p4 = phi_mul_reg_130.read().range(20, 14);
}

void CORRELATE_1::thread_tmp_92_fu_221_p3() {
    tmp_92_fu_221_p3 = k_y_fu_215_p2.read().range(6, 6);
}

void CORRELATE_1::thread_tmp_s_fu_278_p3() {
    tmp_s_fu_278_p3 = esl_concat<4,6>(tmp_reg_511.read(), ap_const_lv6_0);
}

void CORRELATE_1::thread_trunc_ln50_fu_193_p1() {
    trunc_ln50_fu_193_p1 = phi_urem_reg_141.read().range(4-1, 0);
}

void CORRELATE_1::thread_trunc_ln51_2_fu_211_p1() {
    trunc_ln51_2_fu_211_p1 = phi_urem33_reg_153.read().range(7-1, 0);
}

void CORRELATE_1::thread_trunc_ln51_fu_207_p1() {
    trunc_ln51_fu_207_p1 = phi_urem33_reg_153.read().range(2-1, 0);
}

void CORRELATE_1::thread_zext_ln1116_6_fu_285_p1() {
    zext_ln1116_6_fu_285_p1 = esl_zext<11,10>(tmp_s_fu_278_p3.read());
}

void CORRELATE_1::thread_zext_ln1116_7_fu_296_p1() {
    zext_ln1116_7_fu_296_p1 = esl_zext<11,6>(tmp_128_fu_289_p3.read());
}

void CORRELATE_1::thread_zext_ln1116_8_fu_312_p1() {
    zext_ln1116_8_fu_312_p1 = esl_zext<64,11>(add_ln1116_3_fu_306_p2.read());
}

void CORRELATE_1::thread_zext_ln1116_fu_275_p1() {
    zext_ln1116_fu_275_p1 = esl_zext<11,7>(k_y_reg_490.read());
}

void CORRELATE_1::thread_zext_ln68_fu_400_p1() {
    zext_ln68_fu_400_p1 = esl_zext<64,7>(tmp_91_reg_485.read());
}

void CORRELATE_1::thread_zext_ln703_fu_375_p1() {
    zext_ln703_fu_375_p1 = esl_zext<25,24>(r_V_6_reg_541.read());
}

void CORRELATE_1::thread_zext_ln728_fu_371_p1() {
    zext_ln728_fu_371_p1 = esl_zext<25,16>(lhs_V_fu_363_p3.read());
}

void CORRELATE_1::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln46_fu_165_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()) && esl_seteq<1,1,1>(icmp_ln46_fu_165_p2.read(), ap_const_lv1_0) && esl_seteq<1,1,1>(tmp_92_fu_221_p3.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state6;
            } else {
                ap_NS_fsm = ap_ST_fsm_state3;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_fsm_state5;
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state2;
            break;
        default : 
            ap_NS_fsm = "XXXXXX";
            break;
    }
}

}
