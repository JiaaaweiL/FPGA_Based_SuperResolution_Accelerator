set moduleName layer8
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {layer8}
set C_modelType { void 0 }
set C_modelArgList {
	{ corr7_out_V_valid_V int 1 regular {fifo 0 volatile }  }
	{ corr7_out_V_data_V int 12 regular {fifo 0 volatile }  }
	{ corr7_out_V_keep_V int 4 regular {fifo 0 volatile }  }
	{ corr7_out_V_user_V int 1 regular {fifo 0 volatile }  }
	{ corr7_out_V_last_V int 1 regular {fifo 0 volatile }  }
	{ corr7_out_V_id_V int 1 regular {fifo 0 volatile }  }
	{ corr7_out_V_dest_V int 1 regular {fifo 0 volatile }  }
	{ corr8_out_V_valid_V int 1 regular {fifo 1 volatile }  }
	{ corr8_out_V_data_V int 12 regular {fifo 1 volatile }  }
	{ corr8_out_V_keep_V int 4 regular {fifo 1 volatile }  }
	{ corr8_out_V_user_V int 1 regular {fifo 1 volatile }  }
	{ corr8_out_V_last_V int 1 regular {fifo 1 volatile }  }
	{ corr8_out_V_id_V int 1 regular {fifo 1 volatile }  }
	{ corr8_out_V_dest_V int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "corr7_out_V_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr7_out_V_data_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "corr7_out_V_keep_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "corr7_out_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr7_out_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr7_out_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr7_out_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr8_out_V_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr8_out_V_data_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr8_out_V_keep_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr8_out_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr8_out_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr8_out_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr8_out_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 52
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ corr7_out_V_valid_V_dout sc_in sc_lv 1 signal 0 } 
	{ corr7_out_V_valid_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ corr7_out_V_valid_V_read sc_out sc_logic 1 signal 0 } 
	{ corr7_out_V_data_V_dout sc_in sc_lv 12 signal 1 } 
	{ corr7_out_V_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ corr7_out_V_data_V_read sc_out sc_logic 1 signal 1 } 
	{ corr7_out_V_keep_V_dout sc_in sc_lv 4 signal 2 } 
	{ corr7_out_V_keep_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ corr7_out_V_keep_V_read sc_out sc_logic 1 signal 2 } 
	{ corr7_out_V_user_V_dout sc_in sc_lv 1 signal 3 } 
	{ corr7_out_V_user_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ corr7_out_V_user_V_read sc_out sc_logic 1 signal 3 } 
	{ corr7_out_V_last_V_dout sc_in sc_lv 1 signal 4 } 
	{ corr7_out_V_last_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ corr7_out_V_last_V_read sc_out sc_logic 1 signal 4 } 
	{ corr7_out_V_id_V_dout sc_in sc_lv 1 signal 5 } 
	{ corr7_out_V_id_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ corr7_out_V_id_V_read sc_out sc_logic 1 signal 5 } 
	{ corr7_out_V_dest_V_dout sc_in sc_lv 1 signal 6 } 
	{ corr7_out_V_dest_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ corr7_out_V_dest_V_read sc_out sc_logic 1 signal 6 } 
	{ corr8_out_V_valid_V_din sc_out sc_lv 1 signal 7 } 
	{ corr8_out_V_valid_V_full_n sc_in sc_logic 1 signal 7 } 
	{ corr8_out_V_valid_V_write sc_out sc_logic 1 signal 7 } 
	{ corr8_out_V_data_V_din sc_out sc_lv 12 signal 8 } 
	{ corr8_out_V_data_V_full_n sc_in sc_logic 1 signal 8 } 
	{ corr8_out_V_data_V_write sc_out sc_logic 1 signal 8 } 
	{ corr8_out_V_keep_V_din sc_out sc_lv 4 signal 9 } 
	{ corr8_out_V_keep_V_full_n sc_in sc_logic 1 signal 9 } 
	{ corr8_out_V_keep_V_write sc_out sc_logic 1 signal 9 } 
	{ corr8_out_V_user_V_din sc_out sc_lv 1 signal 10 } 
	{ corr8_out_V_user_V_full_n sc_in sc_logic 1 signal 10 } 
	{ corr8_out_V_user_V_write sc_out sc_logic 1 signal 10 } 
	{ corr8_out_V_last_V_din sc_out sc_lv 1 signal 11 } 
	{ corr8_out_V_last_V_full_n sc_in sc_logic 1 signal 11 } 
	{ corr8_out_V_last_V_write sc_out sc_logic 1 signal 11 } 
	{ corr8_out_V_id_V_din sc_out sc_lv 1 signal 12 } 
	{ corr8_out_V_id_V_full_n sc_in sc_logic 1 signal 12 } 
	{ corr8_out_V_id_V_write sc_out sc_logic 1 signal 12 } 
	{ corr8_out_V_dest_V_din sc_out sc_lv 1 signal 13 } 
	{ corr8_out_V_dest_V_full_n sc_in sc_logic 1 signal 13 } 
	{ corr8_out_V_dest_V_write sc_out sc_logic 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "corr7_out_V_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_valid_V", "role": "dout" }} , 
 	{ "name": "corr7_out_V_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_valid_V", "role": "empty_n" }} , 
 	{ "name": "corr7_out_V_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_valid_V", "role": "read" }} , 
 	{ "name": "corr7_out_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "corr7_out_V_data_V", "role": "dout" }} , 
 	{ "name": "corr7_out_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_data_V", "role": "empty_n" }} , 
 	{ "name": "corr7_out_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_data_V", "role": "read" }} , 
 	{ "name": "corr7_out_V_keep_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "corr7_out_V_keep_V", "role": "dout" }} , 
 	{ "name": "corr7_out_V_keep_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_keep_V", "role": "empty_n" }} , 
 	{ "name": "corr7_out_V_keep_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_keep_V", "role": "read" }} , 
 	{ "name": "corr7_out_V_user_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_user_V", "role": "dout" }} , 
 	{ "name": "corr7_out_V_user_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_user_V", "role": "empty_n" }} , 
 	{ "name": "corr7_out_V_user_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_user_V", "role": "read" }} , 
 	{ "name": "corr7_out_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_last_V", "role": "dout" }} , 
 	{ "name": "corr7_out_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_last_V", "role": "empty_n" }} , 
 	{ "name": "corr7_out_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_last_V", "role": "read" }} , 
 	{ "name": "corr7_out_V_id_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_id_V", "role": "dout" }} , 
 	{ "name": "corr7_out_V_id_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_id_V", "role": "empty_n" }} , 
 	{ "name": "corr7_out_V_id_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_id_V", "role": "read" }} , 
 	{ "name": "corr7_out_V_dest_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_dest_V", "role": "dout" }} , 
 	{ "name": "corr7_out_V_dest_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_dest_V", "role": "empty_n" }} , 
 	{ "name": "corr7_out_V_dest_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr7_out_V_dest_V", "role": "read" }} , 
 	{ "name": "corr8_out_V_valid_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_valid_V", "role": "din" }} , 
 	{ "name": "corr8_out_V_valid_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_valid_V", "role": "full_n" }} , 
 	{ "name": "corr8_out_V_valid_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_valid_V", "role": "write" }} , 
 	{ "name": "corr8_out_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "corr8_out_V_data_V", "role": "din" }} , 
 	{ "name": "corr8_out_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_data_V", "role": "full_n" }} , 
 	{ "name": "corr8_out_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_data_V", "role": "write" }} , 
 	{ "name": "corr8_out_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "corr8_out_V_keep_V", "role": "din" }} , 
 	{ "name": "corr8_out_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_keep_V", "role": "full_n" }} , 
 	{ "name": "corr8_out_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_keep_V", "role": "write" }} , 
 	{ "name": "corr8_out_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_user_V", "role": "din" }} , 
 	{ "name": "corr8_out_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_user_V", "role": "full_n" }} , 
 	{ "name": "corr8_out_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_user_V", "role": "write" }} , 
 	{ "name": "corr8_out_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_last_V", "role": "din" }} , 
 	{ "name": "corr8_out_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_last_V", "role": "full_n" }} , 
 	{ "name": "corr8_out_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_last_V", "role": "write" }} , 
 	{ "name": "corr8_out_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_id_V", "role": "din" }} , 
 	{ "name": "corr8_out_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_id_V", "role": "full_n" }} , 
 	{ "name": "corr8_out_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_id_V", "role": "write" }} , 
 	{ "name": "corr8_out_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_dest_V", "role": "din" }} , 
 	{ "name": "corr8_out_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_dest_V", "role": "full_n" }} , 
 	{ "name": "corr8_out_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_dest_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "29", "30", "31"],
		"CDFG" : "layer8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "73855", "EstimateLatencyMax" : "55372681",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_DECORRELATE_fu_2139"}],
		"Port" : [
			{"Name" : "corr7_out_V_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_user_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_id_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_dest_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_valid_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_user_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_id_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_dest_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_layer8_V_0", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_layer8_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.subfilter_layer_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decorrelate_img_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.decorr_temp_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_valid_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_keep_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_user_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_last_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_id_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_dest_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.expanded_channel_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_0_valid_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_1_valid_V_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_2_valid_V_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_3_valid_V_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_4_valid_V_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_5_valid_V_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_0_data_V_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_1_data_V_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_2_data_V_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_3_data_V_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_4_data_V_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_5_data_V_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_0_0_user_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_1_0_user_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DECORRELATE_fu_2139", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "DECORRELATE",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6589", "EstimateLatencyMax" : "9268",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "padded_channel_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "filter_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "expanded_channel_V", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DECORRELATE_fu_2139.FSRCNN_mac_muladdb7t_U152", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FSRCNN_mux_63_12_cyx_U157", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FSRCNN_mux_63_12_cyx_U158", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FSRCNN_mux_63_1_1_1_U159", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	layer8 {
		corr7_out_V_valid_V {Type I LastRead 18 FirstWrite -1}
		corr7_out_V_data_V {Type I LastRead 18 FirstWrite -1}
		corr7_out_V_keep_V {Type I LastRead 18 FirstWrite -1}
		corr7_out_V_user_V {Type I LastRead 18 FirstWrite -1}
		corr7_out_V_last_V {Type I LastRead 18 FirstWrite -1}
		corr7_out_V_id_V {Type I LastRead 18 FirstWrite -1}
		corr7_out_V_dest_V {Type I LastRead 18 FirstWrite -1}
		corr8_out_V_valid_V {Type O LastRead -1 FirstWrite 21}
		corr8_out_V_data_V {Type O LastRead -1 FirstWrite 21}
		corr8_out_V_keep_V {Type O LastRead -1 FirstWrite 21}
		corr8_out_V_user_V {Type O LastRead -1 FirstWrite 21}
		corr8_out_V_last_V {Type O LastRead -1 FirstWrite 21}
		corr8_out_V_id_V {Type O LastRead -1 FirstWrite 21}
		corr8_out_V_dest_V {Type O LastRead -1 FirstWrite 21}
		weights_layer8_V_0 {Type I LastRead -1 FirstWrite -1}}
	DECORRELATE {
		padded_channel_V {Type I LastRead 4 FirstWrite -1}
		filter_V {Type I LastRead 4 FirstWrite -1}
		expanded_channel_V {Type IO LastRead 4 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "73855", "Max" : "55372681"}
	, {"Name" : "Interval", "Min" : "73855", "Max" : "55372681"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	corr7_out_V_valid_V { ap_fifo {  { corr7_out_V_valid_V_dout fifo_data 0 1 }  { corr7_out_V_valid_V_empty_n fifo_status 0 1 }  { corr7_out_V_valid_V_read fifo_update 1 1 } } }
	corr7_out_V_data_V { ap_fifo {  { corr7_out_V_data_V_dout fifo_data 0 12 }  { corr7_out_V_data_V_empty_n fifo_status 0 1 }  { corr7_out_V_data_V_read fifo_update 1 1 } } }
	corr7_out_V_keep_V { ap_fifo {  { corr7_out_V_keep_V_dout fifo_data 0 4 }  { corr7_out_V_keep_V_empty_n fifo_status 0 1 }  { corr7_out_V_keep_V_read fifo_update 1 1 } } }
	corr7_out_V_user_V { ap_fifo {  { corr7_out_V_user_V_dout fifo_data 0 1 }  { corr7_out_V_user_V_empty_n fifo_status 0 1 }  { corr7_out_V_user_V_read fifo_update 1 1 } } }
	corr7_out_V_last_V { ap_fifo {  { corr7_out_V_last_V_dout fifo_data 0 1 }  { corr7_out_V_last_V_empty_n fifo_status 0 1 }  { corr7_out_V_last_V_read fifo_update 1 1 } } }
	corr7_out_V_id_V { ap_fifo {  { corr7_out_V_id_V_dout fifo_data 0 1 }  { corr7_out_V_id_V_empty_n fifo_status 0 1 }  { corr7_out_V_id_V_read fifo_update 1 1 } } }
	corr7_out_V_dest_V { ap_fifo {  { corr7_out_V_dest_V_dout fifo_data 0 1 }  { corr7_out_V_dest_V_empty_n fifo_status 0 1 }  { corr7_out_V_dest_V_read fifo_update 1 1 } } }
	corr8_out_V_valid_V { ap_fifo {  { corr8_out_V_valid_V_din fifo_data 1 1 }  { corr8_out_V_valid_V_full_n fifo_status 0 1 }  { corr8_out_V_valid_V_write fifo_update 1 1 } } }
	corr8_out_V_data_V { ap_fifo {  { corr8_out_V_data_V_din fifo_data 1 12 }  { corr8_out_V_data_V_full_n fifo_status 0 1 }  { corr8_out_V_data_V_write fifo_update 1 1 } } }
	corr8_out_V_keep_V { ap_fifo {  { corr8_out_V_keep_V_din fifo_data 1 4 }  { corr8_out_V_keep_V_full_n fifo_status 0 1 }  { corr8_out_V_keep_V_write fifo_update 1 1 } } }
	corr8_out_V_user_V { ap_fifo {  { corr8_out_V_user_V_din fifo_data 1 1 }  { corr8_out_V_user_V_full_n fifo_status 0 1 }  { corr8_out_V_user_V_write fifo_update 1 1 } } }
	corr8_out_V_last_V { ap_fifo {  { corr8_out_V_last_V_din fifo_data 1 1 }  { corr8_out_V_last_V_full_n fifo_status 0 1 }  { corr8_out_V_last_V_write fifo_update 1 1 } } }
	corr8_out_V_id_V { ap_fifo {  { corr8_out_V_id_V_din fifo_data 1 1 }  { corr8_out_V_id_V_full_n fifo_status 0 1 }  { corr8_out_V_id_V_write fifo_update 1 1 } } }
	corr8_out_V_dest_V { ap_fifo {  { corr8_out_V_dest_V_din fifo_data 1 1 }  { corr8_out_V_dest_V_full_n fifo_status 0 1 }  { corr8_out_V_dest_V_write fifo_update 1 1 } } }
}
