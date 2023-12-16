# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 97
set hasByteEnable 0
set MemName layer5_biases_lay5jm
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 3
set AddrRange 12
set AddrWd 4
set TrueReset 0
set IsROM 1
set ROMData { "000" "110" "111" "001" "101" "111" "001" "111" "110" "111" "111" "000" }
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
set ID 98
set hasByteEnable 0
set MemName layer5_weights_la6jw
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 6
set AddrRange 1296
set AddrWd 11
set TrueReset 0
set IsROM 1
set ROMData { "111111" "000001" "111101" "111110" "000001" "000001" "111111" "000001" "000011" "000011" "000001" "000000" "111111" "000000" "111110" "111110" "000100" "000000" "000001" "000011" "000100" "000011" "000011" "000011" "000000" "000001" "111111" "111111" "111110" "111110" "000001" "000001" "111110" "111100" "000001" "000000" "000000" "000000" "111111" "111111" "111100" "111111" "000000" "000011" "000000" "111111" "000001" "000001" "000001" "111111" "111110" "111111" "111010" "000000" "111100" "000010" "000101" "111101" "000001" "000000" "000000" "000010" "111111" "111100" "000001" "111111" "000010" "111111" "111111" "111111" "000010" "000001" "000000" "000001" "111111" "000000" "000001" "111111" "111111" "000011" "111111" "111111" "000010" "000001" "111110" "000001" "111110" "111101" "000000" "000000" "111100" "000010" "111100" "000001" "000010" "000000" "000000" "111111" "111111" "111101" "000011" "000000" "000000" "000001" "111110" "000000" "000001" "000000" "111111" "000000" "000000" "000000" "111101" "111111" "111111" "111111" "111101" "111111" "111101" "111111" "000000" "000001" "000011" "000000" "111110" "111111" "111111" "000000" "000000" "111111" "111011" "111111" "000001" "111111" "000000" "000000" "000000" "000000" "000000" "111111" "000010" "000010" "111111" "111111" "000011" "111100" "000000" "000000" "111100" "111111" "000010" "111111" "111110" "000000" "111111" "111110" "000000" "000101" "111110" "000011" "111100" "000000" "000010" "000001" "111110" "111111" "111101" "111110" "111111" "111101" "000001" "000001" "111101" "000000" "111101" "111111" "111111" "000010" "111111" "111111" "000000" "000000" "111111" "000000" "111111" "000000" "111111" "000010" "000001" "000001" "000000" "000000" "000001" "111111" "000001" "111111" "111101" "111111" "000000" "111111" "111100" "000001" "111110" "000000" "111111" "111110" "000000" "000001" "111110" "111111" "111111" "000001" "111111" "111110" "111111" "000000" "000000" "111100" "000100" "000001" "111101" "111111" "000000" "111011" "000000" "000000" "000000" "000001" "000000" "000000" "000000" "000000" "111100" "000000" "111100" "111011" "111100" "000000" "111111" "000000" "111110" "111111" "000101" "000001" "000010" "000000" "000000" "111101" "111111" "000010" "000001" "000000" "111110" "000010" "111111" "111111" "000001" "000001" "111101" "111011" "000110" "111110" "000010" "000000" "111111" "001000" "000001" "111010" "110110" "000001" "000110" "010010" "111111" "000001" "000001" "111001" "111101" "111100" "000001" "000100" "111111" "000000" "111011" "000101" "111110" "111110" "111011" "000000" "111111" "111110" "000010" "000000" "111010" "111111" "111111" "111100" "111110" "111110" "111110" "111111" "000000" "111101" "111110" "000101" "000010" "111110" "111111" "000100" "000001" "111010" "111101" "000000" "000001" "000000" "111111" "000001" "111110" "111111" "111111" "111111" "000001" "000010" "111100" "111111" "111111" "000000" "111101" "000000" "111111" "000000" "000001" "111111" "111101" "111110" "111101" "111101" "111111" "111100" "111111" "000001" "000100" "111110" "111101" "111101" "111100" "111100" "111010" "111101" "111111" "000001" "111100" "111111" "111110" "000000" "111111" "000001" "000001" "000000" "111111" "000001" "111111" "111111" "111110" "000000" "111101" "111111" "111111" "111111" "000000" "000001" "111100" "000000" "001001" "110110" "111110" "000110" "000001" "111010" "000011" "000111" "111101" "111100" "110111" "000111" "000011" "000100" "111111" "111001" "111110" "000001" "000011" "111110" "111111" "000001" "000011" "111110" "000001" "000010" "111111" "111110" "000001" "000000" "000000" "000010" "000001" "000000" "000000" "000000" "000000" "000000" "111110" "111010" "000000" "000010" "000010" "111111" "000011" "000010" "000001" "111111" "111111" "000000" "000000" "000000" "111101" "111111" "000000" "111110" "111110" "111110" "000000" "000000" "111111" "111111" "000010" "111111" "000000" "111111" "000000" "111110" "111110" "111100" "111111" "000000" "000000" "111110" "000101" "111111" "000011" "111111" "111110" "111111" "111101" "111110" "000000" "111110" "000001" "111110" "000010" "000001" "111110" "000000" "111111" "111110" "111111" "000001" "000001" "111111" "000100" "111010" "111101" "000000" "111100" "111110" "000011" "000010" "000001" "111111" "000000" "000000" "111100" "111100" "000011" "001000" "111111" "000001" "000111" "111110" "000010" "111110" "111100" "111100" "111111" "111110" "111110" "000011" "000011" "000001" "111011" "111111" "000010" "000011" "111110" "111110" "000000" "000000" "111111" "000000" "000000" "000000" "000001" "000011" "000000" "111111" "000000" "000000" "000001" "000001" "111101" "000000" "000000" "111111" "111111" "000000" "000001" "000000" "000000" "111111" "000000" "000000" "111110" "111111" "000000" "111111" "111111" "000000" "111111" "000001" "111111" "000000" "000001" "111111" "111101" "111111" "111111" "111111" "000000" "111110" "000000" "111111" "000000" "000001" "000001" "000000" "000001" "000000" "000001" "111110" "000011" "000000" "000010" "111101" "000000" "000001" "000000" "000001" "000001" "000001" "111110" "000000" "000001" "000001" "000001" "111111" "000001" "111111" "000000" "111101" "000000" "111110" "111101" "111111" "000001" "000000" "000001" "000010" "000001" "000000" "000010" "111101" "001010" "000111" "110110" "000110" "000010" "111111" "111110" "000101" "111111" "111000" "111111" "000011" "111111" "000001" "000000" "000000" "111111" "000010" "000010" "111111" "000001" "000000" "000000" "000001" "111111" "000000" "000001" "111111" "000010" "111111" "000001" "111101" "000010" "000000" "111111" "000001" "111110" "000010" "111011" "111111" "111100" "111110" "000000" "111111" "000010" "111111" "111111" "111111" "000000" "111111" "111111" "000000" "000000" "111110" "000000" "111110" "000001" "111110" "000010" "111110" "111100" "111111" "000000" "111111" "111110" "000001" "111110" "000001" "000001" "000001" "000000" "000001" "000001" "111111" "111010" "111101" "000011" "000000" "111101" "110110" "000011" "111110" "000001" "000000" "000000" "000011" "000000" "000000" "000000" "000000" "000101" "111111" "000000" "111110" "000101" "111101" "111100" "111011" "000001" "111111" "111111" "000100" "000000" "000001" "000011" "000010" "111011" "000100" "000010" "111111" "001101" "000000" "001010" "111111" "000000" "000011" "000001" "000011" "111110" "000000" "000000" "000011" "000001" "000000" "111110" "000010" "000000" "000010" "111110" "111111" "111111" "000001" "111111" "111101" "000010" "000000" "111110" "000010" "111111" "111111" "000001" "000001" "000001" "000000" "111111" "111011" "111000" "000000" "000100" "111110" "000101" "111011" "000001" "111111" "000000" "111111" "000000" "000001" "111110" "000000" "000000" "111110" "000010" "111101" "111111" "000000" "111110" "111101" "000001" "000000" "000010" "000000" "000010" "000001" "000000" "111111" "111011" "111101" "000010" "000001" "000000" "111111" "000110" "111111" "000010" "000011" "111110" "111101" "111011" "111111" "000000" "111110" "111110" "111110" "111111" "111111" "000000" "111101" "000000" "000000" "000011" "111111" "000000" "111110" "111110" "000101" "000000" "111111" "111111" "000010" "000001" "000001" "000010" "000010" "000001" "111001" "001010" "000011" "111100" "000000" "000000" "111111" "000001" "111111" "000000" "000000" "000100" "000001" "111011" "111101" "000000" "111111" "000001" "111101" "111101" "000000" "000001" "111111" "000000" "111111" "111110" "111111" "111111" "000000" "111111" "111101" "000101" "111111" "000011" "000001" "111011" "111111" "000100" "111100" "111100" "000000" "111110" "111010" "000000" "000010" "111111" "000001" "111111" "111101" "000001" "000001" "111111" "111110" "000000" "111100" "000000" "111110" "111111" "000010" "111011" "111110" "000011" "000000" "000010" "000000" "111110" "111111" "111110" "111101" "000010" "111100" "111111" "111110" "111101" "111111" "000100" "111111" "111101" "111011" "111110" "111111" "111101" "111110" "111111" "111111" "111100" "111111" "000110" "000000" "111110" "111111" "000000" "000001" "000000" "000000" "111100" "000111" "111101" "000100" "000101" "111111" "000010" "000000" "111110" "000010" "000001" "000000" "000000" "110011" "000111" "000100" "000010" "111011" "111110" "001000" "000000" "000110" "111100" "000100" "000001" "111110" "000010" "111110" "000001" "000000" "000000" "000010" "111011" "000010" "000010" "111110" "111101" "000000" "111111" "000000" "000000" "000000" "111111" "111100" "111110" "000001" "000000" "111111" "111100" "111110" "000001" "000000" "111101" "000001" "111110" "000011" "111111" "111110" "000001" "000000" "000000" "111101" "000000" "000001" "000000" "111101" "111111" "111110" "111111" "111110" "000001" "000000" "111110" "111111" "000011" "000000" "111110" "111111" "000000" "111111" "000000" "111100" "111111" "111110" "000000" "000000" "000100" "000001" "111110" "111111" "000000" "111110" "111010" "111110" "111100" "000001" "111111" "111101" "000000" "000001" "000010" "000000" "111111" "111111" "111111" "000010" "111111" "111110" "111100" "000011" "000100" "000101" "000011" "000000" "000000" "111100" "111100" "111111" "111101" "000001" "000100" "000110" "111000" "111101" "111100" "001111" "000000" "111110" "111100" "110011" "001000" "111111" "111110" "111100" "000001" "000101" "111101" "111100" "111101" "000000" "000000" "111111" "111011" "000000" "111111" "111100" "000010" "000011" "111101" "111111" "000010" "111010" "000000" "111111" "111101" "111110" "111101" "111100" "000011" "000111" "111111" "111110" "111100" "111101" "111001" "000010" "111011" "000000" "111111" "111111" "000001" "000000" "000000" "000000" "000000" "000000" "000001" "111111" "111111" "111111" "000000" "000000" "000010" "111111" "000100" "111110" "111111" "000000" "111110" "111111" "111100" "000001" "000001" "111111" "000011" "111110" "000011" "111111" "000000" "000001" "000000" "111111" "000010" "111111" "000000" "111111" "000000" "111111" "111111" "000000" "000000" "111111" "111101" "000000" "111111" "111111" "111110" "111011" "000100" "000001" "111010" "111111" "000010" "000011" "111110" "111110" "000011" "000000" "111111" "000001" "111101" "000100" "110111" "000000" "000000" "111101" "111101" "111110" "111011" "111100" "111111" "111110" "000001" "000001" "000000" "111111" "111110" "000001" "000000" "111111" "111110" "000000" "111111" "111001" "000011" "000000" "000001" "111111" "000001" "111110" "000001" "111110" "111110" "111111" "000000" "000001" "000000" "000000" "000100" "111111" "111110" "000001" "000000" "000010" "000000" "000000" "000000" "000001" "111110" "111111" "111111" "000000" "000000" "111111" "000000" "000001" "111111" "111111" "000001" "000000" "000010" "111111" "111110" "111111" "111111" "111111" "111110" "111110" "111101" "111110" "000000" "111010" "111101" "000011" "000001" "000000" "000000" "111110" "000000" "000100" "111110" "111110" "000001" "111111" "000000" "000010" "111101" "000001" "000000" "000000" "000011" "111111" "111110" "111100" "111100" "111110" "000100" "000100" "111100" "000001" "000010" "111011" "111100" "111111" "111010" "111000" "110111" "000111" "111101" "000000" "111111" "110101" "111010" "111011" "000001" "000011" "111110" "111010" "111011" "000001" "000000" "000110" "000001" "111111" "111010" "111111" "000011" "000000" "111010" "000010" "111111" "111111" "000011" "000010" "000001" "111111" "000000" "111100" "000001" "111111" "111011" "111111" "000011" "111111" "000011" "000001" "111111" "000001" "000010" "111000" "000011" "000010" "111101" "111101" "000000" "111111" "000001" "111110" "111101" "000000" "000010" "000010" "111111" "111110" "111111" "111110" }
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


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name corr4_out_V_valid_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr4_out_V_valid_V \
    op interface \
    ports { corr4_out_V_valid_V_dout { I 1 vector } corr4_out_V_valid_V_empty_n { I 1 bit } corr4_out_V_valid_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name corr4_out_V_data_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr4_out_V_data_V \
    op interface \
    ports { corr4_out_V_data_V_dout { I 12 vector } corr4_out_V_data_V_empty_n { I 1 bit } corr4_out_V_data_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name corr4_out_V_keep_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr4_out_V_keep_V \
    op interface \
    ports { corr4_out_V_keep_V_dout { I 4 vector } corr4_out_V_keep_V_empty_n { I 1 bit } corr4_out_V_keep_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name corr4_out_V_user_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr4_out_V_user_V \
    op interface \
    ports { corr4_out_V_user_V_dout { I 1 vector } corr4_out_V_user_V_empty_n { I 1 bit } corr4_out_V_user_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name corr4_out_V_last_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr4_out_V_last_V \
    op interface \
    ports { corr4_out_V_last_V_dout { I 1 vector } corr4_out_V_last_V_empty_n { I 1 bit } corr4_out_V_last_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name corr4_out_V_id_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr4_out_V_id_V \
    op interface \
    ports { corr4_out_V_id_V_dout { I 1 vector } corr4_out_V_id_V_empty_n { I 1 bit } corr4_out_V_id_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name corr4_out_V_dest_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_corr4_out_V_dest_V \
    op interface \
    ports { corr4_out_V_dest_V_dout { I 1 vector } corr4_out_V_dest_V_empty_n { I 1 bit } corr4_out_V_dest_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name corr5_out_V_valid_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_valid_V \
    op interface \
    ports { corr5_out_V_valid_V_din { O 1 vector } corr5_out_V_valid_V_full_n { I 1 bit } corr5_out_V_valid_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name corr5_out_V_data_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_data_V \
    op interface \
    ports { corr5_out_V_data_V_din { O 12 vector } corr5_out_V_data_V_full_n { I 1 bit } corr5_out_V_data_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name corr5_out_V_keep_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_keep_V \
    op interface \
    ports { corr5_out_V_keep_V_din { O 4 vector } corr5_out_V_keep_V_full_n { I 1 bit } corr5_out_V_keep_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name corr5_out_V_user_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_user_V \
    op interface \
    ports { corr5_out_V_user_V_din { O 1 vector } corr5_out_V_user_V_full_n { I 1 bit } corr5_out_V_user_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name corr5_out_V_last_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_last_V \
    op interface \
    ports { corr5_out_V_last_V_din { O 1 vector } corr5_out_V_last_V_full_n { I 1 bit } corr5_out_V_last_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name corr5_out_V_id_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_id_V \
    op interface \
    ports { corr5_out_V_id_V_din { O 1 vector } corr5_out_V_id_V_full_n { I 1 bit } corr5_out_V_id_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name corr5_out_V_dest_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_corr5_out_V_dest_V \
    op interface \
    ports { corr5_out_V_dest_V_din { O 1 vector } corr5_out_V_dest_V_full_n { I 1 bit } corr5_out_V_dest_V_write { O 1 bit } } \
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


