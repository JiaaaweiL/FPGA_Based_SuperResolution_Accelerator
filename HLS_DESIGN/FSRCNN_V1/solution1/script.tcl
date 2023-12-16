############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FSRCNN_V1
set_top FSRCNN
add_files FSRCNN_V1/FSRCNN.cpp -cflags "-IC:/xfopencv-master/xfopencv-master/include -D__XFCV_HLS_MODE__ -std=c++0x"
add_files FSRCNN_V1/imageinfo.h
add_files FSRCNN_V1/layer1.h
add_files FSRCNN_V1/layer2.h
add_files FSRCNN_V1/layer3.h
add_files FSRCNN_V1/layer4.h
add_files FSRCNN_V1/layer5.h
add_files FSRCNN_V1/layer6.h
add_files FSRCNN_V1/layer7.h
add_files FSRCNN_V1/layer8.h
add_files FSRCNN_V1/wrapper.hpp
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/core/xf_arithm.hpp
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/common/xf_axi_io.h
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/common/xf_axi_sdata.h
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/common/xf_common.h
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/core/xf_convert_bitdepth.hpp
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/common/xf_infra.h
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/core/xf_magnitude.hpp
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/core/xf_math.h
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/core/xf_mean_stddev.hpp
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/core/xf_min_max_loc.hpp
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/common/xf_params.h
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/core/xf_phase.hpp
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/common/xf_structs.h
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/common/xf_sw_utils.h
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/common/xf_types.h
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/common/xf_utility.h
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/common/xf_video_core.h
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/common/xf_video_mem.h
add_files xfopencv-master/xfopencv-master/xfopencv-master/include/common/xf_video_types.h
open_solution "solution1"
set_part {xc7z020-clg400-1} -tool vivado
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./FSRCNN_V1/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -rtl verilog -format ip_catalog
