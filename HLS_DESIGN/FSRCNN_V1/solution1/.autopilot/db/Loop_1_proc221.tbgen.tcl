set moduleName Loop_1_proc221
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
set C_modelName {Loop_1_proc221}
set C_modelType { void 0 }
set C_modelArgList {
	{ corr8_out_V_valid_V int 1 regular {fifo 0 volatile }  }
	{ corr8_out_V_data_V int 12 regular {fifo 0 volatile }  }
	{ corr8_out_V_keep_V int 4 regular {fifo 0 volatile }  }
	{ corr8_out_V_user_V int 1 regular {fifo 0 volatile }  }
	{ corr8_out_V_last_V int 1 regular {fifo 0 volatile }  }
	{ corr8_out_V_id_V int 1 regular {fifo 0 volatile }  }
	{ corr8_out_V_dest_V int 1 regular {fifo 0 volatile }  }
	{ stream_out_V_data_V int 32 regular {axi_s 1 volatile  { stream_out Data } }  }
	{ stream_out_V_keep_V int 4 regular {axi_s 1 volatile  { stream_out Keep } }  }
	{ stream_out_V_strb_V int 4 regular {axi_s 1 volatile  { stream_out Strb } }  }
	{ stream_out_V_user_V int 1 regular {axi_s 1 volatile  { stream_out User } }  }
	{ stream_out_V_last_V int 1 regular {axi_s 1 volatile  { stream_out Last } }  }
	{ stream_out_V_id_V int 1 regular {axi_s 1 volatile  { stream_out ID } }  }
	{ stream_out_V_dest_V int 1 regular {axi_s 1 volatile  { stream_out Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "corr8_out_V_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr8_out_V_data_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "corr8_out_V_keep_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "corr8_out_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr8_out_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr8_out_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr8_out_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "stream_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ corr8_out_V_valid_V_dout sc_in sc_lv 1 signal 0 } 
	{ corr8_out_V_valid_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ corr8_out_V_valid_V_read sc_out sc_logic 1 signal 0 } 
	{ corr8_out_V_data_V_dout sc_in sc_lv 12 signal 1 } 
	{ corr8_out_V_data_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ corr8_out_V_data_V_read sc_out sc_logic 1 signal 1 } 
	{ corr8_out_V_keep_V_dout sc_in sc_lv 4 signal 2 } 
	{ corr8_out_V_keep_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ corr8_out_V_keep_V_read sc_out sc_logic 1 signal 2 } 
	{ corr8_out_V_user_V_dout sc_in sc_lv 1 signal 3 } 
	{ corr8_out_V_user_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ corr8_out_V_user_V_read sc_out sc_logic 1 signal 3 } 
	{ corr8_out_V_last_V_dout sc_in sc_lv 1 signal 4 } 
	{ corr8_out_V_last_V_empty_n sc_in sc_logic 1 signal 4 } 
	{ corr8_out_V_last_V_read sc_out sc_logic 1 signal 4 } 
	{ corr8_out_V_id_V_dout sc_in sc_lv 1 signal 5 } 
	{ corr8_out_V_id_V_empty_n sc_in sc_logic 1 signal 5 } 
	{ corr8_out_V_id_V_read sc_out sc_logic 1 signal 5 } 
	{ corr8_out_V_dest_V_dout sc_in sc_lv 1 signal 6 } 
	{ corr8_out_V_dest_V_empty_n sc_in sc_logic 1 signal 6 } 
	{ corr8_out_V_dest_V_read sc_out sc_logic 1 signal 6 } 
	{ stream_out_TDATA sc_out sc_lv 32 signal 7 } 
	{ stream_out_TVALID sc_out sc_logic 1 outvld 13 } 
	{ stream_out_TREADY sc_in sc_logic 1 outacc 7 } 
	{ stream_out_TKEEP sc_out sc_lv 4 signal 8 } 
	{ stream_out_TSTRB sc_out sc_lv 4 signal 9 } 
	{ stream_out_TUSER sc_out sc_lv 1 signal 10 } 
	{ stream_out_TLAST sc_out sc_lv 1 signal 11 } 
	{ stream_out_TID sc_out sc_lv 1 signal 12 } 
	{ stream_out_TDEST sc_out sc_lv 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "corr8_out_V_valid_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_valid_V", "role": "dout" }} , 
 	{ "name": "corr8_out_V_valid_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_valid_V", "role": "empty_n" }} , 
 	{ "name": "corr8_out_V_valid_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_valid_V", "role": "read" }} , 
 	{ "name": "corr8_out_V_data_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "corr8_out_V_data_V", "role": "dout" }} , 
 	{ "name": "corr8_out_V_data_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_data_V", "role": "empty_n" }} , 
 	{ "name": "corr8_out_V_data_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_data_V", "role": "read" }} , 
 	{ "name": "corr8_out_V_keep_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "corr8_out_V_keep_V", "role": "dout" }} , 
 	{ "name": "corr8_out_V_keep_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_keep_V", "role": "empty_n" }} , 
 	{ "name": "corr8_out_V_keep_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_keep_V", "role": "read" }} , 
 	{ "name": "corr8_out_V_user_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_user_V", "role": "dout" }} , 
 	{ "name": "corr8_out_V_user_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_user_V", "role": "empty_n" }} , 
 	{ "name": "corr8_out_V_user_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_user_V", "role": "read" }} , 
 	{ "name": "corr8_out_V_last_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_last_V", "role": "dout" }} , 
 	{ "name": "corr8_out_V_last_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_last_V", "role": "empty_n" }} , 
 	{ "name": "corr8_out_V_last_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_last_V", "role": "read" }} , 
 	{ "name": "corr8_out_V_id_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_id_V", "role": "dout" }} , 
 	{ "name": "corr8_out_V_id_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_id_V", "role": "empty_n" }} , 
 	{ "name": "corr8_out_V_id_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_id_V", "role": "read" }} , 
 	{ "name": "corr8_out_V_dest_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_dest_V", "role": "dout" }} , 
 	{ "name": "corr8_out_V_dest_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_dest_V", "role": "empty_n" }} , 
 	{ "name": "corr8_out_V_dest_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr8_out_V_dest_V", "role": "read" }} , 
 	{ "name": "stream_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_out_V_data_V", "role": "default" }} , 
 	{ "name": "stream_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_out_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_out_V_data_V", "role": "default" }} , 
 	{ "name": "stream_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_out_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_out_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_user_V", "role": "default" }} , 
 	{ "name": "stream_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_id_V", "role": "default" }} , 
 	{ "name": "stream_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "Loop_1_proc221",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16396", "EstimateLatencyMax" : "16396",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "corr8_out_V_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_user_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_id_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_dest_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FSRCNN_fcmp_32ns_czy_U186", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FSRCNN_fcmp_32ns_czy_U187", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_1_proc221 {
		corr8_out_V_valid_V {Type I LastRead 2 FirstWrite -1}
		corr8_out_V_data_V {Type I LastRead 2 FirstWrite -1}
		corr8_out_V_keep_V {Type I LastRead 2 FirstWrite -1}
		corr8_out_V_user_V {Type I LastRead 2 FirstWrite -1}
		corr8_out_V_last_V {Type I LastRead 2 FirstWrite -1}
		corr8_out_V_id_V {Type I LastRead 2 FirstWrite -1}
		corr8_out_V_dest_V {Type I LastRead 2 FirstWrite -1}
		stream_out_V_data_V {Type O LastRead -1 FirstWrite 11}
		stream_out_V_keep_V {Type O LastRead -1 FirstWrite 11}
		stream_out_V_strb_V {Type O LastRead -1 FirstWrite 11}
		stream_out_V_user_V {Type O LastRead -1 FirstWrite 11}
		stream_out_V_last_V {Type O LastRead -1 FirstWrite 11}
		stream_out_V_id_V {Type O LastRead -1 FirstWrite 11}
		stream_out_V_dest_V {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16396", "Max" : "16396"}
	, {"Name" : "Interval", "Min" : "16396", "Max" : "16396"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	corr8_out_V_valid_V { ap_fifo {  { corr8_out_V_valid_V_dout fifo_data 0 1 }  { corr8_out_V_valid_V_empty_n fifo_status 0 1 }  { corr8_out_V_valid_V_read fifo_update 1 1 } } }
	corr8_out_V_data_V { ap_fifo {  { corr8_out_V_data_V_dout fifo_data 0 12 }  { corr8_out_V_data_V_empty_n fifo_status 0 1 }  { corr8_out_V_data_V_read fifo_update 1 1 } } }
	corr8_out_V_keep_V { ap_fifo {  { corr8_out_V_keep_V_dout fifo_data 0 4 }  { corr8_out_V_keep_V_empty_n fifo_status 0 1 }  { corr8_out_V_keep_V_read fifo_update 1 1 } } }
	corr8_out_V_user_V { ap_fifo {  { corr8_out_V_user_V_dout fifo_data 0 1 }  { corr8_out_V_user_V_empty_n fifo_status 0 1 }  { corr8_out_V_user_V_read fifo_update 1 1 } } }
	corr8_out_V_last_V { ap_fifo {  { corr8_out_V_last_V_dout fifo_data 0 1 }  { corr8_out_V_last_V_empty_n fifo_status 0 1 }  { corr8_out_V_last_V_read fifo_update 1 1 } } }
	corr8_out_V_id_V { ap_fifo {  { corr8_out_V_id_V_dout fifo_data 0 1 }  { corr8_out_V_id_V_empty_n fifo_status 0 1 }  { corr8_out_V_id_V_read fifo_update 1 1 } } }
	corr8_out_V_dest_V { ap_fifo {  { corr8_out_V_dest_V_dout fifo_data 0 1 }  { corr8_out_V_dest_V_empty_n fifo_status 0 1 }  { corr8_out_V_dest_V_read fifo_update 1 1 } } }
	stream_out_V_data_V { axis {  { stream_out_TDATA out_data 1 32 }  { stream_out_TREADY out_acc 0 1 } } }
	stream_out_V_keep_V { axis {  { stream_out_TKEEP out_data 1 4 } } }
	stream_out_V_strb_V { axis {  { stream_out_TSTRB out_data 1 4 } } }
	stream_out_V_user_V { axis {  { stream_out_TUSER out_data 1 1 } } }
	stream_out_V_last_V { axis {  { stream_out_TLAST out_data 1 1 } } }
	stream_out_V_id_V { axis {  { stream_out_TID out_data 1 1 } } }
	stream_out_V_dest_V { axis {  { stream_out_TVALID out_vld 1 1 }  { stream_out_TDEST out_data 1 1 } } }
}
