// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __layer7_biases_laybWr_H__
#define __layer7_biases_laybWr_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct layer7_biases_laybWr_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 3;
  static const unsigned AddressRange = 56;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(layer7_biases_laybWr_ram) {
        ram[0] = "0b111";
        ram[1] = "0b000";
        ram[2] = "0b111";
        ram[3] = "0b000";
        ram[4] = "0b000";
        ram[5] = "0b111";
        ram[6] = "0b000";
        ram[7] = "0b110";
        ram[8] = "0b110";
        ram[9] = "0b111";
        ram[10] = "0b000";
        ram[11] = "0b000";
        ram[12] = "0b011";
        ram[13] = "0b111";
        ram[14] = "0b111";
        ram[15] = "0b111";
        ram[16] = "0b111";
        ram[17] = "0b000";
        ram[18] = "0b000";
        ram[19] = "0b111";
        ram[20] = "0b111";
        ram[21] = "0b000";
        ram[22] = "0b111";
        ram[23] = "0b111";
        ram[24] = "0b001";
        ram[25] = "0b000";
        ram[26] = "0b111";
        ram[27] = "0b001";
        ram[28] = "0b000";
        ram[29] = "0b000";
        ram[30] = "0b111";
        ram[31] = "0b111";
        ram[32] = "0b000";
        ram[33] = "0b111";
        ram[34] = "0b111";
        ram[35] = "0b000";
        ram[36] = "0b111";
        ram[37] = "0b111";
        ram[38] = "0b000";
        ram[39] = "0b000";
        for (unsigned i = 40; i < 46 ; i = i + 1) {
            ram[i] = "0b111";
        }
        ram[46] = "0b110";
        ram[47] = "0b000";
        ram[48] = "0b010";
        for (unsigned i = 49; i < 54 ; i = i + 1) {
            ram[i] = "0b111";
        }
        ram[54] = "0b000";
        ram[55] = "0b111";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(layer7_biases_laybWr) {


static const unsigned DataWidth = 3;
static const unsigned AddressRange = 56;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


layer7_biases_laybWr_ram* meminst;


SC_CTOR(layer7_biases_laybWr) {
meminst = new layer7_biases_laybWr_ram("layer7_biases_laybWr_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~layer7_biases_laybWr() {
    delete meminst;
}


};//endmodule
#endif
