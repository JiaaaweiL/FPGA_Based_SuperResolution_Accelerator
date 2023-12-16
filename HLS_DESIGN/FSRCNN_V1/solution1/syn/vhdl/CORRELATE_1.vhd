-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2019.1
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CORRELATE_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    prev_output_channel_V_address0 : OUT STD_LOGIC_VECTOR (12 downto 0);
    prev_output_channel_V_ce0 : OUT STD_LOGIC;
    prev_output_channel_V_q0 : IN STD_LOGIC_VECTOR (11 downto 0);
    filter_V_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    filter_V_ce0 : OUT STD_LOGIC;
    filter_V_q0 : IN STD_LOGIC_VECTOR (11 downto 0);
    correlate_img_V_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    correlate_img_V_ce0 : OUT STD_LOGIC;
    correlate_img_V_we0 : OUT STD_LOGIC;
    correlate_img_V_d0 : OUT STD_LOGIC_VECTOR (11 downto 0) );
end;


architecture behav of CORRELATE_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (5 downto 0) := "000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (5 downto 0) := "000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (5 downto 0) := "001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (5 downto 0) := "010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv21_0 : STD_LOGIC_VECTOR (20 downto 0) := "000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_240 : STD_LOGIC_VECTOR (9 downto 0) := "1001000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv21_71D : STD_LOGIC_VECTOR (20 downto 0) := "000000000011100011101";
    constant ap_const_lv32_E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001110";
    constant ap_const_lv32_14 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010100";
    constant ap_const_lv10_16 : STD_LOGIC_VECTOR (9 downto 0) := "0000010110";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001111";
    constant ap_const_lv10_3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000011";
    constant ap_const_lv10_9 : STD_LOGIC_VECTOR (9 downto 0) := "0000001001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal index_fu_171_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal index_reg_475 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal add_ln49_fu_177_p2 : STD_LOGIC_VECTOR (20 downto 0);
    signal add_ln49_reg_480 : STD_LOGIC_VECTOR (20 downto 0);
    signal icmp_ln46_fu_165_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_91_fu_183_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_91_reg_485 : STD_LOGIC_VECTOR (6 downto 0);
    signal k_y_fu_215_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal k_y_reg_490 : STD_LOGIC_VECTOR (6 downto 0);
    signal tmp_92_fu_221_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_92_reg_495 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln55_fu_229_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln55_reg_499 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln55_1_fu_235_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln55_1_reg_505 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_511 : STD_LOGIC_VECTOR (3 downto 0);
    signal and_ln65_fu_269_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln65_reg_517 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal select_ln55_fu_327_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln55_reg_526 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal prev_output_channel_2_reg_531 : STD_LOGIC_VECTOR (11 downto 0);
    signal r_V_6_fu_454_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal r_V_6_reg_541 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal select_ln71_fu_426_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal select_ln71_2_fu_446_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal index_0_reg_119 : STD_LOGIC_VECTOR (9 downto 0);
    signal phi_mul_reg_130 : STD_LOGIC_VECTOR (20 downto 0);
    signal phi_urem_reg_141 : STD_LOGIC_VECTOR (9 downto 0);
    signal phi_urem33_reg_153 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln1116_8_fu_312_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln62_fu_334_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln68_fu_400_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal index_filter_2_fu_72 : STD_LOGIC_VECTOR (31 downto 0);
    signal index_filter_fu_395_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sum_V_2_fu_76 : STD_LOGIC_VECTOR (11 downto 0);
    signal trunc_ln50_fu_193_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal mul_ln50_fu_201_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal trunc_ln51_2_fu_211_p1 : STD_LOGIC_VECTOR (6 downto 0);
    signal trunc_ln51_fu_207_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal mul_ln50_fu_201_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln65_fu_251_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln65_fu_257_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln65_1_fu_263_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_s_fu_278_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal tmp_128_fu_289_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal zext_ln1116_7_fu_296_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln1116_6_fu_285_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln1116_fu_300_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal zext_ln1116_fu_275_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln1116_3_fu_306_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal select_ln55_1_fu_320_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal select_ln55_4_fu_349_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal select_ln55_5_fu_356_p3 : STD_LOGIC_VECTOR (11 downto 0);
    signal lhs_V_fu_363_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln728_fu_371_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal zext_ln703_fu_375_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal ret_V_fu_378_p2 : STD_LOGIC_VECTOR (24 downto 0);
    signal add_ln71_fu_414_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln71_fu_420_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln71_2_fu_434_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln71_2_fu_440_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (5 downto 0);
    signal mul_ln50_fu_201_p10 : STD_LOGIC_VECTOR (9 downto 0);

    component FSRCNN_mul_mul_12CeG IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (11 downto 0);
        din1 : IN STD_LOGIC_VECTOR (11 downto 0);
        dout : OUT STD_LOGIC_VECTOR (23 downto 0) );
    end component;



