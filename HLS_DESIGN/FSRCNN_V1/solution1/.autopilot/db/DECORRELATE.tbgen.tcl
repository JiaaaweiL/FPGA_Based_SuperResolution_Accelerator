set moduleName DECORRELATE
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
set C_modelName {DECORRELATE}
set C_modelType { void 0 }
set C_modelArgList {
	{ padded_channel_V int 12 regular {array 330 { 1 3 } 1 1 }  }
	{ filter_V int 5 regular {array 81 { 1 3 } 1 1 }  }
	{ expanded_channel_V int 12 regular {array 2363 { 0 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "padded_channel_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "filter_V", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "expanded_channel_V", "interface" : "memory", "bitwidth" : 12, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ padded_channel_V_address0 sc_out sc_lv 9 signal 0 } 
	{ padded_channel_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ padded_channel_V_q0 sc_in sc_lv 12 signal 0 } 
	{ filter_V_address0 sc_out sc_lv 7 signal 1 } 
	{ filter_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ filter_V_q0 sc_in sc_lv 5 signal 1 } 
	{ expanded_channel_V_address0 sc_out sc_lv 12 signal 2 } 
	{ expanded_channel_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ expanded_channel_V_we0 sc_out sc_logic 1 signal 2 } 
	{ expanded_channel_V_d0 sc_out sc_lv 12 signal 2 } 
	{ expanded_channel_V_address1 sc_out sc_lv 12 signal 2 } 
	{ expanded_channel_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ expanded_channel_V_we1 sc_out sc_logic 1 signal 2 } 
	{ expanded_channel_V_d1 sc_out sc_lv 12 signal 2 } 
	{ expanded_channel_V_q1 sc_in sc_lv 12 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "padded_channel_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "padded_channel_V", "role": "address0" }} , 
 	{ "name": "padded_channel_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "padded_channel_V", "role": "ce0" }} , 
 	{ "name": "padded_channel_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "padded_channel_V", "role": "q0" }} , 
 	{ "name": "filter_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "filter_V", "role": "address0" }} , 
 	{ "name": "filter_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "filter_V", "role": "ce0" }} , 
 	{ "name": "filter_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "filter_V", "role": "q0" }} , 
 	{ "name": "expanded_channel_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "expanded_channel_V", "role": "address0" }} , 
 	{ "name": "expanded_channel_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expanded_channel_V", "role": "ce0" }} , 
 	{ "name": "expanded_channel_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expanded_channel_V", "role": "we0" }} , 
 	{ "name": "expanded_channel_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "expanded_channel_V", "role": "d0" }} , 
 	{ "name": "expanded_channel_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "expanded_channel_V", "role": "address1" }} , 
 	{ "name": "expanded_channel_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expanded_channel_V", "role": "ce1" }} , 
 	{ "name": "expanded_channel_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "expanded_channel_V", "role": "we1" }} , 
 	{ "name": "expanded_channel_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "expanded_channel_V", "role": "d1" }} , 
 	{ "name": "expanded_channel_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "expanded_channel_V", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FSRCNN_mac_muladdb7t_U152", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DECORRELATE {
		padded_channel_V {Type I LastRead 4 FirstWrite -1}
		filter_V {Type I LastRead 4 FirstWrite -1}
		expanded_channel_V {Type IO LastRead 4 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6589", "Max" : "9268"}
	, {"Name" : "Interval", "Min" : "6589", "Max" : "9268"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	padded_channel_V { ap_memory {  { padded_channel_V_address0 mem_address 1 9 }  { padded_channel_V_ce0 mem_ce 1 1 }  { padded_channel_V_q0 mem_dout 0 12 } } }
	filter_V { ap_memory {  { filter_V_address0 mem_address 1 7 }  { filter_V_ce0 mem_ce 1 1 }  { filter_V_q0 mem_dout 0 5 } } }
	expanded_channel_V { ap_memory {  { expanded_channel_V_address0 mem_address 1 12 }  { expanded_channel_V_ce0 mem_ce 1 1 }  { expanded_channel_V_we0 mem_we 1 1 }  { expanded_channel_V_d0 mem_din 1 12 }  { expanded_channel_V_address1 MemPortADDR2 1 12 }  { expanded_channel_V_ce1 MemPortCE2 1 1 }  { expanded_channel_V_we1 MemPortWE2 1 1 }  { expanded_channel_V_d1 MemPortDIN2 1 12 }  { expanded_channel_V_q1 MemPortDOUT2 0 12 } } }
}
