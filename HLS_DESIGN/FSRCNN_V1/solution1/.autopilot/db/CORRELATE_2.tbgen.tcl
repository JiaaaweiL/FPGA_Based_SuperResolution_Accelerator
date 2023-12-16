set moduleName CORRELATE_2
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
set C_modelName {CORRELATE.2}
set C_modelType { void 0 }
set C_modelArgList {
	{ prev_output_channel_V int 12 regular {array 5508 { 1 3 } 1 1 }  }
	{ filter_V int 7 regular {array 25 { 1 3 } 1 1 }  }
	{ correlate_img_V int 12 regular {array 64 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prev_output_channel_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "filter_V", "interface" : "memory", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "correlate_img_V", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prev_output_channel_V_address0 sc_out sc_lv 13 signal 0 } 
	{ prev_output_channel_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ prev_output_channel_V_q0 sc_in sc_lv 12 signal 0 } 
	{ filter_V_address0 sc_out sc_lv 5 signal 1 } 
	{ filter_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ filter_V_q0 sc_in sc_lv 7 signal 1 } 
	{ correlate_img_V_address0 sc_out sc_lv 6 signal 2 } 
	{ correlate_img_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ correlate_img_V_we0 sc_out sc_logic 1 signal 2 } 
	{ correlate_img_V_d0 sc_out sc_lv 12 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prev_output_channel_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "prev_output_channel_V", "role": "address0" }} , 
 	{ "name": "prev_output_channel_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prev_output_channel_V", "role": "ce0" }} , 
 	{ "name": "prev_output_channel_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "prev_output_channel_V", "role": "q0" }} , 
 	{ "name": "filter_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "filter_V", "role": "address0" }} , 
 	{ "name": "filter_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filter_V", "role": "ce0" }} , 
 	{ "name": "filter_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "filter_V", "role": "q0" }} , 
 	{ "name": "correlate_img_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "correlate_img_V", "role": "address0" }} , 
 	{ "name": "correlate_img_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "correlate_img_V", "role": "ce0" }} , 
 	{ "name": "correlate_img_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "correlate_img_V", "role": "we0" }} , 
 	{ "name": "correlate_img_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "correlate_img_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FSRCNN_mul_mul_7sbkb_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	CORRELATE_2 {
		prev_output_channel_V {Type I LastRead 2 FirstWrite -1}
		filter_V {Type I LastRead 3 FirstWrite -1}
		correlate_img_V {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3201", "Max" : "8001"}
	, {"Name" : "Interval", "Min" : "3201", "Max" : "8001"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prev_output_channel_V { ap_memory {  { prev_output_channel_V_address0 mem_address 1 13 }  { prev_output_channel_V_ce0 mem_ce 1 1 }  { prev_output_channel_V_q0 mem_dout 0 12 } } }
	filter_V { ap_memory {  { filter_V_address0 mem_address 1 5 }  { filter_V_ce0 mem_ce 1 1 }  { filter_V_q0 mem_dout 0 7 } } }
	correlate_img_V { ap_memory {  { correlate_img_V_address0 mem_address 1 6 }  { correlate_img_V_ce0 mem_ce 1 1 }  { correlate_img_V_we0 mem_we 1 1 }  { correlate_img_V_d0 mem_din 1 12 } } }
}