begin
    FSRCNN_mul_mul_12CeG_U56 : component FSRCNN_mul_mul_12CeG
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 12,
        din1_WIDTH => 12,
        dout_WIDTH => 24)
    port map (
        din0 => prev_output_channel_2_reg_531,
        din1 => filter_V_q0,
        dout => r_V_6_fu_454_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    index_0_reg_119_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                index_0_reg_119 <= index_reg_475;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                index_0_reg_119 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    phi_mul_reg_130_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                phi_mul_reg_130 <= add_ln49_reg_480;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                phi_mul_reg_130 <= ap_const_lv21_0;
            end if; 
        end if;
    end process;

    phi_urem33_reg_153_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                phi_urem33_reg_153 <= select_ln71_fu_426_p3;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                phi_urem33_reg_153 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;

    phi_urem_reg_141_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                phi_urem_reg_141 <= select_ln71_2_fu_446_p3;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                phi_urem_reg_141 <= ap_const_lv10_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln46_fu_165_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                add_ln49_reg_480 <= add_ln49_fu_177_p2;
                k_y_reg_490 <= k_y_fu_215_p2;
                tmp_91_reg_485 <= phi_mul_reg_130(20 downto 14);
                tmp_92_reg_495 <= k_y_fu_215_p2(6 downto 6);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_92_fu_221_p3 = ap_const_lv1_0) and (icmp_ln46_fu_165_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                and_ln65_reg_517 <= and_ln65_fu_269_p2;
                icmp_ln55_1_reg_505 <= icmp_ln55_1_fu_235_p2;
                icmp_ln55_reg_499 <= icmp_ln55_fu_229_p2;
                tmp_reg_511 <= mul_ln50_fu_201_p2(9 downto 6);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((tmp_92_reg_495 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                index_filter_2_fu_72 <= index_filter_fu_395_p2;
                sum_V_2_fu_76 <= ret_V_fu_378_p2(15 downto 4);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                index_reg_475 <= index_fu_171_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                prev_output_channel_2_reg_531 <= prev_output_channel_V_q0;
                select_ln55_reg_526 <= select_ln55_fu_327_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state5)) then
                r_V_6_reg_541 <= r_V_6_fu_454_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln46_fu_165_p2, tmp_92_fu_221_p3)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((icmp_ln46_fu_165_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((tmp_92_fu_221_p3 = ap_const_lv1_1) and (icmp_ln46_fu_165_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                ap_NS_fsm <= ap_ST_fsm_state4;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXXX";
        end case;
    end process;
    add_ln1116_3_fu_306_p2 <= std_logic_vector(unsigned(add_ln1116_fu_300_p2) + unsigned(zext_ln1116_fu_275_p1));
    add_ln1116_fu_300_p2 <= std_logic_vector(unsigned(zext_ln1116_7_fu_296_p1) + unsigned(zext_ln1116_6_fu_285_p1));
    add_ln49_fu_177_p2 <= std_logic_vector(unsigned(ap_const_lv21_71D) + unsigned(phi_mul_reg_130));
    add_ln65_fu_251_p2 <= std_logic_vector(unsigned(trunc_ln50_fu_193_p1) + unsigned(ap_const_lv4_A));
    add_ln71_2_fu_434_p2 <= std_logic_vector(unsigned(phi_urem_reg_141) + unsigned(ap_const_lv10_1));
    add_ln71_fu_414_p2 <= std_logic_vector(unsigned(phi_urem33_reg_153) + unsigned(ap_const_lv10_1));
    and_ln65_fu_269_p2 <= (icmp_ln65_fu_257_p2 and icmp_ln65_1_fu_263_p2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);

    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1, ap_CS_fsm_state2, icmp_ln46_fu_165_p2)
    begin
        if ((((icmp_ln46_fu_165_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2)) or ((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, icmp_ln46_fu_165_p2)
    begin
        if (((icmp_ln46_fu_165_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    correlate_img_V_address0 <= zext_ln68_fu_400_p1(6 - 1 downto 0);

    correlate_img_V_ce0_assign_proc : process(ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            correlate_img_V_ce0 <= ap_const_logic_1;
        else 
            correlate_img_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    correlate_img_V_d0 <= ret_V_fu_378_p2(15 downto 4);

    correlate_img_V_we0_assign_proc : process(tmp_92_reg_495, and_ln65_reg_517, ap_CS_fsm_state6)
    begin
        if (((ap_const_lv1_1 = and_ln65_reg_517) and (tmp_92_reg_495 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            correlate_img_V_we0 <= ap_const_logic_1;
        else 
            correlate_img_V_we0 <= ap_const_logic_0;
        end if; 
    end process;

    filter_V_address0 <= sext_ln62_fu_334_p1(4 - 1 downto 0);

    filter_V_ce0_assign_proc : process(ap_CS_fsm_state4)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state4)) then 
            filter_V_ce0 <= ap_const_logic_1;
        else 
            filter_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln46_fu_165_p2 <= "1" when (index_0_reg_119 = ap_const_lv10_240) else "0";
    icmp_ln55_1_fu_235_p2 <= "1" when (trunc_ln51_fu_207_p1 = ap_const_lv2_0) else "0";
    icmp_ln55_fu_229_p2 <= "1" when (unsigned(trunc_ln50_fu_193_p1) < unsigned(ap_const_lv4_3)) else "0";
    icmp_ln65_1_fu_263_p2 <= "1" when (trunc_ln51_fu_207_p1 = ap_const_lv2_2) else "0";
    icmp_ln65_fu_257_p2 <= "1" when (unsigned(add_ln65_fu_251_p2) < unsigned(ap_const_lv4_3)) else "0";
    icmp_ln71_2_fu_440_p2 <= "1" when (unsigned(add_ln71_2_fu_434_p2) < unsigned(ap_const_lv10_9)) else "0";
    icmp_ln71_fu_420_p2 <= "1" when (unsigned(add_ln71_fu_414_p2) < unsigned(ap_const_lv10_3)) else "0";
    index_filter_fu_395_p2 <= std_logic_vector(signed(select_ln55_reg_526) + signed(ap_const_lv32_1));
    index_fu_171_p2 <= std_logic_vector(unsigned(index_0_reg_119) + unsigned(ap_const_lv10_1));
    k_y_fu_215_p2 <= std_logic_vector(unsigned(tmp_91_fu_183_p4) + unsigned(trunc_ln51_2_fu_211_p1));
    lhs_V_fu_363_p3 <= (select_ln55_5_fu_356_p3 & ap_const_lv4_0);
    mul_ln50_fu_201_p1 <= mul_ln50_fu_201_p10(4 - 1 downto 0);
    mul_ln50_fu_201_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln50_fu_193_p1),10));
    mul_ln50_fu_201_p2 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_const_lv10_16) * unsigned(mul_ln50_fu_201_p1), 10));
    prev_output_channel_V_address0 <= zext_ln1116_8_fu_312_p1(13 - 1 downto 0);

    prev_output_channel_V_ce0_assign_proc : process(ap_CS_fsm_state3)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            prev_output_channel_V_ce0 <= ap_const_logic_1;
        else 
            prev_output_channel_V_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    ret_V_fu_378_p2 <= std_logic_vector(unsigned(zext_ln728_fu_371_p1) + unsigned(zext_ln703_fu_375_p1));
    select_ln55_1_fu_320_p3 <= 
        ap_const_lv32_0 when (icmp_ln55_1_reg_505(0) = '1') else 
        index_filter_2_fu_72;
    select_ln55_4_fu_349_p3 <= 
        ap_const_lv12_0 when (icmp_ln55_1_reg_505(0) = '1') else 
        sum_V_2_fu_76;
    select_ln55_5_fu_356_p3 <= 
        select_ln55_4_fu_349_p3 when (icmp_ln55_reg_499(0) = '1') else 
        sum_V_2_fu_76;
    select_ln55_fu_327_p3 <= 
        select_ln55_1_fu_320_p3 when (icmp_ln55_reg_499(0) = '1') else 
        index_filter_2_fu_72;
    select_ln71_2_fu_446_p3 <= 
        add_ln71_2_fu_434_p2 when (icmp_ln71_2_fu_440_p2(0) = '1') else 
        ap_const_lv10_0;
    select_ln71_fu_426_p3 <= 
        add_ln71_fu_414_p2 when (icmp_ln71_fu_420_p2(0) = '1') else 
        ap_const_lv10_0;
        sext_ln62_fu_334_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(select_ln55_fu_327_p3),64));

    tmp_128_fu_289_p3 <= (tmp_reg_511 & ap_const_lv2_0);
    tmp_91_fu_183_p4 <= phi_mul_reg_130(20 downto 14);
    tmp_92_fu_221_p3 <= k_y_fu_215_p2(6 downto 6);
    tmp_s_fu_278_p3 <= (tmp_reg_511 & ap_const_lv6_0);
    trunc_ln50_fu_193_p1 <= phi_urem_reg_141(4 - 1 downto 0);
    trunc_ln51_2_fu_211_p1 <= phi_urem33_reg_153(7 - 1 downto 0);
    trunc_ln51_fu_207_p1 <= phi_urem33_reg_153(2 - 1 downto 0);
    zext_ln1116_6_fu_285_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_278_p3),11));
    zext_ln1116_7_fu_296_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_128_fu_289_p3),11));
    zext_ln1116_8_fu_312_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln1116_3_fu_306_p2),64));
    zext_ln1116_fu_275_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_y_reg_490),11));
    zext_ln68_fu_400_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_91_reg_485),64));
    zext_ln703_fu_375_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_V_6_reg_541),25));
    zext_ln728_fu_371_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(lhs_V_fu_363_p3),25));
end behav;
