// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xfsrcnn.h"

extern XFsrcnn_Config XFsrcnn_ConfigTable[];

XFsrcnn_Config *XFsrcnn_LookupConfig(u16 DeviceId) {
	XFsrcnn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFSRCNN_NUM_INSTANCES; Index++) {
		if (XFsrcnn_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFsrcnn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFsrcnn_Initialize(XFsrcnn *InstancePtr, u16 DeviceId) {
	XFsrcnn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFsrcnn_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFsrcnn_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

