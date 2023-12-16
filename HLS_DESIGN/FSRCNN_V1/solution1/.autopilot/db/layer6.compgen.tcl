# This script segment is generated automatically by AutoPilot

set id 113
set name FSRCNN_mux_124_12bTr
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 12
set din0_signed 0
set din1_width 12
set din1_signed 0
set din2_width 12
set din2_signed 0
set din3_width 12
set din3_signed 0
set din4_width 12
set din4_signed 0
set din5_width 12
set din5_signed 0
set din6_width 12
set din6_signed 0
set din7_width 12
set din7_signed 0
set din8_width 12
set din8_signed 0
set din9_width 12
set din9_signed 0
set din10_width 12
set din10_signed 0
set din11_width 12
set din11_signed 0
set din12_width 4
set din12_signed 0
set dout_width 12
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 114
set name FSRCNN_mux_124_1_bUr
set corename simcore_mux
set op mux
set stage_num 1
set max_latency -1
set registered_input 1
set din0_width 1
set din0_signed 0
set din1_width 1
set din1_signed 0
set din2_width 1
set din2_signed 0
set din3_width 1
set din3_signed 0
set din4_width 1
set din4_signed 0
set din5_width 1
set din5_signed 0
set din6_width 1
set din6_signed 0
set din7_width 1
set din7_signed 0
set din8_width 1
set din8_signed 0
set din9_width 1
set din9_signed 0
set din10_width 1
set din10_signed 0
set din11_width 1
set din11_signed 0
set din12_width 4
set din12_signed 0
set dout_width 1
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mux] == "ap_gen_simcore_mux"} {
eval "ap_gen_simcore_mux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mux, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mux
set corename MuxnS
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 117
set hasByteEnable 0
set MemName layer6_biases_laybjl
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 3
set AddrRange 12
set AddrWd 4
set TrueReset 0
set IsROM 1
set ROMData { "101" "110" "000" "000" "110" "000" "111" "000" "000" "000" "000" "110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 118
set hasByteEnable 0
set MemName layer6_weights_labkl
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 5
set AddrRange 1296
set AddrWd 11
set TrueReset 0
set IsROM 1
set ROMData { "11111" "00000" "00000" "11111" "11101" "11111" "00000" "11111" "11101" "11101" "11110" "11110" "00001" "11011" "11011" "11111" "11100" "00010" "11111" "00010" "11111" "00010" "00000" "11111" "00001" "00100" "00011" "11111" "11001" "11110" "00000" "00001" "11111" "11101" "11011" "00000" "11100" "11111" "11110" "11110" "00000" "11110" "00001" "11111" "11101" "11110" "11111" "00001" "00010" "11100" "00011" "11100" "00000" "00010" "11011" "01001" "01000" "00001" "00110" "11011" "11011" "00001" "00001" "11111" "00000" "11100" "00000" "00000" "11000" "00000" "00001" "11101" "11111" "00000" "00000" "11110" "00001" "11111" "00000" "00000" "00000" "00001" "11110" "00001" "00001" "00010" "11110" "00010" "11111" "00001" "11110" "11100" "00011" "11110" "11111" "11110" "11101" "00000" "00001" "11111" "00001" "00100" "00000" "11111" "11101" "00001" "00001" "00001" "11110" "00000" "11111" "00000" "11110" "11111" "11111" "11110" "00001" "00001" "00000" "11111" "11111" "00001" "00000" "11110" "00110" "00000" "11111" "11111" "00000" "00000" "11111" "00000" "11110" "00000" "11111" "11110" "00001" "00001" "11111" "11110" "00000" "11110" "11111" "00001" "11110" "00000" "11110" "11110" "00000" "00010" "11110" "11101" "00010" "11111" "00011" "00011" "00001" "11000" "11010" "01001" "00001" "00000" "11111" "11111" "00011" "11111" "10110" "00000" "11011" "00100" "00010" "00001" "11011" "11101" "11101" "11101" "00001" "00011" "00010" "11111" "11101" "11111" "00000" "11111" "11111" "11110" "00000" "11110" "00000" "11111" "00010" "00100" "00000" "00000" "11110" "00000" "00011" "11111" "00000" "00000" "00010" "00010" "11011" "11011" "11111" "11110" "11111" "00000" "11110" "00001" "00000" "11111" "00000" "11110" "00000" "00001" "00001" "00001" "00000" "11111" "11110" "00001" "11111" "00001" "11111" "11111" "11111" "00000" "00000" "11110" "00000" "11111" "11111" "11110" "00001" "00010" "11110" "11110" "00000" "11111" "00000" "11111" "11111" "11111" "11110" "11111" "11111" "11111" "11110" "11110" "11111" "00001" "11111" "11111" "11111" "00001" "11110" "00000" "11110" "00000" "11011" "00000" "00010" "11111" "11111" "11001" "00100" "01000" "10100" "11001" "00001" "00110" "11101" "00000" "00001" "11100" "00001" "11110" "11111" "11111" "00000" "11110" "00010" "00000" "11110" "11111" "11111" "00001" "11101" "11111" "00000" "00000" "11111" "11111" "00000" "11111" "11111" "11111" "00000" "00001" "00000" "00000" "11110" "00001" "00000" "00001" "11111" "11101" "00011" "00001" "11111" "00000" "00000" "00001" "00000" "00000" "00000" "00001" "11111" "11110" "00000" "00001" "00000" "11111" "11111" "11111" "11110" "00001" "00001" "00000" "11110" "11111" "00010" "00000" "00001" "00000" "00010" "00110" "00010" "00001" "00011" "00101" "11100" "00000" "11111" "00001" "00000" "00101" "00000" "11111" "00001" "00000" "00100" "11111" "00010" "11111" "00010" "00000" "00001" "11111" "00011" "11111" "00000" "11100" "00001" "00100" "00000" "00011" "00101" "00001" "00010" "00001" "11110" "11010" "00010" "00000" "11100" "11001" "11111" "00111" "10100" "11001" "11110" "11001" "00011" "00000" "11111" "00001" "11100" "11101" "11111" "11100" "00100" "00001" "00000" "00001" "00000" "00000" "00000" "00001" "11101" "00000" "11110" "11110" "11110" "11110" "00001" "00001" "00001" "11110" "00000" "00001" "00000" "00000" "00010" "00010" "11101" "00001" "11101" "11110" "11111" "11111" "00000" "11111" "11111" "11110" "00000" "00000" "11111" "11111" "00001" "11111" "00011" "11111" "11110" "00010" "11111" "00010" "11110" "11101" "11110" "11110" "11110" "11101" "11110" "11100" "11011" "11111" "11100" "00000" "00000" "11011" "11100" "00010" "11111" "11101" "00010" "00001" "11111" "11110" "11011" "00000" "11111" "00001" "11111" "11101" "11011" "00001" "11110" "00000" "00000" "11100" "00000" "00010" "00010" "00000" "00001" "00001" "00011" "00001" "11100" "11110" "11111" "11010" "00001" "10011" "11100" "01100" "00110" "11011" "00001" "00111" "11101" "00000" "00000" "00000" "00101" "00010" "11110" "00000" "11010" "11110" "00100" "00000" "11111" "11111" "11110" "00001" "11111" "11110" "11110" "11111" "00000" "11111" "00000" "00001" "00000" "00000" "00001" "00011" "11110" "00110" "00001" "11010" "00010" "11111" "11101" "00001" "00001" "00001" "00000" "11111" "00000" "00011" "00000" "11011" "11111" "00100" "11111" "11101" "00000" "11110" "00000" "11111" "11111" "11111" "00001" "00001" "00001" "00000" "00000" "11111" "11101" "11110" "11110" "11111" "11101" "11101" "00100" "00000" "11101" "11100" "11101" "11100" "11111" "11111" "11101" "11111" "11110" "00001" "11110" "00000" "11101" "00000" "00001" "00001" "00001" "11111" "11110" "00010" "11100" "11110" "00000" "11100" "11111" "11110" "11110" "11011" "11111" "10011" "01000" "11100" "11100" "00000" "11001" "10110" "11110" "00110" "11100" "00001" "11110" "11111" "11110" "00000" "00000" "00011" "11101" "00100" "11101" "11101" "11101" "00000" "11110" "00000" "11111" "11110" "00010" "11110" "00001" "00000" "11110" "00001" "11111" "00000" "00000" "00001" "11111" "11101" "11111" "11001" "11011" "00001" "11101" "11110" "00100" "00000" "11110" "11111" "11111" "11111" "00000" "00010" "11111" "00011" "11110" "11101" "11110" "00000" "00000" "00000" "00001" "00000" "00000" "00000" "00000" "11111" "11110" "11110" "11110" "11110" "11111" "11011" "11101" "11110" "11101" "11110" "00011" "11001" "11101" "11111" "11101" "11011" "11111" "00000" "11110" "11101" "11101" "00000" "11110" "11111" "00001" "00001" "11110" "00000" "11101" "11110" "11111" "00011" "00000" "11101" "00000" "00000" "11100" "00010" "11111" "00011" "00010" "00110" "00001" "00011" "00101" "10011" "11101" "00000" "00101" "00001" "11100" "00000" "11011" "00000" "00000" "11101" "00011" "00010" "11111" "00001" "00001" "11101" "00010" "00010" "00001" "11111" "00000" "11111" "11111" "00000" "00001" "00001" "00000" "00000" "11111" "11100" "11110" "11111" "11111" "00000" "00000" "11101" "00000" "11111" "00010" "00010" "11111" "11111" "00000" "11111" "11111" "00001" "00000" "11111" "00000" "11111" "00011" "11111" "11111" "00001" "11111" "00000" "11111" "00000" "00001" "11111" "00000" "11110" "00001" "11111" "11101" "11111" "11011" "00000" "00000" "11101" "11001" "11110" "00000" "11101" "00100" "00100" "11111" "11101" "00000" "11111" "11111" "11111" "00001" "00001" "00000" "00000" "11111" "00000" "11111" "00000" "11111" "00000" "11111" "00010" "00001" "11100" "11110" "00001" "00011" "00011" "11101" "11100" "10111" "00100" "01000" "00111" "11101" "11101" "00000" "11111" "01010" "00100" "00110" "11010" "00000" "11111" "11111" "11110" "00001" "11111" "00000" "00000" "11110" "11111" "11111" "00000" "00000" "11111" "11111" "00000" "11111" "00000" "00000" "11110" "11111" "11111" "11111" "00000" "00000" "11111" "11111" "00000" "11111" "00000" "11111" "11111" "11101" "11111" "00001" "00010" "11111" "11111" "00000" "00000" "11111" "11111" "00000" "00000" "11111" "11111" "11111" "11111" "00001" "11111" "00000" "11110" "00000" "11111" "11111" "00010" "00000" "00000" "00001" "11110" "11111" "11001" "11010" "00010" "11110" "11110" "11111" "00001" "11101" "11101" "00100" "11101" "11101" "11111" "11110" "00000" "11100" "11111" "11110" "11110" "11111" "00001" "11110" "00001" "00010" "11101" "00011" "11101" "11111" "00011" "00101" "00110" "11110" "11101" "00010" "00010" "00001" "00001" "11100" "00010" "00000" "00100" "01001" "11101" "11101" "00001" "00000" "00000" "11101" "00010" "00001" "00000" "00001" "00011" "11110" "00011" "11101" "00000" "00001" "00000" "00011" "11110" "00001" "00000" "11100" "00001" "00000" "11111" "11011" "11111" "11111" "11111" "00011" "00001" "11110" "11111" "11010" "11100" "11101" "00011" "11001" "11100" "00101" "11110" "00010" "11111" "11110" "00001" "11110" "11111" "11110" "00000" "11110" "11110" "11111" "11111" "11110" "00010" "00001" "00010" "11111" "00000" "11111" "11110" "00000" "00001" "00001" "00010" "00010" "00001" "00010" "11110" "00001" "00000" "11111" "00010" "11111" "11111" "11110" "00000" "00011" "00010" "00000" "11111" "00000" "00000" "11111" "00001" "11111" "11101" "11111" "00001" "00000" "11110" "11101" "11100" "11110" "00010" "11100" "11100" "11100" "11110" "00001" "11101" "00100" "00110" "11011" "01100" "11011" "00100" "00010" "00010" "00001" "00100" "00000" "11101" "00000" "00000" "00000" "00000" "11101" "11101" "00000" "11111" "00000" "00001" "00000" "11111" "11111" "11111" "00001" "11010" "00010" "00000" "00010" "00010" "00001" "00000" "11111" "11011" "00001" "00011" "11010" "11101" "00000" "10101" "11001" "00010" "00000" "00001" "00100" "11010" "11111" "11110" "11111" "00010" "11101" "00001" "11101" "00001" "00010" "11010" "00010" "00100" "11111" "00001" "11111" "11111" "00000" "00000" "11111" "11110" "00001" "11110" "11110" "11110" "00000" "00001" "00000" "11111" "11111" "00001" "11110" "00001" "00001" "00100" "00001" "00011" "11111" "00001" "00010" "11111" "00001" "11110" "00010" "00001" "00000" "11101" "11110" "11101" "11110" "00000" "11110" "11111" "00001" "11111" "11110" "00000" "11110" "00010" "11111" "00001" "00100" "11011" "00001" "00011" "11100" "11111" "00011" "11101" "11101" "11010" "11111" "11010" "11111" "00010" "11111" "00010" "11011" "00000" "11100" "11101" "00000" "00110" "11111" "11101" "11111" "00000" "00000" "11111" "11110" "00001" "11111" "11111" "00001" "11110" "00001" "00000" "00010" "11111" "11101" "11111" "00100" "11101" "11111" "00011" "00000" "00011" "11100" "11101" "11010" "00000" "00001" "11110" "11110" "11110" "00000" "00001" "11111" "11100" "00011" "00000" "00000" "00000" "00001" "11110" "11111" "11111" "00000" "00000" "11111" "11111" "11111" "11111" "00000" "11111" "11110" "00010" "00000" "00001" "11110" "00001" "00001" "00010" "00100" "00010" "11111" "00000" "00000" "00001" "00001" "11111" "11110" "00001" "00001" "00000" "00000" "11111" "11111" "11110" "11111" "00101" "11111" "11101" "11111" "11111" "11100" "00001" "11110" "11111" "00101" "00100" "00111" "10010" "00010" "00111" "11100" "11011" "11111" "11110" "00010" "00011" "00011" "11110" "11110" "00000" "00001" "00001" "00010" "11101" "00100" "00001" "11101" "11110" "00000" "11111" "00000" "11101" "00000" "00001" "00001" "00000" "00000" "00000" "11111" "11101" "00000" "00000" "11100" "00000" "11101" "11100" "11101" "00010" "11111" "11110" "00001" "11101" "00001" "00000" "11111" "00010" "11101" "11101" "11101" "11111" "00010" "11111" "00001" "00000" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 3.254
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# Memory (RAM/ROM)  definition:
set ID 119
set hasByteEnable 0
set MemName layer6_out_layer_bvn
set CoreName ap_simcore_mem
set PortList { 1 3 }
set DataWd 1
set AddrRange 64
set AddrWd 6
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.322
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name corr5_out_V_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_valid_V \
    op interface \
    ports { corr5_out_V_valid_V_dout { I 1 vector } corr5_out_V_valid_V_empty_n { I 1 bit } corr5_out_V_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name corr5_out_V_data_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_data_V \
    op interface \
    ports { corr5_out_V_data_V_dout { I 12 vector } corr5_out_V_data_V_empty_n { I 1 bit } corr5_out_V_data_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name corr5_out_V_keep_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_keep_V \
    op interface \
    ports { corr5_out_V_keep_V_dout { I 4 vector } corr5_out_V_keep_V_empty_n { I 1 bit } corr5_out_V_keep_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name corr5_out_V_user_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_user_V \
    op interface \
    ports { corr5_out_V_user_V_dout { I 1 vector } corr5_out_V_user_V_empty_n { I 1 bit } corr5_out_V_user_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name corr5_out_V_last_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_last_V \
    op interface \
    ports { corr5_out_V_last_V_dout { I 1 vector } corr5_out_V_last_V_empty_n { I 1 bit } corr5_out_V_last_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name corr5_out_V_id_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_id_V \
    op interface \
    ports { corr5_out_V_id_V_dout { I 1 vector } corr5_out_V_id_V_empty_n { I 1 bit } corr5_out_V_id_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name corr5_out_V_dest_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_dest_V \
    op interface \
    ports { corr5_out_V_dest_V_dout { I 1 vector } corr5_out_V_dest_V_empty_n { I 1 bit } corr5_out_V_dest_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name corr6_out_V_valid_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr6_out_V_valid_V \
    op interface \
    ports { corr6_out_V_valid_V_din { O 1 vector } corr6_out_V_valid_V_full_n { I 1 bit } corr6_out_V_valid_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name corr6_out_V_data_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr6_out_V_data_V \
    op interface \
    ports { corr6_out_V_data_V_din { O 12 vector } corr6_out_V_data_V_full_n { I 1 bit } corr6_out_V_data_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name corr6_out_V_keep_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr6_out_V_keep_V \
    op interface \
    ports { corr6_out_V_keep_V_din { O 4 vector } corr6_out_V_keep_V_full_n { I 1 bit } corr6_out_V_keep_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name corr6_out_V_user_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr6_out_V_user_V \
    op interface \
    ports { corr6_out_V_user_V_din { O 1 vector } corr6_out_V_user_V_full_n { I 1 bit } corr6_out_V_user_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name corr6_out_V_last_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr6_out_V_last_V \
    op interface \
    ports { corr6_out_V_last_V_din { O 1 vector } corr6_out_V_last_V_full_n { I 1 bit } corr6_out_V_last_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name corr6_out_V_id_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr6_out_V_id_V \
    op interface \
    ports { corr6_out_V_id_V_din { O 1 vector } corr6_out_V_id_V_full_n { I 1 bit } corr6_out_V_id_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name corr6_out_V_dest_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr6_out_V_dest_V \
    op interface \
    ports { corr6_out_V_dest_V_din { O 1 vector } corr6_out_V_dest_V_full_n { I 1 bit } corr6_out_V_dest_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


