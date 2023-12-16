set moduleName FSRCNN
set isTopModule 1
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {FSRCNN}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_in_V_data_V int 32 regular {axi_s 0 volatile  { stream_in Data } }  }
	{ stream_in_V_keep_V int 4 regular {axi_s 0 volatile  { stream_in Keep } }  }
	{ stream_in_V_strb_V int 4 regular {axi_s 0 volatile  { stream_in Strb } }  }
	{ stream_in_V_user_V int 1 regular {axi_s 0 volatile  { stream_in User } }  }
	{ stream_in_V_last_V int 1 regular {axi_s 0 volatile  { stream_in Last } }  }
	{ stream_in_V_id_V int 1 regular {axi_s 0 volatile  { stream_in ID } }  }
	{ stream_in_V_dest_V int 1 regular {axi_s 0 volatile  { stream_in Dest } }  }
	{ stream_out_V_data_V int 32 regular {axi_s 1 volatile  { stream_out Data } }  }
	{ stream_out_V_keep_V int 4 regular {axi_s 1 volatile  { stream_out Keep } }  }
	{ stream_out_V_strb_V int 4 regular {axi_s 1 volatile  { stream_out Strb } }  }
	{ stream_out_V_user_V int 1 regular {axi_s 1 volatile  { stream_out User } }  }
	{ stream_out_V_last_V int 1 regular {axi_s 1 volatile  { stream_out Last } }  }
	{ stream_out_V_id_V int 1 regular {axi_s 1 volatile  { stream_out ID } }  }
	{ stream_out_V_dest_V int 1 regular {axi_s 1 volatile  { stream_out Dest } }  }
	{ height_V int 8 unused {axi_slave 0}  }
	{ width_V int 8 unused {axi_slave 0}  }
	{ scale_factor_V int 2 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "stream_in.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "stream_in.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "stream_in.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_in.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_in.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_in.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "stream_out.V.data.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "stream_out.V.keep.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":3,"cElement": [{"cName": "stream_out.V.strb.V","cData": "uint4","bit_use": { "low": 0,"up": 3},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_out.V.user.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_out.V.id.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_out.V.dest.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "height_V", "interface" : "axi_slave", "bundle":"scalar_parameters","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "height.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "width_V", "interface" : "axi_slave", "bundle":"scalar_parameters","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "width.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "scale_factor_V", "interface" : "axi_slave", "bundle":"scalar_parameters","type":"ap_none","bitwidth" : 2, "direction" : "READONLY", "bitSlice":[{"low":0,"up":1,"cElement": [{"cName": "scale_factor.V","cData": "uint2","bit_use": { "low": 0,"up": 1},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ s_axi_scalar_parameters_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_scalar_parameters_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_scalar_parameters_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_scalar_parameters_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_scalar_parameters_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_scalar_parameters_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_scalar_parameters_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_scalar_parameters_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_scalar_parameters_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_scalar_parameters_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_scalar_parameters_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_scalar_parameters_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_scalar_parameters_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_scalar_parameters_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_scalar_parameters_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_scalar_parameters_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_scalar_parameters_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ stream_in_TDATA sc_in sc_lv 32 signal 0 } 
	{ stream_in_TKEEP sc_in sc_lv 4 signal 1 } 
	{ stream_in_TSTRB sc_in sc_lv 4 signal 2 } 
	{ stream_in_TUSER sc_in sc_lv 1 signal 3 } 
	{ stream_in_TLAST sc_in sc_lv 1 signal 4 } 
	{ stream_in_TID sc_in sc_lv 1 signal 5 } 
	{ stream_in_TDEST sc_in sc_lv 1 signal 6 } 
	{ stream_out_TDATA sc_out sc_lv 32 signal 7 } 
	{ stream_out_TKEEP sc_out sc_lv 4 signal 8 } 
	{ stream_out_TSTRB sc_out sc_lv 4 signal 9 } 
	{ stream_out_TUSER sc_out sc_lv 1 signal 10 } 
	{ stream_out_TLAST sc_out sc_lv 1 signal 11 } 
	{ stream_out_TID sc_out sc_lv 1 signal 12 } 
	{ stream_out_TDEST sc_out sc_lv 1 signal 13 } 
	{ stream_in_TVALID sc_in sc_logic 1 invld 6 } 
	{ stream_in_TREADY sc_out sc_logic 1 inacc 6 } 
	{ stream_out_TVALID sc_out sc_logic 1 outvld 13 } 
	{ stream_out_TREADY sc_in sc_logic 1 outacc 13 } 
}
set NewPortList {[ 
	{ "name": "s_axi_scalar_parameters_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "AWADDR" },"address":[{"name":"height_V","role":"data","value":"16"},{"name":"width_V","role":"data","value":"24"},{"name":"scale_factor_V","role":"data","value":"32"}] },
	{ "name": "s_axi_scalar_parameters_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "AWVALID" } },
	{ "name": "s_axi_scalar_parameters_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "AWREADY" } },
	{ "name": "s_axi_scalar_parameters_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "WVALID" } },
	{ "name": "s_axi_scalar_parameters_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "WREADY" } },
	{ "name": "s_axi_scalar_parameters_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "WDATA" } },
	{ "name": "s_axi_scalar_parameters_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "WSTRB" } },
	{ "name": "s_axi_scalar_parameters_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_scalar_parameters_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "ARVALID" } },
	{ "name": "s_axi_scalar_parameters_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "ARREADY" } },
	{ "name": "s_axi_scalar_parameters_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "RVALID" } },
	{ "name": "s_axi_scalar_parameters_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "RREADY" } },
	{ "name": "s_axi_scalar_parameters_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "RDATA" } },
	{ "name": "s_axi_scalar_parameters_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "RRESP" } },
	{ "name": "s_axi_scalar_parameters_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "BVALID" } },
	{ "name": "s_axi_scalar_parameters_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "BREADY" } },
	{ "name": "s_axi_scalar_parameters_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scalar_parameters", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "stream_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_in_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_in_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_in_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_user_V", "role": "default" }} , 
 	{ "name": "stream_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_id_V", "role": "default" }} , 
 	{ "name": "stream_in_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "stream_out_V_data_V", "role": "default" }} , 
 	{ "name": "stream_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_out_V_keep_V", "role": "default" }} , 
 	{ "name": "stream_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "stream_out_V_strb_V", "role": "default" }} , 
 	{ "name": "stream_out_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_user_V", "role": "default" }} , 
 	{ "name": "stream_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_id_V", "role": "default" }} , 
 	{ "name": "stream_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_out_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_out_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "20", "34", "51", "68", "85", "126", "139", "171", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237"],
		"CDFG" : "FSRCNN",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20473506", "EstimateLatencyMax" : "55373730",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "layer1_U0"}],
		"OutputProcess" : [
			{"ID" : "171", "Name" : "Loop_1_proc221_U0"}],
		"Port" : [
			{"Name" : "stream_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "layer1_U0", "Port" : "stream_in_V_data_V"}]},
			{"Name" : "stream_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "layer1_U0", "Port" : "stream_in_V_keep_V"}]},
			{"Name" : "stream_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "layer1_U0", "Port" : "stream_in_V_strb_V"}]},
			{"Name" : "stream_in_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "layer1_U0", "Port" : "stream_in_V_user_V"}]},
			{"Name" : "stream_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "layer1_U0", "Port" : "stream_in_V_last_V"}]},
			{"Name" : "stream_in_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "layer1_U0", "Port" : "stream_in_V_id_V"}]},
			{"Name" : "stream_in_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "layer1_U0", "Port" : "stream_in_V_dest_V"}]},
			{"Name" : "stream_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "Loop_1_proc221_U0", "Port" : "stream_out_V_data_V"}]},
			{"Name" : "stream_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "Loop_1_proc221_U0", "Port" : "stream_out_V_keep_V"}]},
			{"Name" : "stream_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "Loop_1_proc221_U0", "Port" : "stream_out_V_strb_V"}]},
			{"Name" : "stream_out_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "Loop_1_proc221_U0", "Port" : "stream_out_V_user_V"}]},
			{"Name" : "stream_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "Loop_1_proc221_U0", "Port" : "stream_out_V_last_V"}]},
			{"Name" : "stream_out_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "Loop_1_proc221_U0", "Port" : "stream_out_V_id_V"}]},
			{"Name" : "stream_out_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "Loop_1_proc221_U0", "Port" : "stream_out_V_dest_V"}]},
			{"Name" : "height_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "width_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "scale_factor_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "weights_layer1_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "layer1_U0", "Port" : "weights_layer1_V_0"}]},
			{"Name" : "biases_layer1_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "layer1_U0", "Port" : "biases_layer1_V"}]},
			{"Name" : "weights_layer2_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "layer2_U0", "Port" : "weights_layer2_V_0"}]},
			{"Name" : "biases_layer2_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "layer2_U0", "Port" : "biases_layer2_V"}]},
			{"Name" : "biases_layer3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "layer3_U0", "Port" : "biases_layer3_V"}]},
			{"Name" : "weights_layer3_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "34", "SubInstance" : "layer3_U0", "Port" : "weights_layer3_V"}]},
			{"Name" : "biases_layer4_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "layer4_U0", "Port" : "biases_layer4_V"}]},
			{"Name" : "weights_layer4_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "layer4_U0", "Port" : "weights_layer4_V"}]},
			{"Name" : "biases_layer5_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "layer5_U0", "Port" : "biases_layer5_V"}]},
			{"Name" : "weights_layer5_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "layer5_U0", "Port" : "weights_layer5_V"}]},
			{"Name" : "biases_layer6_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "layer6_U0", "Port" : "biases_layer6_V"}]},
			{"Name" : "weights_layer6_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "85", "SubInstance" : "layer6_U0", "Port" : "weights_layer6_V"}]},
			{"Name" : "weights_layer7_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "layer7_U0", "Port" : "weights_layer7_V_0"}]},
			{"Name" : "biases_layer7_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "126", "SubInstance" : "layer7_U0", "Port" : "biases_layer7_V"}]},
			{"Name" : "weights_layer8_V_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "139", "SubInstance" : "layer8_U0", "Port" : "weights_layer8_V_0"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.FSRCNN_scalar_parameters_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer1_U0", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "18", "19"],
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
			{"Name" : "corr1_out_V_valid_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "174",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "175",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "176",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_user_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_id_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_dest_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "20", "DependentChan" : "180",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_layer1_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_layer1_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.weights_layer1_V_0_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.biases_layer1_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.subfilter_layer_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.correlate_img_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.out_layer_valid_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.buffer_data_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.buffer_keep_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.buffer_strb_V_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.buffer_user_V_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.buffer_last_V_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.buffer_id_V_U", "Parent" : "2"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.buffer_dest_V_U", "Parent" : "2"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.img_channel_V_U", "Parent" : "2"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.grp_CORRELATE_2_fu_1655", "Parent" : "2", "Child" : ["17"],
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
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.layer1_U0.grp_CORRELATE_2_fu_1655.FSRCNN_mul_mul_7sbkb_U1", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.FSRCNN_mul_mul_12ocq_U6", "Parent" : "2"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer1_U0.FSRCNN_mul_mul_12ocq_U7", "Parent" : "2"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer2_U0", "Parent" : "0", "Child" : ["21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
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
		"StartSource" : "2",
		"StartFifo" : "start_for_layer2_U0_U",
		"Port" : [
			{"Name" : "corr1_out_V_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "174",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "175",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "176",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_user_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "177",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "178",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_id_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "179",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr1_out_V_dest_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "180",
				"BlockSignal" : [
					{"Name" : "corr1_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_valid_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "181",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "182",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "183",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_user_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "184",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "185",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_id_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "186",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_dest_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "34", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_layer2_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_layer2_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.weights_layer2_V_0_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.biases_layer2_V_U", "Parent" : "20"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.correlate_img_V_assi_U", "Parent" : "20"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.img_channel_0_data_s_U", "Parent" : "20"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.img_channel_0_keep_s_U", "Parent" : "20"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.img_channel_0_user_s_U", "Parent" : "20"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.img_channel_0_last_s_U", "Parent" : "20"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.img_channel_0_id_V_U", "Parent" : "20"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.img_channel_0_dest_s_U", "Parent" : "20"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.channel_from_prev_ou_U", "Parent" : "20"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.out_layer_valid_V_U", "Parent" : "20"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.out_layer_data_V_U", "Parent" : "20"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer2_U0.FSRCNN_mul_mul_12Bew_U32", "Parent" : "20"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer3_U0", "Parent" : "0", "Child" : ["35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49"],
		"CDFG" : "layer3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57289", "EstimateLatencyMax" : "31433161",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "20",
		"StartFifo" : "start_for_layer3_U0_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state93", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CORRELATE_1_fu_8098"}],
		"Port" : [
			{"Name" : "corr2_out_V_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "181",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "182",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "183",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_user_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "184",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "185",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_id_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "186",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr2_out_V_dest_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "187",
				"BlockSignal" : [
					{"Name" : "corr2_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_valid_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_user_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_id_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_dest_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "51", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "biases_layer3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_layer3_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.biases_layer3_V_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.weights_layer3_V_U", "Parent" : "34"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.subfilter_layer_V_U", "Parent" : "34"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.correlate_img_U", "Parent" : "34"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.img_channel_valid_V_U", "Parent" : "34"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.img_channel_data_V_U", "Parent" : "34"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.img_channel_keep_V_U", "Parent" : "34"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.img_channel_user_V_U", "Parent" : "34"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.img_channel_last_V_U", "Parent" : "34"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.img_channel_id_V_U", "Parent" : "34"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.img_channel_dest_V_U", "Parent" : "34"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.channel_from_prev_ou_U", "Parent" : "34"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.out_layer_valid_V_U", "Parent" : "34"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.out_layer_data_V_U", "Parent" : "34"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer3_U0.grp_CORRELATE_1_fu_8098", "Parent" : "34", "Child" : ["50"],
		"CDFG" : "CORRELATE_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1153", "EstimateLatencyMax" : "2881",
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
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.layer3_U0.grp_CORRELATE_1_fu_8098.FSRCNN_mul_mul_12CeG_U56", "Parent" : "49"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer4_U0", "Parent" : "0", "Child" : ["52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66"],
		"CDFG" : "layer4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57289", "EstimateLatencyMax" : "31487809",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "34",
		"StartFifo" : "start_for_layer4_U0_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CORRELATE_1_fu_1614"}],
		"Port" : [
			{"Name" : "corr3_out_V_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "188",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "189",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "190",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_user_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "191",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "192",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_id_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "193",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr3_out_V_dest_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "34", "DependentChan" : "194",
				"BlockSignal" : [
					{"Name" : "corr3_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_valid_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_user_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "198",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "199",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_id_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "200",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_dest_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "biases_layer4_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_layer4_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.biases_layer4_V_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.weights_layer4_V_U", "Parent" : "51"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.subfilter_layer_V_U", "Parent" : "51"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.correlate_img_U", "Parent" : "51"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.img_channel_valid_V_U", "Parent" : "51"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.img_channel_data_V_U", "Parent" : "51"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.img_channel_keep_V_U", "Parent" : "51"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.img_channel_user_V_U", "Parent" : "51"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.img_channel_last_V_U", "Parent" : "51"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.img_channel_id_V_U", "Parent" : "51"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.img_channel_dest_V_U", "Parent" : "51"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.channel_from_prev_ou_U", "Parent" : "51"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.out_layer_valid_V_U", "Parent" : "51"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.out_layer_data_V_U", "Parent" : "51"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer4_U0.grp_CORRELATE_1_fu_1614", "Parent" : "51", "Child" : ["67"],
		"CDFG" : "CORRELATE_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1153", "EstimateLatencyMax" : "2881",
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
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.layer4_U0.grp_CORRELATE_1_fu_1614.FSRCNN_mul_mul_12CeG_U56", "Parent" : "66"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer5_U0", "Parent" : "0", "Child" : ["69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83"],
		"CDFG" : "layer5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57289", "EstimateLatencyMax" : "33459097",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "51",
		"StartFifo" : "start_for_layer5_U0_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CORRELATE_1_fu_1585"}],
		"Port" : [
			{"Name" : "corr4_out_V_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "195",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "196",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "197",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_user_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "198",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "199",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_id_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "200",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr4_out_V_dest_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "51", "DependentChan" : "201",
				"BlockSignal" : [
					{"Name" : "corr4_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_valid_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_user_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "206",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_id_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "207",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_dest_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "85", "DependentChan" : "208",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "biases_layer5_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_layer5_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.biases_layer5_V_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.weights_layer5_V_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.subfilter_layer_V_U", "Parent" : "68"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.correlate_img_U", "Parent" : "68"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.img_channel_valid_V_U", "Parent" : "68"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.img_channel_data_V_U", "Parent" : "68"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.img_channel_keep_V_U", "Parent" : "68"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.img_channel_user_V_U", "Parent" : "68"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.img_channel_last_V_U", "Parent" : "68"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.img_channel_id_V_U", "Parent" : "68"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.img_channel_dest_V_U", "Parent" : "68"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.channel_from_prev_ou_U", "Parent" : "68"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.out_layer_valid_V_U", "Parent" : "68"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.out_layer_data_V_U", "Parent" : "68"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer5_U0.grp_CORRELATE_1_fu_1585", "Parent" : "68", "Child" : ["84"],
		"CDFG" : "CORRELATE_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1153", "EstimateLatencyMax" : "2881",
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
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.layer5_U0.grp_CORRELATE_1_fu_1585.FSRCNN_mul_mul_12CeG_U56", "Parent" : "83"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer6_U0", "Parent" : "0", "Child" : ["86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "124", "125"],
		"CDFG" : "layer6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57223", "EstimateLatencyMax" : "34168663",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "68",
		"StartFifo" : "start_for_layer6_U0_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_CORRELATE_1_fu_2251"}],
		"Port" : [
			{"Name" : "corr5_out_V_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "202",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "203",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "204",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_user_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "205",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "206",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_id_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "207",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr5_out_V_dest_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "68", "DependentChan" : "208",
				"BlockSignal" : [
					{"Name" : "corr5_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_valid_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "209",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "210",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_user_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "213",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_id_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "214",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_dest_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "126", "DependentChan" : "215",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "biases_layer6_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weights_layer6_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.biases_layer6_V_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.weights_layer6_V_U", "Parent" : "85"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.subfilter_layer_V_U", "Parent" : "85"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.correlate_img_U", "Parent" : "85"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.img_channel_valid_V_U", "Parent" : "85"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.img_channel_data_V_U", "Parent" : "85"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.img_channel_keep_V_U", "Parent" : "85"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.img_channel_user_V_U", "Parent" : "85"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.img_channel_last_V_U", "Parent" : "85"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.img_channel_id_V_U", "Parent" : "85"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.img_channel_dest_V_U", "Parent" : "85"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.channel_from_prev_ou_U", "Parent" : "85"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_0_valid_V_U", "Parent" : "85"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_1_valid_V_U", "Parent" : "85"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_2_valid_V_U", "Parent" : "85"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_3_valid_V_U", "Parent" : "85"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_4_valid_V_U", "Parent" : "85"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_5_valid_V_U", "Parent" : "85"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_6_valid_V_U", "Parent" : "85"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_7_valid_V_U", "Parent" : "85"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_8_valid_V_U", "Parent" : "85"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_9_valid_V_U", "Parent" : "85"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_10_valid_s_U", "Parent" : "85"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_11_valid_s_U", "Parent" : "85"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_0_data_V_U", "Parent" : "85"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_1_data_V_U", "Parent" : "85"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_2_data_V_U", "Parent" : "85"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_3_data_V_U", "Parent" : "85"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_4_data_V_U", "Parent" : "85"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_5_data_V_U", "Parent" : "85"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_6_data_V_U", "Parent" : "85"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_7_data_V_U", "Parent" : "85"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_8_data_V_U", "Parent" : "85"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_9_data_V_U", "Parent" : "85"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_10_data_V_U", "Parent" : "85"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.out_layer_11_data_V_U", "Parent" : "85"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.grp_CORRELATE_1_fu_2251", "Parent" : "85", "Child" : ["123"],
		"CDFG" : "CORRELATE_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1153", "EstimateLatencyMax" : "2881",
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
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.layer6_U0.grp_CORRELATE_1_fu_2251.FSRCNN_mul_mul_12CeG_U56", "Parent" : "122"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.FSRCNN_mux_124_12bTr_U113", "Parent" : "85"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer6_U0.FSRCNN_mux_124_1_bUr_U114", "Parent" : "85"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer7_U0", "Parent" : "0", "Child" : ["127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138"],
		"CDFG" : "layer7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20472577", "EstimateLatencyMax" : "20472577",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "85",
		"StartFifo" : "start_for_layer7_U0_U",
		"Port" : [
			{"Name" : "corr6_out_V_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "209",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "210",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "211",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_user_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "212",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "213",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_id_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "214",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr6_out_V_dest_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "85", "DependentChan" : "215",
				"BlockSignal" : [
					{"Name" : "corr6_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_valid_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "216",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "217",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "218",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_user_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_id_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_dest_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "139", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_layer7_V_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "biases_layer7_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer7_U0.weights_layer7_V_0_U", "Parent" : "126"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer7_U0.biases_layer7_V_U", "Parent" : "126"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer7_U0.correlate_img_V_assi_U", "Parent" : "126"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer7_U0.img_channel_0_data_s_U", "Parent" : "126"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer7_U0.img_channel_0_keep_s_U", "Parent" : "126"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer7_U0.img_channel_0_user_s_U", "Parent" : "126"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer7_U0.img_channel_0_last_s_U", "Parent" : "126"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer7_U0.img_channel_0_id_V_U", "Parent" : "126"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer7_U0.img_channel_0_dest_s_U", "Parent" : "126"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer7_U0.channel_from_prev_ou_U", "Parent" : "126"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer7_U0.out_layer_valid_V_U", "Parent" : "126"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer7_U0.out_layer_data_V_U", "Parent" : "126"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.layer8_U0", "Parent" : "0", "Child" : ["140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "168", "169", "170"],
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
		"StartSource" : "126",
		"StartFifo" : "start_for_layer8_U0_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_DECORRELATE_fu_2139"}],
		"Port" : [
			{"Name" : "corr7_out_V_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "216",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "217",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "218",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_user_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "219",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "220",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_id_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "221",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr7_out_V_dest_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "126", "DependentChan" : "222",
				"BlockSignal" : [
					{"Name" : "corr7_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_valid_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_data_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_keep_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "225",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_user_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "226",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_last_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "227",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_id_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "228",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_dest_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "171", "DependentChan" : "229",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_dest_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weights_layer8_V_0", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.weights_layer8_V_0_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.subfilter_layer_V_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.decorrelate_img_V_U", "Parent" : "139"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.decorr_temp_V_U", "Parent" : "139"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.img_channel_valid_V_U", "Parent" : "139"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.img_channel_data_V_U", "Parent" : "139"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.img_channel_keep_V_U", "Parent" : "139"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.img_channel_user_V_U", "Parent" : "139"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.img_channel_last_V_U", "Parent" : "139"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.img_channel_id_V_U", "Parent" : "139"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.img_channel_dest_V_U", "Parent" : "139"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.expanded_channel_U", "Parent" : "139"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_0_valid_V_U", "Parent" : "139"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_1_valid_V_U", "Parent" : "139"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_2_valid_V_U", "Parent" : "139"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_3_valid_V_U", "Parent" : "139"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_4_valid_V_U", "Parent" : "139"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_5_valid_V_U", "Parent" : "139"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_0_data_V_U", "Parent" : "139"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_1_data_V_U", "Parent" : "139"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_2_data_V_U", "Parent" : "139"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_3_data_V_U", "Parent" : "139"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_4_data_V_U", "Parent" : "139"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_5_data_V_U", "Parent" : "139"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_0_0_user_U", "Parent" : "139"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.out_layer_1_0_user_U", "Parent" : "139"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.grp_DECORRELATE_fu_2139", "Parent" : "139", "Child" : ["167"],
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
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.layer8_U0.grp_DECORRELATE_fu_2139.FSRCNN_mac_muladdb7t_U152", "Parent" : "166"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.FSRCNN_mux_63_12_cyx_U157", "Parent" : "139"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.FSRCNN_mux_63_12_cyx_U158", "Parent" : "139"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.layer8_U0.FSRCNN_mux_63_1_1_1_U159", "Parent" : "139"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc221_U0", "Parent" : "0", "Child" : ["172", "173"],
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
		"StartSource" : "139",
		"StartFifo" : "start_for_Loop_1_cAy_U",
		"Port" : [
			{"Name" : "corr8_out_V_valid_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "223",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_valid_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_data_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "224",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_data_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_keep_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "225",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_keep_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_user_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "226",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_user_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_last_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "227",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_last_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_id_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "228",
				"BlockSignal" : [
					{"Name" : "corr8_out_V_id_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "corr8_out_V_dest_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "139", "DependentChan" : "229",
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
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc221_U0.FSRCNN_fcmp_32ns_czy_U186", "Parent" : "171"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Loop_1_proc221_U0.FSRCNN_fcmp_32ns_czy_U187", "Parent" : "171"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr1_out_V_valid_V_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr1_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr1_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr1_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr1_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr1_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr1_out_V_dest_V_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr2_out_V_valid_V_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr2_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr2_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr2_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr2_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr2_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr2_out_V_dest_V_U", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr3_out_V_valid_V_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr3_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr3_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr3_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr3_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr3_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr3_out_V_dest_V_U", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr4_out_V_valid_V_U", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr4_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr4_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr4_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr4_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr4_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr4_out_V_dest_V_U", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr5_out_V_valid_V_U", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr5_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr5_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr5_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr5_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr5_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr5_out_V_dest_V_U", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr6_out_V_valid_V_U", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr6_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr6_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr6_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr6_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr6_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr6_out_V_dest_V_U", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr7_out_V_valid_V_U", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr7_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr7_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr7_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr7_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr7_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr7_out_V_dest_V_U", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr8_out_V_valid_V_U", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr8_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr8_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr8_out_V_user_V_U", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr8_out_V_last_V_U", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr8_out_V_id_V_U", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.corr8_out_V_dest_V_U", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_layer2_U0_U", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_layer3_U0_U", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_layer4_U0_U", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_layer5_U0_U", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_layer6_U0_U", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_layer7_U0_U", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_layer8_U0_U", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Loop_1_cAy_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	FSRCNN {
		stream_in_V_data_V {Type I LastRead 10 FirstWrite -1}
		stream_in_V_keep_V {Type I LastRead 10 FirstWrite -1}
		stream_in_V_strb_V {Type I LastRead 10 FirstWrite -1}
		stream_in_V_user_V {Type I LastRead 10 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 10 FirstWrite -1}
		stream_in_V_id_V {Type I LastRead 10 FirstWrite -1}
		stream_in_V_dest_V {Type I LastRead 10 FirstWrite -1}
		stream_out_V_data_V {Type O LastRead -1 FirstWrite 11}
		stream_out_V_keep_V {Type O LastRead -1 FirstWrite 11}
		stream_out_V_strb_V {Type O LastRead -1 FirstWrite 11}
		stream_out_V_user_V {Type O LastRead -1 FirstWrite 11}
		stream_out_V_last_V {Type O LastRead -1 FirstWrite 11}
		stream_out_V_id_V {Type O LastRead -1 FirstWrite 11}
		stream_out_V_dest_V {Type O LastRead -1 FirstWrite 11}
		height_V {Type I LastRead -1 FirstWrite -1}
		width_V {Type I LastRead -1 FirstWrite -1}
		scale_factor_V {Type I LastRead -1 FirstWrite -1}
		weights_layer1_V_0 {Type I LastRead -1 FirstWrite -1}
		biases_layer1_V {Type I LastRead -1 FirstWrite -1}
		weights_layer2_V_0 {Type I LastRead -1 FirstWrite -1}
		biases_layer2_V {Type I LastRead -1 FirstWrite -1}
		biases_layer3_V {Type I LastRead -1 FirstWrite -1}
		weights_layer3_V {Type I LastRead -1 FirstWrite -1}
		biases_layer4_V {Type I LastRead -1 FirstWrite -1}
		weights_layer4_V {Type I LastRead -1 FirstWrite -1}
		biases_layer5_V {Type I LastRead -1 FirstWrite -1}
		weights_layer5_V {Type I LastRead -1 FirstWrite -1}
		biases_layer6_V {Type I LastRead -1 FirstWrite -1}
		weights_layer6_V {Type I LastRead -1 FirstWrite -1}
		weights_layer7_V_0 {Type I LastRead -1 FirstWrite -1}
		biases_layer7_V {Type I LastRead -1 FirstWrite -1}
		weights_layer8_V_0 {Type I LastRead -1 FirstWrite -1}}
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
		correlate_img_V {Type O LastRead -1 FirstWrite 5}}
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
		biases_layer2_V {Type I LastRead -1 FirstWrite -1}}
	layer3 {
		corr2_out_V_valid_V {Type I LastRead 9 FirstWrite -1}
		corr2_out_V_data_V {Type I LastRead 9 FirstWrite -1}
		corr2_out_V_keep_V {Type I LastRead 9 FirstWrite -1}
		corr2_out_V_user_V {Type I LastRead 9 FirstWrite -1}
		corr2_out_V_last_V {Type I LastRead 9 FirstWrite -1}
		corr2_out_V_id_V {Type I LastRead 9 FirstWrite -1}
		corr2_out_V_dest_V {Type I LastRead 9 FirstWrite -1}
		corr3_out_V_valid_V {Type O LastRead -1 FirstWrite 9}
		corr3_out_V_data_V {Type O LastRead -1 FirstWrite 9}
		corr3_out_V_keep_V {Type O LastRead -1 FirstWrite 9}
		corr3_out_V_user_V {Type O LastRead -1 FirstWrite 9}
		corr3_out_V_last_V {Type O LastRead -1 FirstWrite 9}
		corr3_out_V_id_V {Type O LastRead -1 FirstWrite 9}
		corr3_out_V_dest_V {Type O LastRead -1 FirstWrite 9}
		biases_layer3_V {Type I LastRead -1 FirstWrite -1}
		weights_layer3_V {Type I LastRead -1 FirstWrite -1}}
	CORRELATE_1 {
		prev_output_channel_V {Type I LastRead 2 FirstWrite -1}
		filter_V {Type I LastRead 3 FirstWrite -1}
		correlate_img_V {Type O LastRead -1 FirstWrite 5}}
	layer4 {
		corr3_out_V_valid_V {Type I LastRead 7 FirstWrite -1}
		corr3_out_V_data_V {Type I LastRead 7 FirstWrite -1}
		corr3_out_V_keep_V {Type I LastRead 7 FirstWrite -1}
		corr3_out_V_user_V {Type I LastRead 7 FirstWrite -1}
		corr3_out_V_last_V {Type I LastRead 7 FirstWrite -1}
		corr3_out_V_id_V {Type I LastRead 7 FirstWrite -1}
		corr3_out_V_dest_V {Type I LastRead 7 FirstWrite -1}
		corr4_out_V_valid_V {Type O LastRead -1 FirstWrite 9}
		corr4_out_V_data_V {Type O LastRead -1 FirstWrite 9}
		corr4_out_V_keep_V {Type O LastRead -1 FirstWrite 9}
		corr4_out_V_user_V {Type O LastRead -1 FirstWrite 9}
		corr4_out_V_last_V {Type O LastRead -1 FirstWrite 9}
		corr4_out_V_id_V {Type O LastRead -1 FirstWrite 9}
		corr4_out_V_dest_V {Type O LastRead -1 FirstWrite 9}
		biases_layer4_V {Type I LastRead -1 FirstWrite -1}
		weights_layer4_V {Type I LastRead -1 FirstWrite -1}}
	CORRELATE_1 {
		prev_output_channel_V {Type I LastRead 2 FirstWrite -1}
		filter_V {Type I LastRead 3 FirstWrite -1}
		correlate_img_V {Type O LastRead -1 FirstWrite 5}}
	layer5 {
		corr4_out_V_valid_V {Type I LastRead 7 FirstWrite -1}
		corr4_out_V_data_V {Type I LastRead 7 FirstWrite -1}
		corr4_out_V_keep_V {Type I LastRead 7 FirstWrite -1}
		corr4_out_V_user_V {Type I LastRead 7 FirstWrite -1}
		corr4_out_V_last_V {Type I LastRead 7 FirstWrite -1}
		corr4_out_V_id_V {Type I LastRead 7 FirstWrite -1}
		corr4_out_V_dest_V {Type I LastRead 7 FirstWrite -1}
		corr5_out_V_valid_V {Type O LastRead -1 FirstWrite 9}
		corr5_out_V_data_V {Type O LastRead -1 FirstWrite 9}
		corr5_out_V_keep_V {Type O LastRead -1 FirstWrite 9}
		corr5_out_V_user_V {Type O LastRead -1 FirstWrite 9}
		corr5_out_V_last_V {Type O LastRead -1 FirstWrite 9}
		corr5_out_V_id_V {Type O LastRead -1 FirstWrite 9}
		corr5_out_V_dest_V {Type O LastRead -1 FirstWrite 9}
		biases_layer5_V {Type I LastRead -1 FirstWrite -1}
		weights_layer5_V {Type I LastRead -1 FirstWrite -1}}
	CORRELATE_1 {
		prev_output_channel_V {Type I LastRead 2 FirstWrite -1}
		filter_V {Type I LastRead 3 FirstWrite -1}
		correlate_img_V {Type O LastRead -1 FirstWrite 5}}
	layer6 {
		corr5_out_V_valid_V {Type I LastRead 30 FirstWrite -1}
		corr5_out_V_data_V {Type I LastRead 30 FirstWrite -1}
		corr5_out_V_keep_V {Type I LastRead 30 FirstWrite -1}
		corr5_out_V_user_V {Type I LastRead 30 FirstWrite -1}
		corr5_out_V_last_V {Type I LastRead 30 FirstWrite -1}
		corr5_out_V_id_V {Type I LastRead 30 FirstWrite -1}
		corr5_out_V_dest_V {Type I LastRead 30 FirstWrite -1}
		corr6_out_V_valid_V {Type O LastRead -1 FirstWrite 34}
		corr6_out_V_data_V {Type O LastRead -1 FirstWrite 34}
		corr6_out_V_keep_V {Type O LastRead -1 FirstWrite 34}
		corr6_out_V_user_V {Type O LastRead -1 FirstWrite 34}
		corr6_out_V_last_V {Type O LastRead -1 FirstWrite 34}
		corr6_out_V_id_V {Type O LastRead -1 FirstWrite 34}
		corr6_out_V_dest_V {Type O LastRead -1 FirstWrite 34}
		biases_layer6_V {Type I LastRead -1 FirstWrite -1}
		weights_layer6_V {Type I LastRead -1 FirstWrite -1}}
	CORRELATE_1 {
		prev_output_channel_V {Type I LastRead 2 FirstWrite -1}
		filter_V {Type I LastRead 3 FirstWrite -1}
		correlate_img_V {Type O LastRead -1 FirstWrite 5}}
	layer7 {
		corr6_out_V_valid_V {Type I LastRead 4 FirstWrite -1}
		corr6_out_V_data_V {Type I LastRead 4 FirstWrite -1}
		corr6_out_V_keep_V {Type I LastRead 4 FirstWrite -1}
		corr6_out_V_user_V {Type I LastRead 4 FirstWrite -1}
		corr6_out_V_last_V {Type I LastRead 4 FirstWrite -1}
		corr6_out_V_id_V {Type I LastRead 4 FirstWrite -1}
		corr6_out_V_dest_V {Type I LastRead 4 FirstWrite -1}
		corr7_out_V_valid_V {Type O LastRead -1 FirstWrite 9}
		corr7_out_V_data_V {Type O LastRead -1 FirstWrite 9}
		corr7_out_V_keep_V {Type O LastRead -1 FirstWrite 9}
		corr7_out_V_user_V {Type O LastRead -1 FirstWrite 9}
		corr7_out_V_last_V {Type O LastRead -1 FirstWrite 9}
		corr7_out_V_id_V {Type O LastRead -1 FirstWrite 9}
		corr7_out_V_dest_V {Type O LastRead -1 FirstWrite 9}
		weights_layer7_V_0 {Type I LastRead -1 FirstWrite -1}
		biases_layer7_V {Type I LastRead -1 FirstWrite -1}}
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
		expanded_channel_V {Type IO LastRead 4 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "20473506", "Max" : "55373730"}
	, {"Name" : "Interval", "Min" : "20472578", "Max" : "55372682"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_in_V_data_V { axis {  { stream_in_TDATA in_data 0 32 } } }
	stream_in_V_keep_V { axis {  { stream_in_TKEEP in_data 0 4 } } }
	stream_in_V_strb_V { axis {  { stream_in_TSTRB in_data 0 4 } } }
	stream_in_V_user_V { axis {  { stream_in_TUSER in_data 0 1 } } }
	stream_in_V_last_V { axis {  { stream_in_TLAST in_data 0 1 } } }
	stream_in_V_id_V { axis {  { stream_in_TID in_data 0 1 } } }
	stream_in_V_dest_V { axis {  { stream_in_TDEST in_data 0 1 }  { stream_in_TVALID in_vld 0 1 }  { stream_in_TREADY in_acc 1 1 } } }
	stream_out_V_data_V { axis {  { stream_out_TDATA out_data 1 32 } } }
	stream_out_V_keep_V { axis {  { stream_out_TKEEP out_data 1 4 } } }
	stream_out_V_strb_V { axis {  { stream_out_TSTRB out_data 1 4 } } }
	stream_out_V_user_V { axis {  { stream_out_TUSER out_data 1 1 } } }
	stream_out_V_last_V { axis {  { stream_out_TLAST out_data 1 1 } } }
	stream_out_V_id_V { axis {  { stream_out_TID out_data 1 1 } } }
	stream_out_V_dest_V { axis {  { stream_out_TDEST out_data 1 1 }  { stream_out_TVALID out_vld 1 1 }  { stream_out_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
