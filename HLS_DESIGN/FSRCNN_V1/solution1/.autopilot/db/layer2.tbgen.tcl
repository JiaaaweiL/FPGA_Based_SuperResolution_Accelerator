set moduleName layer2
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
set C_modelName {layer2}
set C_modelType { void 0 }
set C_modelArgList {
	{ corr1_out_V_valid_V int 1 regular {fifo 0 volatile }  }
	{ corr1_out_V_data_V int 12 regular {fifo 0 volatile }  }
	{ corr1_out_V_keep_V int 4 regular {fifo 0 volatile }  }
	{ corr1_out_V_user_V int 1 regular {fifo 0 volatile }  }
	{ corr1_out_V_last_V int 1 regular {fifo 0 volatile }  }
	{ corr1_out_V_id_V int 1 regular {fifo 0 volatile }  }
	{ corr1_out_V_dest_V int 1 regular {fifo 0 volatile }  }
	{ corr2_out_V_valid_V int 1 regular {fifo 1 volatile }  }
	{ corr2_out_V_data_V int 12 regular {fifo 1 volatile }  }
	{ corr2_out_V_keep_V int 4 regular {fifo 1 volatile }  }
	{ corr2_out_V_user_V int 1 regular {fifo 1 volatile }  }
	{ corr2_out_V_last_V int 1 regular {fifo 1 volatile }  }
	{ corr2_out_V_id_V int 1 regular {fifo 1 volatile }  }
	{ corr2_out_V_dest_V int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "corr1_out_V_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr1_out_V_data_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "corr1_out_V_keep_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "corr1_out_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr1_out_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr1_out_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr1_out_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr2_out_V_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr2_out_V_data_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr2_out_V_keep_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr2_out_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr2_out_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr2_out_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr2_out_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
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
	{ corr1_out_V_valid_V_dout sc_in sc_lv 1 signal 0 } 
	{ corr1_out_V_valid_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ corr1_out_V_valid_V_read sc_out sc_logic 1 signal 0 } 
	{ corr1_out_V_data_V_dout sc_in sc_lv 12 signal 1 } 
	{ corr1_out_V_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ corr1_out_V_data_V_read sc_out sc_logic 1 signal 1 } 
	{ corr1_out_V_keep_V_dout sc_in sc_lv 4 signal 2 } 
	{ corr1_out_V_keep_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ corr1_out_V_keep_V_read sc_out sc_logic 1 signal 2 } 
	{ corr1_out_V_user_V_dout sc_in sc_lv 1 signal 3 } 
	{ corr1_out_V_user_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ corr1_out_V_user_V_read sc_out sc_logic 1 signal 3 } 
	{ corr1_out_V_last_V_dout sc_in sc_lv 1 signal 4 } 
	{ corr1_out_V_last_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ corr1_out_V_last_V_read sc_out sc_logic 1 signal 4 } 
	{ corr1_out_V_id_V_dout sc_in sc_lv 1 signal 5 } 
	{ corr1_out_V_id_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ corr1_out_V_id_V_read sc_out sc_logic 1 signal 5 } 
	{ corr1_out_V_dest_V_dout sc_in sc_lv 1 signal 6 } 
	{ corr1_out_V_dest_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ corr1_out_V_dest_V_read sc_out sc_logic 1 signal 6 } 
	{ corr2_out_V_valid_V_din sc_out sc_lv 1 signal 7 } 
	{ corr2_out_V_valid_V_full_n sc_in sc_logic 1 signal 7 } 
	{ corr2_out_V_valid_V_write sc_out sc_logic 1 signal 7 } 
	{ corr2_out_V_data_V_din sc_out sc_lv 12 signal 8 } 
	{ corr2_out_V_data_V_full_n sc_in sc_logic 1 signal 8 } 
	{ corr2_out_V_data_V_write sc_out sc_logic 1 signal 8 } 
	{ corr2_out_V_keep_V_din sc_out sc_lv 4 signal 9 } 
	{ corr2_out_V_keep_V_full_n sc_in sc_logic 1 signal 9 } 
	{ corr2_out_V_keep_V_write sc_out sc_logic 1 signal 9 } 
	{ corr2_out_V_user_V_din sc_out sc_lv 1 signal 10 } 
	{ corr2_out_V_user_V_full_n sc_in sc_logic 1 signal 10 } 
	{ corr2_out_V_user_V_write sc_out sc_logic 1 signal 10 } 
	{ corr2_out_V_last_V_din sc_out sc_lv 1 signal 11 } 
	{ corr2_out_V_last_V_full_n sc_in sc_logic 1 signal 11 } 
	{ corr2_out_V_last_V_write sc_out sc_logic 1 signal 11 } 
	{ corr2_out_V_id_V_din sc_out sc_lv 1 signal 12 } 
	{ corr2_out_V_id_V_full_n sc_in sc_logic 1 signal 12 } 
	{ corr2_out_V_id_V_write sc_out sc_logic 1 signal 12 } 
	{ corr2_out_V_dest_V_din sc_out sc_lv 1 signal 13 } 
	{ corr2_out_V_dest_V_full_n sc_in sc_logic 1 signal 13 } 
	{ corr2_out_V_dest_V_write sc_out sc_logic 1 signal 13 } 
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
 	{ "name": "corr1_out_V_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_valid_V", "role": "dout" }} , 
 	{ "name": "corr1_out_V_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_valid_V", "role": "empty_n" }} , 
 	{ "name": "corr1_out_V_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_valid_V", "role": "read" }} , 
 	{ "name": "corr1_out_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "corr1_out_V_data_V", "role": "dout" }} , 
 	{ "name": "corr1_out_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_data_V", "role": "empty_n" }} , 
 	{ "name": "corr1_out_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_data_V", "role": "read" }} , 
 	{ "name": "corr1_out_V_keep_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "corr1_out_V_keep_V", "role": "dout" }} , 
 	{ "name": "corr1_out_V_keep_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_keep_V", "role": "empty_n" }} , 
 	{ "name": "corr1_out_V_keep_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_keep_V", "role": "read" }} , 
 	{ "name": "corr1_out_V_user_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_user_V", "role": "dout" }} , 
 	{ "name": "corr1_out_V_user_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_user_V", "role": "empty_n" }} , 
 	{ "name": "corr1_out_V_user_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_user_V", "role": "read" }} , 
 	{ "name": "corr1_out_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_last_V", "role": "dout" }} , 
 	{ "name": "corr1_out_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_last_V", "role": "empty_n" }} , 
 	{ "name": "corr1_out_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_last_V", "role": "read" }} , 
 	{ "name": "corr1_out_V_id_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_id_V", "role": "dout" }} , 
 	{ "name": "corr1_out_V_id_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_id_V", "role": "empty_n" }} , 
 	{ "name": "corr1_out_V_id_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_id_V", "role": "read" }} , 
 	{ "name": "corr1_out_V_dest_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_dest_V", "role": "dout" }} , 
 	{ "name": "corr1_out_V_dest_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_dest_V", "role": "empty_n" }} , 
 	{ "name": "corr1_out_V_dest_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_dest_V", "role": "read" }} , 
 	{ "name": "corr2_out_V_valid_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_valid_V", "role": "din" }} , 
 	{ "name": "corr2_out_V_valid_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_valid_V", "role": "full_n" }} , 
 	{ "name": "corr2_out_V_valid_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_valid_V", "role": "write" }} , 
 	{ "name": "corr2_out_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "corr2_out_V_data_V", "role": "din" }} , 
 	{ "name": "corr2_out_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_data_V", "role": "full_n" }} , 
 	{ "name": "corr2_out_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_data_V", "role": "write" }} , 
 	{ "name": "corr2_out_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "corr2_out_V_keep_V", "role": "din" }} , 
 	{ "name": "corr2_out_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_keep_V", "role": "full_n" }} , 
 	{ "name": "corr2_out_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_keep_V", "role": "write" }} , 
 	{ "name": "corr2_out_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_user_V", "role": "din" }} , 
 	{ "name": "corr2_out_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_user_V", "role": "full_n" }} , 
 	{ "name": "corr2_out_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_user_V", "role": "write" }} , 
 	{ "name": "corr2_out_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_last_V", "role": "din" }} , 
 	{ "name": "corr2_out_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_last_V", "role": "full_n" }} , 
 	{ "name": "corr2_out_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_last_V", "role": "write" }} , 
 	{ "name": "corr2_out_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_id_V", "role": "din" }} , 
 	{ "name": "corr2_out_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_id_V", "role": "full_n" }} , 
 	{ "name": "corr2_out_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_id_V", "role": "write" }} , 
 	{ "name": "corr2_out_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_dest_V", "role": "din" }} , 
 	{ "name": "corr2_out_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_dest_V", "role": "full_n" }} , 
 	{ "name": "corr2_out_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr2_out_V_dest_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "layer2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19967233", "EstimateLatencyMax" : "19967233",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "corr1_out_V_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_user_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_id_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_dest_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_valid_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_user_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_id_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_dest_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_layer2_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_layer2_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_layer2_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.biases_layer2_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.correlate_img_V_assi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_0_data_s_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_0_keep_s_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_0_user_s_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_0_last_s_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_0_id_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_0_dest_s_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.channel_from_prev_ou_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_valid_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_data_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FSRCNN_mul_mul_12Bew_U32", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	layer2 {
		corr1_out_V_valid_V {Type I LastRead 5 FirstWrite -1}
		corr1_out_V_data_V {Type I LastRead 5 FirstWrite -1}
		corr1_out_V_keep_V {Type I LastRead 5 FirstWrite -1}
		corr1_out_V_user_V {Type I LastRead 5 FirstWrite -1}
		corr1_out_V_last_V {Type I LastRead 5 FirstWrite -1}
		corr1_out_V_id_V {Type I LastRead 5 FirstWrite -1}
		corr1_out_V_dest_V {Type I LastRead 5 FirstWrite -1}
		corr2_out_V_valid_V {Type O LastRead -1 FirstWrite 9}
		corr2_out_V_data_V {Type O LastRead -1 FirstWrite 9}
		corr2_out_V_keep_V {Type O LastRead -1 FirstWrite 9}
		corr2_out_V_user_V {Type O LastRead -1 FirstWrite 9}
		corr2_out_V_last_V {Type O LastRead -1 FirstWrite 9}
		corr2_out_V_id_V {Type O LastRead -1 FirstWrite 9}
		corr2_out_V_dest_V {Type O LastRead -1 FirstWrite 9}
		weights_layer2_V_0 {Type I LastRead -1 FirstWrite -1}
		biases_layer2_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19967233", "Max" : "19967233"}
	, {"Name" : "Interval", "Min" : "19967233", "Max" : "19967233"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	corr1_out_V_valid_V { ap_fifo {  { corr1_out_V_valid_V_dout fifo_data 0 1 }  { corr1_out_V_valid_V_empty_n fifo_status 0 1 }  { corr1_out_V_valid_V_read fifo_update 1 1 } } }
	corr1_out_V_data_V { ap_fifo {  { corr1_out_V_data_V_dout fifo_data 0 12 }  { corr1_out_V_data_V_empty_n fifo_status 0 1 }  { corr1_out_V_data_V_read fifo_update 1 1 } } }
	corr1_out_V_keep_V { ap_fifo {  { corr1_out_V_keep_V_dout fifo_data 0 4 }  { corr1_out_V_keep_V_empty_n fifo_status 0 1 }  { corr1_out_V_keep_V_read fifo_update 1 1 } } }
	corr1_out_V_user_V { ap_fifo {  { corr1_out_V_user_V_dout fifo_data 0 1 }  { corr1_out_V_user_V_empty_n fifo_status 0 1 }  { corr1_out_V_user_V_read fifo_update 1 1 } } }
	corr1_out_V_last_V { ap_fifo {  { corr1_out_V_last_V_dout fifo_data 0 1 }  { corr1_out_V_last_V_empty_n fifo_status 0 1 }  { corr1_out_V_last_V_read fifo_update 1 1 } } }
	corr1_out_V_id_V { ap_fifo {  { corr1_out_V_id_V_dout fifo_data 0 1 }  { corr1_out_V_id_V_empty_n fifo_status 0 1 }  { corr1_out_V_id_V_read fifo_update 1 1 } } }
	corr1_out_V_dest_V { ap_fifo {  { corr1_out_V_dest_V_dout fifo_data 0 1 }  { corr1_out_V_dest_V_empty_n fifo_status 0 1 }  { corr1_out_V_dest_V_read fifo_update 1 1 } } }
	corr2_out_V_valid_V { ap_fifo {  { corr2_out_V_valid_V_din fifo_data 1 1 }  { corr2_out_V_valid_V_full_n fifo_status 0 1 }  { corr2_out_V_valid_V_write fifo_update 1 1 } } }
	corr2_out_V_data_V { ap_fifo {  { corr2_out_V_data_V_din fifo_data 1 12 }  { corr2_out_V_data_V_full_n fifo_status 0 1 }  { corr2_out_V_data_V_write fifo_update 1 1 } } }
	corr2_out_V_keep_V { ap_fifo {  { corr2_out_V_keep_V_din fifo_data 1 4 }  { corr2_out_V_keep_V_full_n fifo_status 0 1 }  { corr2_out_V_keep_V_write fifo_update 1 1 } } }
	corr2_out_V_user_V { ap_fifo {  { corr2_out_V_user_V_din fifo_data 1 1 }  { corr2_out_V_user_V_full_n fifo_status 0 1 }  { corr2_out_V_user_V_write fifo_update 1 1 } } }
	corr2_out_V_last_V { ap_fifo {  { corr2_out_V_last_V_din fifo_data 1 1 }  { corr2_out_V_last_V_full_n fifo_status 0 1 }  { corr2_out_V_last_V_write fifo_update 1 1 } } }
	corr2_out_V_id_V { ap_fifo {  { corr2_out_V_id_V_din fifo_data 1 1 }  { corr2_out_V_id_V_full_n fifo_status 0 1 }  { corr2_out_V_id_V_write fifo_update 1 1 } } }
	corr2_out_V_dest_V { ap_fifo {  { corr2_out_V_dest_V_din fifo_data 1 1 }  { corr2_out_V_dest_V_full_n fifo_status 0 1 }  { corr2_out_V_dest_V_write fifo_update 1 1 } } }
}
