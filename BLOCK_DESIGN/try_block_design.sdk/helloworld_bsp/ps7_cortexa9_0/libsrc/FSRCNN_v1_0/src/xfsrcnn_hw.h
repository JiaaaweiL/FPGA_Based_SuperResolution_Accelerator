// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// scalar_parameters
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of height_V
//        bit 11~0 - height_V[11:0] (Read/Write)
//        others   - reserved
// 0x14 : reserved
// 0x18 : Data signal of width_V
//        bit 11~0 - width_V[11:0] (Read/Write)
//        others   - reserved
// 0x1c : reserved
// 0x20 : Data signal of scale_factor_V
//        bit 7~0 - scale_factor_V[7:0] (Read/Write)
//        others  - reserved
// 0x24 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFSRCNN_SCALAR_PARAMETERS_ADDR_HEIGHT_V_DATA       0x10
#define XFSRCNN_SCALAR_PARAMETERS_BITS_HEIGHT_V_DATA       12
#define XFSRCNN_SCALAR_PARAMETERS_ADDR_WIDTH_V_DATA        0x18
#define XFSRCNN_SCALAR_PARAMETERS_BITS_WIDTH_V_DATA        12
#define XFSRCNN_SCALAR_PARAMETERS_ADDR_SCALE_FACTOR_V_DATA 0x20
#define XFSRCNN_SCALAR_PARAMETERS_BITS_SCALE_FACTOR_V_DATA 8

