set moduleName layer1
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
set C_modelName {layer1}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_in_V_data_V int 32 regular {axi_s 0 volatile  { stream_in Data } }  }
	{ stream_in_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in Keep } }  }
	{ stream_in_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in Strb } }  }
	{ stream_in_V_user_V int 1 regular {axi_s 0 volatile  { stream_in User } }  }
	{ stream_in_V_last_V int 1 regular {axi_s 0 volatile  { stream_in Last } }  }
	{ stream_in_V_id_V int 1 regular {axi_s 0 volatile  { stream_in ID } }  }
	{ stream_in_V_dest_V int 1 regular {axi_s 0 volatile  { stream_in Dest } }  }
	{ corr1_out_V_valid_V int 1 regular {fifo 1 volatile }  }
	{ corr1_out_V_data_V int 12 regular {fifo 1 volatile }  }
	{ corr1_out_V_keep_V int 4 regular {fifo 1 volatile }  }
	{ corr1_out_V_user_V int 1 regular {fifo 1 volatile }  }
	{ corr1_out_V_last_V int 1 regular {fifo 1 volatile }  }
	{ corr1_out_V_id_V int 1 regular {fifo 1 volatile }  }
	{ corr1_out_V_dest_V int 1 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "stream_in_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "corr1_out_V_valid_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr1_out_V_data_V", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr1_out_V_keep_V", "interface" : "fifo", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr1_out_V_user_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr1_out_V_last_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr1_out_V_id_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "corr1_out_V_dest_V", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
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
	{ stream_in_TDATA sc_in sc_lv 32 signal 0 } 
	{ stream_in_TVALID sc_in sc_logic 1 invld 6 } 
	{ stream_in_TREADY sc_out sc_logic 1 inacc 6 } 
	{ stream_in_TKEEP sc_in sc_lv 4 signal 1 } 
	{ stream_in_TSTRB sc_in sc_lv 4 signal 2 } 
	{ stream_in_TUSER sc_in sc_lv 1 signal 3 } 
	{ stream_in_TLAST sc_in sc_lv 1 signal 4 } 
	{ stream_in_TID sc_in sc_lv 1 signal 5 } 
	{ stream_in_TDEST sc_in sc_lv 1 signal 6 } 
	{ corr1_out_V_valid_V_din sc_out sc_lv 1 signal 7 } 
	{ corr1_out_V_valid_V_full_n sc_in sc_logic 1 signal 7 } 
	{ corr1_out_V_valid_V_write sc_out sc_logic 1 signal 7 } 
	{ corr1_out_V_data_V_din sc_out sc_lv 12 signal 8 } 
	{ corr1_out_V_data_V_full_n sc_in sc_logic 1 signal 8 } 
	{ corr1_out_V_data_V_write sc_out sc_logic 1 signal 8 } 
	{ corr1_out_V_keep_V_din sc_out sc_lv 4 signal 9 } 
	{ corr1_out_V_keep_V_full_n sc_in sc_logic 1 signal 9 } 
	{ corr1_out_V_keep_V_write sc_out sc_logic 1 signal 9 } 
	{ corr1_out_V_user_V_din sc_out sc_lv 1 signal 10 } 
	{ corr1_out_V_user_V_full_n sc_in sc_logic 1 signal 10 } 
	{ corr1_out_V_user_V_write sc_out sc_logic 1 signal 10 } 
	{ corr1_out_V_last_V_din sc_out sc_lv 1 signal 11 } 
	{ corr1_out_V_last_V_full_n sc_in sc_logic 1 signal 11 } 
	{ corr1_out_V_last_V_write sc_out sc_logic 1 signal 11 } 
	{ corr1_out_V_id_V_din sc_out sc_lv 1 signal 12 } 
	{ corr1_out_V_id_V_full_n sc_in sc_logic 1 signal 12 } 
	{ corr1_out_V_id_V_write sc_out sc_logic 1 signal 12 } 
	{ corr1_out_V_dest_V_din sc_out sc_lv 1 signal 13 } 
	{ corr1_out_V_dest_V_full_n sc_in sc_logic 1 signal 13 } 
	{ corr1_out_V_dest_V_write sc_out sc_logic 1 signal 13 } 
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
 	{ "name": "stream_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_user_V", "role": "default" }} , 
 	{ "name": "stream_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_id_V", "role": "default" }} , 
 	{ "name": "stream_in_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_dest_V", "role": "default" }} , 
 	{ "name": "corr1_out_V_valid_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_valid_V", "role": "din" }} , 
 	{ "name": "corr1_out_V_valid_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_valid_V", "role": "full_n" }} , 
 	{ "name": "corr1_out_V_valid_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_valid_V", "role": "write" }} , 
 	{ "name": "corr1_out_V_data_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "corr1_out_V_data_V", "role": "din" }} , 
 	{ "name": "corr1_out_V_data_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_data_V", "role": "full_n" }} , 
 	{ "name": "corr1_out_V_data_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_data_V", "role": "write" }} , 
 	{ "name": "corr1_out_V_keep_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "corr1_out_V_keep_V", "role": "din" }} , 
 	{ "name": "corr1_out_V_keep_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_keep_V", "role": "full_n" }} , 
 	{ "name": "corr1_out_V_keep_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_keep_V", "role": "write" }} , 
 	{ "name": "corr1_out_V_user_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_user_V", "role": "din" }} , 
 	{ "name": "corr1_out_V_user_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_user_V", "role": "full_n" }} , 
 	{ "name": "corr1_out_V_user_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_user_V", "role": "write" }} , 
 	{ "name": "corr1_out_V_last_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_last_V", "role": "din" }} , 
 	{ "name": "corr1_out_V_last_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_last_V", "role": "full_n" }} , 
 	{ "name": "corr1_out_V_last_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_last_V", "role": "write" }} , 
 	{ "name": "corr1_out_V_id_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_id_V", "role": "din" }} , 
 	{ "name": "corr1_out_V_id_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_id_V", "role": "full_n" }} , 
 	{ "name": "corr1_out_V_id_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_id_V", "role": "write" }} , 
 	{ "name": "corr1_out_V_dest_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_dest_V", "role": "din" }} , 
 	{ "name": "corr1_out_V_dest_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_dest_V", "role": "full_n" }} , 
 	{ "name": "corr1_out_V_dest_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "corr1_out_V_dest_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "16", "17"],
		"CDFG" : "layer1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "477", "EstimateLatencyMax" : "31355889",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CORRELATE_2_fu_1655"}],
		"Port" : [
			{"Name" : "stream_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_in_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_in_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_in_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_in_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "corr1_out_V_valid_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_user_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_id_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_dest_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_layer1_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_layer1_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weights_layer1_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.biases_layer1_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.subfilter_layer_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.correlate_img_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_layer_valid_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_keep_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_strb_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_user_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_last_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_id_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buffer_dest_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_channel_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CORRELATE_2_fu_1655", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "CORRELATE_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3201", "EstimateLatencyMax" : "8001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prev_output_channel_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "filter_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "correlate_img_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CORRELATE_2_fu_1655.FSRCNN_mul_mul_7sbkb_U1", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FSRCNN_mul_mul_12ocq_U6", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FSRCNN_mul_mul_12ocq_U7", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	layer1 {
		stream_in_V_data_V {Type I LastRead 10 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 10 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 10 FirstWrite -1}
		stream_in_V_user_V {Type I LastRead 10 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 10 FirstWrite -1}
		stream_in_V_id_V {Type I LastRead 10 FirstWrite -1}
		stream_in_V_dest_V {Type I LastRead 10 FirstWrite -1}
		corr1_out_V_valid_V {Type O LastRead -1 FirstWrite 25}
		corr1_out_V_data_V {Type O LastRead -1 FirstWrite 25}
		corr1_out_V_keep_V {Type O LastRead -1 FirstWrite 25}
		corr1_out_V_user_V {Type O LastRead -1 FirstWrite 25}
		corr1_out_V_last_V {Type O LastRead -1 FirstWrite 25}
		corr1_out_V_id_V {Type O LastRead -1 FirstWrite 25}
		corr1_out_V_dest_V {Type O LastRead -1 FirstWrite 25}
		weights_layer1_V_0 {Type I LastRead -1 FirstWrite -1}
		biases_layer1_V {Type I LastRead -1 FirstWrite -1}}
	CORRELATE_2 {
		prev_output_channel_V {Type I LastRead 2 FirstWrite -1}
		filter_V {Type I LastRead 3 FirstWrite -1}
		correlate_img_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "477", "Max" : "31355889"}
	, {"Name" : "Interval", "Min" : "477", "Max" : "31355889"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
	{"Pipeline" : "7", "EnableSignal" : "ap_enable_pp7"}
	{"Pipeline" : "8", "EnableSignal" : "ap_enable_pp8"}
]}

