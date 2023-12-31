// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XFSRCNN_H
#define XFSRCNN_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xfsrcnn_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Scalar_parameters_BaseAddress;
} XFsrcnn_Config;
#endif

typedef struct {
    u32 Scalar_parameters_BaseAddress;
    u32 IsReady;
} XFsrcnn;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFsrcnn_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFsrcnn_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFsrcnn_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFsrcnn_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XFsrcnn_Initialize(XFsrcnn *InstancePtr, u16 DeviceId);
XFsrcnn_Config* XFsrcnn_LookupConfig(u16 DeviceId);
int XFsrcnn_CfgInitialize(XFsrcnn *InstancePtr, XFsrcnn_Config *ConfigPtr);
#else
int XFsrcnn_Initialize(XFsrcnn *InstancePtr, const char* InstanceName);
int XFsrcnn_Release(XFsrcnn *InstancePtr);
#endif


void XFsrcnn_Set_height_V(XFsrcnn *InstancePtr, u32 Data);
u32 XFsrcnn_Get_height_V(XFsrcnn *InstancePtr);
void XFsrcnn_Set_width_V(XFsrcnn *InstancePtr, u32 Data);
u32 XFsrcnn_Get_width_V(XFsrcnn *InstancePtr);
void XFsrcnn_Set_scale_factor_V(XFsrcnn *InstancePtr, u32 Data);
u32 XFsrcnn_Get_scale_factor_V(XFsrcnn *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
