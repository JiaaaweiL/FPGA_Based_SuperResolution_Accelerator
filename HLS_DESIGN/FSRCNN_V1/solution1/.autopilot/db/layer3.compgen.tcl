# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 61
set hasByteEnable 0
set MemName layer3_biases_layDeQ
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 3
set AddrRange 12
set AddrWd 4
set TrueReset 0
set IsROM 1
set ROMData { "001" "110" "001" "111" "101" "000" "010" "010" "000" "101" "110" "110" }
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
set ID 62
set hasByteEnable 0
set MemName layer3_weights_laEe0
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 6
set AddrRange 1296
set AddrWd 11
set TrueReset 0
set IsROM 1
set ROMData { "111100" "111011" "111100" "111100" "111110" "111101" "000011" "111101" "000110" "111101" "000001" "000011" "111011" "111101" "110111" "000001" "111100" "000010" "000000" "000000" "111110" "000001" "000010" "111100" "111011" "111110" "111111" "111101" "111110" "111110" "111101" "111111" "000011" "111111" "000001" "000100" "111000" "000011" "111101" "111010" "111100" "111011" "111111" "111010" "000101" "000000" "000001" "000001" "111010" "000001" "111101" "000001" "000001" "000011" "000100" "111000" "111101" "000000" "111011" "110110" "111100" "000000" "111101" "000000" "000011" "111110" "111110" "111101" "001000" "111110" "111111" "111111" "111101" "000011" "000000" "111110" "000001" "111111" "000010" "111110" "000001" "000010" "111111" "111111" "000001" "111111" "000000" "000010" "000001" "111110" "000110" "000100" "000101" "111110" "111110" "111001" "111110" "111111" "000011" "111101" "111111" "111100" "000001" "111101" "111111" "000000" "111110" "000000" "111110" "000100" "000000" "111100" "111111" "000000" "000000" "111111" "111111" "000001" "000000" "111111" "111110" "111101" "000010" "000010" "000000" "111110" "000000" "000101" "000000" "111101" "111111" "111110" "111110" "111110" "000010" "111110" "111111" "111111" "000000" "000000" "000011" "111101" "111111" "000000" "111101" "110111" "000010" "111010" "000100" "000000" "111111" "111101" "000101" "000001" "111110" "000000" "111001" "000010" "111101" "001110" "001111" "111100" "111101" "000101" "000000" "111110" "000111" "001001" "111101" "111110" "000100" "111011" "111100" "000101" "000001" "000001" "000111" "111111" "000000" "111111" "000001" "111011" "000110" "111011" "111100" "111111" "000010" "000100" "000000" "000000" "111111" "111110" "111101" "111111" "111011" "000011" "111111" "000001" "000010" "111111" "000001" "111110" "000001" "111101" "111011" "111110" "000010" "111111" "000000" "000001" "000010" "000001" "111111" "000001" "111111" "000000" "000000" "111001" "111111" "111110" "111111" "000001" "111101" "111111" "111110" "111110" "000000" "000001" "000011" "111101" "111110" "111110" "111111" "000101" "000011" "000001" "111010" "000001" "000000" "111101" "000001" "111110" "111111" "000000" "111111" "000000" "000000" "111111" "000000" "111111" "000000" "000000" "000000" "000010" "111111" "111111" "111101" "000000" "000000" "111101" "111111" "111111" "111111" "111111" "000100" "000000" "000110" "111111" "000010" "000100" "111101" "110111" "111110" "111110" "111110" "001000" "000110" "111111" "000000" "000000" "000010" "000010" "000000" "000010" "000000" "111111" "111110" "111110" "000011" "000100" "111111" "111111" "000000" "000001" "111110" "111100" "000000" "000001" "111111" "111110" "000111" "111010" "111111" "000001" "000010" "000110" "000001" "000000" "111011" "000000" "111111" "111100" "000100" "111110" "000000" "111110" "111100" "111101" "000000" "000001" "000000" "000001" "000000" "000000" "111110" "000001" "111111" "111111" "000001" "000000" "000000" "111110" "000000" "111111" "111111" "111110" "000011" "000011" "111111" "111011" "000000" "111100" "111101" "111110" "000101" "000000" "000001" "111111" "111111" "000010" "111101" "000001" "111111" "000000" "111111" "111111" "111111" "000000" "000000" "000000" "000001" "000000" "111011" "111110" "000010" "000000" "111110" "111110" "000100" "000000" "000000" "000010" "001001" "111101" "001000" "111010" "000000" "111111" "110101" "000011" "110111" "000101" "010000" "111001" "111110" "000001" "111110" "000011" "000001" "111100" "000000" "111111" "111110" "000000" "000001" "000000" "000000" "000011" "111100" "000001" "000001" "000001" "000000" "000001" "111110" "000011" "000001" "000000" "000010" "111111" "000001" "111110" "111111" "111000" "000000" "000100" "001000" "111111" "111110" "000100" "000000" "111111" "111110" "000001" "000001" "000010" "000001" "111110" "111111" "111110" "000000" "000000" "111101" "111101" "111111" "111011" "111111" "000111" "111110" "111111" "111000" "111111" "000000" "111111" "000001" "111111" "000010" "111000" "111111" "000010" "000000" "000011" "000011" "111111" "111110" "111110" "111111" "111110" "111101" "000010" "000001" "000111" "000001" "000001" "000001" "111100" "000000" "111101" "000000" "111110" "111110" "111100" "000000" "001000" "111101" "111111" "111110" "111111" "000001" "000001" "110110" "000010" "111010" "111101" "000000" "000101" "111100" "111101" "110001" "111010" "000001" "000000" "000101" "000001" "000011" "000011" "000001" "001011" "111110" "000100" "111101" "000000" "111110" "111101" "000000" "111101" "000000" "111110" "111111" "001000" "111111" "000011" "111100" "000000" "111111" "111110" "000010" "111110" "000001" "111110" "111011" "000111" "000010" "000011" "000010" "111110" "111111" "000010" "000010" "111111" "111111" "000011" "000000" "001000" "000000" "000011" "111110" "000000" "111111" "111111" "111111" "111101" "111101" "000001" "111101" "111111" "111110" "000000" "111111" "111101" "000001" "000011" "111001" "000000" "111100" "111011" "111011" "000011" "111100" "111101" "111110" "000001" "000010" "000000" "111011" "111111" "111101" "000001" "000010" "000010" "111101" "111101" "111111" "000000" "000000" "111110" "111010" "111111" "111001" "000011" "111111" "000000" "111111" "000000" "111010" "111110" "000001" "000000" "111000" "111011" "000110" "110111" "111011" "000110" "111101" "111111" "000011" "000010" "111110" "000010" "111110" "000000" "000000" "111111" "000100" "000011" "111110" "111101" "111111" "111101" "111111" "111101" "111001" "000011" "111111" "000001" "000010" "000011" "111110" "111100" "111111" "111111" "000000" "111110" "111100" "000001" "000000" "111110" "000011" "000101" "111110" "111110" "111011" "000010" "111111" "111111" "111101" "000010" "000010" "111111" "000001" "000000" "111101" "000000" "111111" "000000" "111111" "111111" "000000" "000001" "111011" "000100" "000000" "111110" "000000" "111111" "111101" "111111" "000000" "000000" "111101" "000000" "111110" "000011" "111111" "111101" "111101" "000000" "111101" "000001" "111111" "000000" "111100" "000000" "111111" "111111" "000001" "111111" "111101" "111110" "000001" "000000" "000000" "111111" "000000" "000000" "000000" "111101" "111100" "111011" "111111" "111111" "000010" "111111" "000000" "000000" "111110" "111110" "111011" "000010" "000011" "111111" "111101" "111110" "110110" "000001" "000000" "000001" "111001" "111111" "000010" "111111" "111111" "111100" "111111" "000011" "111110" "000001" "111110" "000000" "111100" "000010" "111110" "000000" "000001" "111110" "000000" "111110" "111111" "000001" "111111" "000001" "111111" "111101" "000000" "111111" "000010" "111110" "000010" "000000" "111111" "111111" "111111" "111101" "111011" "111111" "111110" "000000" "000000" "000000" "000010" "000000" "111111" "111111" "111111" "111110" "111110" "111111" "111101" "111101" "111100" "111101" "111110" "000001" "111100" "000001" "000000" "000000" "111101" "111111" "111111" "000000" "111110" "111110" "111100" "000010" "111110" "111110" "000000" "111111" "111110" "111100" "000000" "111101" "000000" "000000" "111111" "111111" "111111" "000000" "111111" "111111" "111011" "111110" "111010" "000011" "000110" "111101" "111100" "111110" "111111" "000100" "000000" "111101" "000001" "111011" "111101" "000111" "000111" "111011" "000100" "001001" "111111" "111010" "111111" "111111" "111101" "111100" "000010" "111111" "111101" "000011" "111101" "111111" "000101" "111110" "000000" "111101" "111100" "000000" "000010" "111110" "111110" "000010" "000000" "000010" "111110" "111111" "000000" "111101" "111100" "000011" "111111" "111110" "111110" "111101" "111110" "000000" "000000" "000001" "000000" "111110" "111100" "000001" "000001" "111101" "000001" "000010" "111100" "000000" "111111" "000010" "111110" "111111" "000000" "111110" "000001" "000000" "000010" "000010" "000110" "111101" "000010" "000001" "111111" "111101" "111110" "111101" "000010" "000001" "000101" "000100" "000011" "111110" "000001" "000011" "111100" "111111" "000110" "000010" "000000" "000011" "111110" "000000" "000000" "000101" "111111" "111110" "111111" "000001" "000011" "000011" "000010" "111100" "111011" "000010" "111110" "111111" "111100" "000010" "111111" "000001" "111010" "111111" "111000" "001010" "000101" "111111" "111100" "110111" "111110" "001100" "111101" "111110" "111110" "111110" "111010" "111110" "000000" "111100" "111111" "111101" "111001" "000010" "000001" "000100" "000010" "111111" "000001" "111110" "111111" "111100" "000010" "000000" "111111" "000001" "111111" "000001" "111111" "111111" "111011" "000010" "000000" "000010" "000000" "000000" "111110" "111101" "000010" "111110" "000010" "000001" "111101" "000001" "111111" "111111" "000010" "111111" "000000" "111110" "000001" "000000" "000011" "000100" "000011" "000000" "000010" "111110" "111110" "000000" "111110" "000000" "111110" "111110" "001000" "000011" "000001" "000011" "000001" "111111" "000010" "000001" "111100" "000000" "111111" "111110" "000011" "111111" "000000" "000000" "111110" "111110" "000001" "000010" "111101" "000000" "111111" "111111" "000101" "000011" "000000" "000010" "000000" "111111" "000000" "000001" "000000" "111110" "000000" "111111" "111110" "000100" "000000" "000100" "000000" "111111" "111010" "000011" "111101" "111111" "111111" "111111" "000010" "000001" "111111" "000000" "111100" "111110" "000000" "000001" "111110" "000000" "000000" "000010" "001000" "111111" "111111" "000000" "111111" "111110" "000000" "000000" "111111" "111111" "000000" "000001" "000110" "000011" "111111" "000000" "111111" "111110" "111111" "000000" "111111" "111110" "000000" "000001" "000110" "111111" "111101" "111111" "111110" "111110" "000001" "000000" "111111" "000000" "000000" "000000" "111110" "111110" "000010" "111100" "000010" "000011" "000001" "111111" "000000" "000001" "111110" "111100" "000101" "111100" "000001" "000010" "000011" "000010" "000011" "000001" "111110" "111101" "111110" "111110" "111111" "111110" "000001" "111101" "111110" "000000" "000001" "000010" "000000" "111111" "111111" "111110" "000101" "000000" "000101" "111100" "000000" "000010" "000000" "111111" "000000" "000001" "111110" "111111" "000010" "111110" "111101" "000101" "000011" "000001" "000001" "111111" "111011" "111110" "000000" "000001" "000100" "111010" "111111" "000010" "111111" "000001" "000001" "000100" "111110" "000001" "111111" "111110" "000100" "111101" "000001" "111110" "111110" "111111" "000010" "000010" "111111" "000000" "111111" "111111" "000101" "111100" "111110" "000000" "111110" "000100" "000000" "000001" "111111" "111110" "000000" "111110" "000100" "111101" "111110" "111111" "111101" "000001" "000000" "000000" "000000" "000000" "000000" "000000" "111101" "000100" "000000" "000000" "000000" "111101" "000000" "000000" "000000" "111111" "000000" "111111" "111110" "111110" "111111" "111111" "000000" "111101" "000001" "000001" "111111" "000011" "111111" "111110" "000000" "111110" "111110" "000010" "111111" "111110" "000001" "000001" "111110" "111111" "000000" "000000" "111101" "111011" "000000" "000001" "000000" "111111" "111111" "000001" "000000" "111111" "111111" "111111" "111100" "111110" "000111" "111111" "111100" "110100" "000000" "111110" "000100" "000001" "111101" "111100" "111100" "000001" "111101" "000001" "000000" "111110" "111111" "111101" "111101" "111111" "000001" "111111" "111101" "000011" "111111" "000010" "111111" "111101" "111111" "000001" "111111" "111110" "000000" "111111" "111110" "111101" "111110" "111110" "111101" "111000" "000011" "000010" "000001" "000000" "000000" "000000" "111111" "000001" "000000" "000000" "000001" "111101" "111111" "111111" "111111" "111110" "111111" "111110" }
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
set ID 63
set hasByteEnable 0
set MemName layer3_subfilter_Ffa
set CoreName ap_simcore_mem
set PortList { 2 3 }
set DataWd 12
set AddrRange 9
set AddrWd 4
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
set ID 64
set hasByteEnable 0
set MemName layer3_img_channeHfu
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 1
set AddrRange 2376
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
set ID 65
set hasByteEnable 0
set MemName layer3_img_channeIfE
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 12
set AddrRange 2376
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
set ID 66
set hasByteEnable 0
set MemName layer3_img_channeJfO
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 4
set AddrRange 2376
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


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name corr2_out_V_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr2_out_V_valid_V \
    op interface \
    ports { corr2_out_V_valid_V_dout { I 1 vector } corr2_out_V_valid_V_empty_n { I 1 bit } corr2_out_V_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name corr2_out_V_data_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr2_out_V_data_V \
    op interface \
    ports { corr2_out_V_data_V_dout { I 12 vector } corr2_out_V_data_V_empty_n { I 1 bit } corr2_out_V_data_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name corr2_out_V_keep_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr2_out_V_keep_V \
    op interface \
    ports { corr2_out_V_keep_V_dout { I 4 vector } corr2_out_V_keep_V_empty_n { I 1 bit } corr2_out_V_keep_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name corr2_out_V_user_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr2_out_V_user_V \
    op interface \
    ports { corr2_out_V_user_V_dout { I 1 vector } corr2_out_V_user_V_empty_n { I 1 bit } corr2_out_V_user_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name corr2_out_V_last_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr2_out_V_last_V \
    op interface \
    ports { corr2_out_V_last_V_dout { I 1 vector } corr2_out_V_last_V_empty_n { I 1 bit } corr2_out_V_last_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name corr2_out_V_id_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr2_out_V_id_V \
    op interface \
    ports { corr2_out_V_id_V_dout { I 1 vector } corr2_out_V_id_V_empty_n { I 1 bit } corr2_out_V_id_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name corr2_out_V_dest_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr2_out_V_dest_V \
    op interface \
    ports { corr2_out_V_dest_V_dout { I 1 vector } corr2_out_V_dest_V_empty_n { I 1 bit } corr2_out_V_dest_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name corr3_out_V_valid_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr3_out_V_valid_V \
    op interface \
    ports { corr3_out_V_valid_V_din { O 1 vector } corr3_out_V_valid_V_full_n { I 1 bit } corr3_out_V_valid_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name corr3_out_V_data_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr3_out_V_data_V \
    op interface \
    ports { corr3_out_V_data_V_din { O 12 vector } corr3_out_V_data_V_full_n { I 1 bit } corr3_out_V_data_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name corr3_out_V_keep_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr3_out_V_keep_V \
    op interface \
    ports { corr3_out_V_keep_V_din { O 4 vector } corr3_out_V_keep_V_full_n { I 1 bit } corr3_out_V_keep_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name corr3_out_V_user_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr3_out_V_user_V \
    op interface \
    ports { corr3_out_V_user_V_din { O 1 vector } corr3_out_V_user_V_full_n { I 1 bit } corr3_out_V_user_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name corr3_out_V_last_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr3_out_V_last_V \
    op interface \
    ports { corr3_out_V_last_V_din { O 1 vector } corr3_out_V_last_V_full_n { I 1 bit } corr3_out_V_last_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name corr3_out_V_id_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr3_out_V_id_V \
    op interface \
    ports { corr3_out_V_id_V_din { O 1 vector } corr3_out_V_id_V_full_n { I 1 bit } corr3_out_V_id_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name corr3_out_V_dest_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr3_out_V_dest_V \
    op interface \
    ports { corr3_out_V_dest_V_din { O 1 vector } corr3_out_V_dest_V_full_n { I 1 bit } corr3_out_V_dest_V_write { O 1 bit } } \
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


