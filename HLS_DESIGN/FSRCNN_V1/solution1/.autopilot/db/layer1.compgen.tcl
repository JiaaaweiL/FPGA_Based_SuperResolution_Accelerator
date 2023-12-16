# This script segment is generated automatically by AutoPilot

set id 6
set name FSRCNN_mul_mul_12ocq
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 12
set in0_signed 1
set in1_width 14
set in1_signed 0
set out_width 26
set exp i0*i1
set arg_lists {i0 {12 1 +} i1 {14 0 +} p {26 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 9
set hasByteEnable 0
set MemName layer1_weights_lacud
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 6
set AddrRange 1400
set AddrWd 11
set TrueReset 0
set IsROM 1
set ROMData { "111111" "000010" "000000" "000000" "111111" "000010" "111111" "000011" "111111" "000000" "111111" "000000" "111111" "111111" "000000" "111111" "000000" "000000" "111111" "111111" "111110" "000001" "111110" "000000" "111111" "000000" "000001" "000000" "111111" "111110" "000000" "111111" "000000" "111111" "111101" "111111" "111111" "000001" "000010" "000000" "111101" "111111" "111111" "000000" "000000" "000001" "000000" "111111" "000000" "111110" "000000" "000000" "111110" "000000" "111111" "000000" "000010" "111111" "111111" "000000" "111111" "111101" "111111" "111011" "111111" "000000" "111110" "111111" "000000" "111111" "000000" "000001" "111111" "111110" "000010" "000000" "000001" "111001" "000000" "111111" "000000" "111101" "000001" "111111" "000011" "000000" "000000" "000001" "000000" "000001" "111101" "111111" "000000" "000000" "000010" "000001" "000001" "000000" "000000" "000000" "000001" "000000" "111111" "000001" "000000" "000001" "000011" "111111" "000011" "000010" "111111" "111100" "000010" "000001" "000001" "111101" "111111" "000110" "000000" "111010" "000001" "001110" "000100" "111101" "111101" "000010" "000000" "000000" "001101" "000000" "111110" "111110" "111110" "111111" "111100" "111111" "000000" "000000" "000000" "111111" "111110" "000000" "000010" "111101" "111110" "111110" "000000" "000001" "000000" "000000" "111101" "010000" "111011" "111111" "111111" "111111" "111111" "111100" "000001" "111100" "111110" "000010" "000000" "111111" "111110" "111111" "000010" "000000" "111111" "111111" "111111" "000000" "000001" "111101" "000001" "000101" "000001" "000000" "000000" "000000" "111111" "111111" "111111" "000001" "111110" "000000" "111110" "000000" "000000" "000101" "000000" "111111" "111111" "000011" "111111" "000001" "111111" "111111" "111101" "111101" "000000" "111110" "111110" "111110" "000000" "111110" "000000" "111111" "000001" "000000" "111110" "000000" "111111" "111111" "111111" "111110" "000000" "111110" "000000" "000000" "000000" "000000" "111111" "000000" "000000" "000000" "111111" "111111" "000011" "111111" "111111" "000000" "111101" "000000" "111111" "000000" "000001" "000000" "000000" "000000" "000000" "000000" "000000" "111111" "111111" "111111" "000000" "111111" "000000" "111110" "111110" "000000" "111111" "000000" "000000" "000001" "111111" "111110" "111111" "111111" "111111" "000000" "111110" "000000" "111110" "111110" "000100" "111111" "000000" "000000" "000000" "000001" "000000" "000001" "111111" "000000" "111111" "000000" "111111" "000000" "000000" "000000" "111111" "111111" "000000" "000000" "000000" "111100" "000000" "111110" "111101" "000000" "000000" "000001" "111111" "000000" "111111" "000000" "000000" "000000" "111111" "111110" "000010" "000000" "111110" "111111" "111111" "000100" "000000" "000001" "111111" "000010" "000000" "111101" "000000" "111111" "111111" "111111" "000000" "111111" "000001" "000010" "000000" "000001" "000001" "111101" "111111" "000000" "000000" "111110" "000000" "111111" "000001" "000100" "000001" "111110" "111111" "111111" "000000" "111101" "000001" "000000" "111111" "001101" "000001" "000000" "000011" "111110" "111101" "000000" "000000" "000001" "000001" "111110" "000010" "111111" "111111" "000011" "111101" "111111" "000001" "000010" "000000" "111001" "000010" "111111" "111110" "111100" "111111" "111110" "111101" "000010" "000001" "000000" "111000" "000000" "111110" "000001" "000000" "111101" "111011" "000100" "000000" "111101" "111110" "000101" "111101" "000000" "111110" "111101" "111110" "000101" "000110" "000010" "111110" "000100" "000000" "000000" "111110" "111000" "000110" "101001" "000011" "000010" "000110" "111101" "111110" "111011" "110101" "000010" "111111" "000011" "111101" "001000" "000011" "111110" "000000" "111001" "000000" "000010" "000001" "111111" "000000" "001001" "000100" "000000" "000010" "111011" "111111" "000001" "001001" "101010" "000110" "111101" "000001" "111101" "000010" "000111" "111100" "111010" "000001" "111000" "000110" "111111" "000010" "111000" "111101" "111100" "000011" "000000" "111110" "111110" "110000" "111100" "111100" "111010" "110010" "000000" "000001" "000000" "000000" "000000" "000010" "111100" "000001" "111101" "000010" "111111" "000011" "110111" "000000" "111111" "000000" "001001" "000011" "111111" "000010" "111111" "000100" "000101" "111110" "111111" "111111" "000010" "111111" "000000" "111111" "000001" "111110" "000001" "000001" "000100" "111111" "111101" "000000" "001011" "000001" "000100" "111111" "111111" "000000" "111111" "111110" "111111" "111110" "111111" "000100" "000000" "111110" "000100" "000010" "000001" "000011" "111111" "111111" "111110" "111110" "111111" "000000" "000000" "111111" "000000" "111111" "000000" "111101" "000000" "111111" "000000" "111111" "111011" "000010" "000000" "000000" "000000" "111110" "111110" "000000" "000011" "000000" "111111" "111111" "000000" "000010" "111111" "000010" "000000" "101110" "111111" "111111" "111100" "111111" "111100" "111111" "111010" "000010" "111111" "000000" "111111" "111111" "000001" "000010" "000000" "000001" "000010" "000001" "000000" "111101" "111101" "111101" "000000" "000110" "000001" "000001" "111110" "000001" "111100" "111111" "111101" "110100" "111111" "000000" "000000" "000000" "111110" "000001" "111101" "000000" "000001" "000000" "001101" "000111" "000001" "000000" "000011" "111110" "000001" "110101" "000001" "111011" "000000" "000000" "000000" "111111" "000001" "111100" "111111" "000000" "000010" "111111" "000001" "000001" "000000" "000110" "111111" "111111" "000011" "000101" "000100" "111101" "111110" "111100" "111101" "000110" "111111" "000101" "111110" "111100" "111101" "000000" "000001" "000000" "111100" "111111" "000101" "000001" "000010" "111101" "000001" "111011" "000001" "111111" "000101" "111101" "110110" "000010" "111101" "000000" "000101" "000001" "000011" "000100" "111001" "010000" "111110" "001010" "111110" "000100" "111111" "000001" "000010" "000101" "111001" "111101" "111010" "000010" "111101" "000011" "111110" "111011" "110100" "000011" "111011" "110011" "111110" "000110" "101111" "000110" "111011" "101000" "001000" "110110" "001010" "001011" "001101" "111010" "111001" "001000" "001101" "111111" "111101" "000101" "101101" "111111" "111001" "001010" "000010" "000101" "111000" "010000" "001100" "111110" "000000" "000001" "110111" "110110" "000000" "000011" "011101" "111000" "110011" "111010" "000110" "110100" "000111" "111111" "111000" "011100" "111010" "000111" "001010" "101100" "000010" "110111" "111111" "001100" "111110" "001001" "001001" "000010" "111110" "110101" "000101" "001000" "000110" "010111" "111100" "111110" "111110" "111001" "000000" "111011" "111110" "110010" "001101" "111111" "000011" "111101" "000100" "111101" "000000" "000011" "001110" "111101" "111100" "110100" "111001" "111110" "111111" "001000" "111000" "000001" "000001" "111100" "110101" "000100" "000011" "000001" "111101" "000100" "111110" "000011" "000000" "111010" "001100" "111101" "000000" "000010" "111110" "000011" "111111" "000010" "000111" "111101" "111101" "000011" "111111" "000101" "111101" "111100" "111111" "111100" "000000" "000110" "000000" "000000" "111111" "000000" "000000" "000000" "111111" "111111" "111001" "000001" "111110" "000000" "000000" "111100" "000011" "000010" "000101" "000001" "000010" "000011" "111111" "111111" "111101" "111111" "111110" "000010" "000000" "111110" "000000" "111111" "000000" "000011" "000111" "000001" "000000" "000000" "000001" "000001" "111010" "000001" "000001" "000000" "111111" "111111" "000001" "111101" "000100" "111111" "111110" "111111" "111111" "111111" "111101" "000000" "000001" "000000" "111111" "000000" "000001" "111101" "111111" "111111" "000001" "000000" "000000" "001000" "000000" "111110" "111111" "111111" "000001" "000001" "000001" "111111" "111010" "000001" "000001" "000000" "111011" "000000" "000001" "111111" "111111" "111100" "111111" "111111" "111111" "111110" "111111" "000000" "000010" "111111" "111111" "111111" "111110" "000001" "000011" "111110" "111110" "111110" "111100" "111110" "111110" "111101" "111111" "111111" "010100" "000001" "000000" "111111" "111111" "111111" "000001" "111011" "111111" "111101" "000000" "000000" "000000" "111111" "111111" "111001" "111111" "000010" "111111" "000010" "111101" "000101" "111110" "000000" "000101" "111000" "000000" "111100" "111010" "000000" "111001" "000000" "000010" "000000" "000000" "111111" "000000" "000000" "000000" "111111" "000011" "111111" "000100" "000000" "000001" "111110" "111011" "000100" "000010" "001010" "000001" "110111" "000001" "000100" "111110" "111111" "111010" "111100" "111011" "000000" "111111" "111100" "111011" "000000" "111100" "111001" "000010" "111110" "111111" "111111" "111111" "000000" "000010" "111110" "000011" "111110" "000000" "000010" "000101" "111001" "111100" "000111" "111111" "000011" "111010" "010101" "000000" "111101" "110111" "000001" "111010" "111111" "111100" "111011" "000011" "000001" "000000" "111111" "111010" "100111" "000001" "000100" "000011" "000000" "110000" "111010" "001001" "111101" "111011" "000010" "000101" "000000" "111110" "000001" "000111" "000011" "111111" "001000" "000001" "111101" "000001" "001011" "000010" "111111" "000000" "111111" "000000" "000000" "111111" "000000" "111111" "111100" "000000" "111100" "111001" "000110" "000000" "111111" "111110" "111110" "000111" "000000" "111110" "000001" "111100" "111111" "000001" "000001" "000000" "000011" "000000" "000000" "000001" "111110" "110111" "000001" "110111" "000011" "111011" "111111" "000001" "111111" "000011" "001010" "000100" "111111" "111110" "111111" "000000" "111111" "000001" "111101" "000000" "111100" "111111" "000010" "111111" "000000" "000000" "000000" "111111" "000000" "111100" "111111" "000000" "001001" "111111" "000000" "000000" "111110" "000100" "111111" "111111" "111111" "000000" "111111" "000010" "111111" "111111" "111111" "111110" "111111" "000000" "111111" "111111" "111110" "111111" "111110" "111111" "000001" "000100" "111111" "000011" "111111" "000010" "000001" "111110" "000000" "111101" "000001" "111011" "000001" "000000" "000000" "111100" "111111" "000001" "000000" "111111" "000000" "111111" "000010" "111110" "000000" "000000" "000000" "111111" "111111" "111110" "111111" "111111" "000000" "111111" "000000" "111111" "111111" "111111" "000000" "111111" "000011" "111111" "111111" "111111" "000000" "111111" "000000" "000000" "000000" "111111" "000001" "000000" "000001" "000001" "111111" "111111" "111111" "000000" "000000" "111111" "000000" "111101" "111111" "000000" "111110" "111111" "000000" "000001" "111110" "111111" "000000" "111110" "000000" "000010" "111111" "111110" "111110" "000000" "000001" "000001" "000011" "000010" "111111" "000001" "000000" "000001" "000000" "000000" "111111" "000001" "111111" "111111" "111100" "000000" "111110" "000000" "111111" "111111" "111111" "000100" "111110" "000000" "111110" "111110" "000000" "000000" "111111" "111111" "111111" "111110" "000000" "000001" "000000" "111110" "000000" "000001" "000000" "000010" "111111" "111100" "111110" "000011" "000011" "111110" "000000" "000100" "000000" "000011" "000001" "000001" "111111" "000011" "000000" "000010" "111101" "000001" "000010" "111100" "111111" "111110" "111111" "111101" "111111" "111111" "111100" "111101" "000000" "000000" "110101" "000001" "000001" "000001" "111101" "111111" "000010" "000101" "110001" "000001" "000001" "000010" "111110" "000100" "000000" "000001" "000101" "000001" "000000" "000010" "111111" "000100" "010011" "111111" "000000" "111110" "111110" "011000" "000010" "000000" "111001" "000011" "111110" "000000" "111110" "111111" "000001" "000000" "111110" "111111" "111111" "111111" "000010" "111111" "000000" "000000" "000000" "000001" "000000" "000000" "000000" "000000" "000101" "000000" "000000" "111111" "000000" "111101" "111110" "000000" "000001" "000001" "111111" "111110" "111110" "111111" "111101" "111111" "000001" "000000" "000000" "111111" "111110" "111110" "000000" "000010" "000001" "000000" "000000" "000000" "000010" "000000" "000000" "111101" "111111" "111100" "111011" "111101" "000000" "000000" "000000" "000000" "111111" "111101" "000001" "111111" "000000" "000000" "111111" "000000" "111110" "000000" "000000" "000001" "111111" "000001" "000000" "111111" "111001" "000000" "000000" "111111" "000001" "111111" "111111" "000000" "111111" "111111" "111111" "000000" "000000" "000001" "000000" "111111" "000000" "111111" "111110" "000000" "000000" "111111" "000000" "111111" "111111" "111101" "000000" "000000" "000001" "000001" "111110" "000000" "111111" "111110" "000001" "000001" }
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
set ID 10
set hasByteEnable 0
set MemName layer1_biases_laydEe
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 5
set AddrRange 56
set AddrWd 6
set TrueReset 0
set IsROM 1
set ROMData { "00001" "11111" "11111" "00000" "11111" "00001" "11111" "11111" "11111" "11111" "00000" "11110" "00000" "00011" "00000" "00000" "00000" "00000" "11111" "01000" "00000" "00000" "11111" "11101" "00001" "11111" "00010" "11110" "00000" "11110" "11111" "11110" "00000" "11111" "00011" "00000" "00001" "00000" "11111" "00000" "00011" "11110" "00001" "00011" "00001" "11111" "00000" "11111" "00000" "11100" "00001" "00000" "11111" "00000" "00000" "00001" }
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
set ID 11
set hasByteEnable 0
set MemName layer1_subfilter_eOg
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 7
set AddrRange 25
set AddrWd 5
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


# Memory (RAM/ROM)  definition:
set ID 12
set hasByteEnable 0
set MemName layer1_correlate_fYi
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 12
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


# Memory (RAM/ROM)  definition:
set ID 13
set hasByteEnable 0
set MemName layer1_out_layer_g8j
set CoreName ap_simcore_mem
set PortList { 1 3 }
set DataWd 1
set AddrRange 3584
set AddrWd 12
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
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


# Memory (RAM/ROM)  definition:
set ID 14
set hasByteEnable 0
set MemName layer1_buffer_dathbi
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 32
set AddrRange 340
set AddrWd 9
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
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


# Memory (RAM/ROM)  definition:
set ID 15
set hasByteEnable 0
set MemName layer1_buffer_keeibs
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 4
set AddrRange 340
set AddrWd 9
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
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


# Memory (RAM/ROM)  definition:
set ID 16
set hasByteEnable 0
set MemName layer1_buffer_usekbM
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 1
set AddrRange 340
set AddrWd 9
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.36511
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


# Memory (RAM/ROM)  definition:
set ID 17
set hasByteEnable 0
set MemName layer1_img_channencg
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 12
set AddrRange 5508
set AddrWd 13
set impl_style block
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
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

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 18 \
    name stream_in_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {stream_in} \
    metadata {  } \
    op interface \
    ports { stream_in_TDATA { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'stream_in_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 19 \
    name stream_in_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {stream_in} \
    metadata {  } \
    op interface \
    ports { stream_in_TKEEP { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'stream_in_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 20 \
    name stream_in_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {stream_in} \
    metadata {  } \
    op interface \
    ports { stream_in_TSTRB { I 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'stream_in_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 21 \
    name stream_in_V_user_V \
    reset_level 1 \
    sync_rst true \
    corename {stream_in} \
    metadata {  } \
    op interface \
    ports { stream_in_TUSER { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'stream_in_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 22 \
    name stream_in_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {stream_in} \
    metadata {  } \
    op interface \
    ports { stream_in_TLAST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'stream_in_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 23 \
    name stream_in_V_id_V \
    reset_level 1 \
    sync_rst true \
    corename {stream_in} \
    metadata {  } \
    op interface \
    ports { stream_in_TID { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'stream_in_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 24 \
    name stream_in_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {stream_in} \
    metadata {  } \
    op interface \
    ports { stream_in_TVALID { I 1 bit } stream_in_TREADY { O 1 bit } stream_in_TDEST { I 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'stream_in_V_dest_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name corr1_out_V_valid_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr1_out_V_valid_V \
    op interface \
    ports { corr1_out_V_valid_V_din { O 1 vector } corr1_out_V_valid_V_full_n { I 1 bit } corr1_out_V_valid_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name corr1_out_V_data_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr1_out_V_data_V \
    op interface \
    ports { corr1_out_V_data_V_din { O 12 vector } corr1_out_V_data_V_full_n { I 1 bit } corr1_out_V_data_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name corr1_out_V_keep_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr1_out_V_keep_V \
    op interface \
    ports { corr1_out_V_keep_V_din { O 4 vector } corr1_out_V_keep_V_full_n { I 1 bit } corr1_out_V_keep_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name corr1_out_V_user_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr1_out_V_user_V \
    op interface \
    ports { corr1_out_V_user_V_din { O 1 vector } corr1_out_V_user_V_full_n { I 1 bit } corr1_out_V_user_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name corr1_out_V_last_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr1_out_V_last_V \
    op interface \
    ports { corr1_out_V_last_V_din { O 1 vector } corr1_out_V_last_V_full_n { I 1 bit } corr1_out_V_last_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name corr1_out_V_id_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr1_out_V_id_V \
    op interface \
    ports { corr1_out_V_id_V_din { O 1 vector } corr1_out_V_id_V_full_n { I 1 bit } corr1_out_V_id_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name corr1_out_V_dest_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr1_out_V_dest_V \
    op interface \
    ports { corr1_out_V_dest_V_din { O 1 vector } corr1_out_V_dest_V_full_n { I 1 bit } corr1_out_V_dest_V_write { O 1 bit } } \
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


