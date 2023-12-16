// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xfsrcnn.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFsrcnn_CfgInitialize(XFsrcnn *InstancePtr, XFsrcnn_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Scalar_parameters_BaseAddress = ConfigPtr->Scalar_parameters_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFsrcnn_Set_height_V(XFsrcnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFsrcnn_WriteReg(InstancePtr->Scalar_parameters_BaseAddress, XFSRCNN_SCALAR_PARAMETERS_ADDR_HEIGHT_V_DATA, Data);
}

u32 XFsrcnn_Get_height_V(XFsrcnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFsrcnn_ReadReg(InstancePtr->Scalar_parameters_BaseAddress, XFSRCNN_SCALAR_PARAMETERS_ADDR_HEIGHT_V_DATA);
    return Data;
}

void XFsrcnn_Set_width_V(XFsrcnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFsrcnn_WriteReg(InstancePtr->Scalar_parameters_BaseAddress, XFSRCNN_SCALAR_PARAMETERS_ADDR_WIDTH_V_DATA, Data);
}

u32 XFsrcnn_Get_width_V(XFsrcnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFsrcnn_ReadReg(InstancePtr->Scalar_parameters_BaseAddress, XFSRCNN_SCALAR_PARAMETERS_ADDR_WIDTH_V_DATA);
    return Data;
}

void XFsrcnn_Set_scale_factor_V(XFsrcnn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFsrcnn_WriteReg(InstancePtr->Scalar_parameters_BaseAddress, XFSRCNN_SCALAR_PARAMETERS_ADDR_SCALE_FACTOR_V_DATA, Data);
}

u32 XFsrcnn_Get_scale_factor_V(XFsrcnn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFsrcnn_ReadReg(InstancePtr->Scalar_parameters_BaseAddress, XFSRCNN_SCALAR_PARAMETERS_ADDR_SCALE_FACTOR_V_DATA);
    return Data;
}