set Spec2ImplPortList { 
	stream_in_V_data_V { axis {  { stream_in_TDATA in_data 0 32 } } }
	stream_in_V_keep_V { axis {  { stream_in_TKEEP in_data 0 4 } } }
	stream_in_V_strb_V { axis {  { stream_in_TSTRB in_data 0 4 } } }
	stream_in_V_user_V { axis {  { stream_in_TUSER in_data 0 1 } } }
	stream_in_V_last_V { axis {  { stream_in_TLAST in_data 0 1 } } }
	stream_in_V_id_V { axis {  { stream_in_TID in_data 0 1 } } }
	stream_in_V_dest_V { axis {  { stream_in_TVALID in_vld 0 1 }  { stream_in_TREADY in_acc 1 1 }  { stream_in_TDEST in_data 0 1 } } }
	corr1_out_V_valid_V { ap_fifo {  { corr1_out_V_valid_V_din fifo_data 1 1 }  { corr1_out_V_valid_V_full_n fifo_status 0 1 }  { corr1_out_V_valid_V_write fifo_update 1 1 } } }
	corr1_out_V_data_V { ap_fifo {  { corr1_out_V_data_V_din fifo_data 1 12 }  { corr1_out_V_data_V_full_n fifo_status 0 1 }  { corr1_out_V_data_V_write fifo_update 1 1 } } }
	corr1_out_V_keep_V { ap_fifo {  { corr1_out_V_keep_V_din fifo_data 1 4 }  { corr1_out_V_keep_V_full_n fifo_status 0 1 }  { corr1_out_V_keep_V_write fifo_update 1 1 } } }
	corr1_out_V_user_V { ap_fifo {  { corr1_out_V_user_V_din fifo_data 1 1 }  { corr1_out_V_user_V_full_n fifo_status 0 1 }  { corr1_out_V_user_V_write fifo_update 1 1 } } }
	corr1_out_V_last_V { ap_fifo {  { corr1_out_V_last_V_din fifo_data 1 1 }  { corr1_out_V_last_V_full_n fifo_status 0 1 }  { corr1_out_V_last_V_write fifo_update 1 1 } } }
	corr1_out_V_id_V { ap_fifo {  { corr1_out_V_id_V_din fifo_data 1 1 }  { corr1_out_V_id_V_full_n fifo_status 0 1 }  { corr1_out_V_id_V_write fifo_update 1 1 } } }
	corr1_out_V_dest_V { ap_fifo {  { corr1_out_V_dest_V_din fifo_data 1 1 }  { corr1_out_V_dest_V_full_n fifo_status 0 1 }  { corr1_out_V_dest_V_write fifo_update 1 1 } } }
}
