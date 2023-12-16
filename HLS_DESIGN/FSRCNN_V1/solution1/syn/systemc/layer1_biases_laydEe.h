// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __layer1_biases_laydEe_H__
#define __layer1_biases_laydEe_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct layer1_biases_laydEe_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 5;
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


   SC_CTOR(layer1_biases_laydEe_ram) {
        ram[0] = "0b00001";
        ram[1] = "0b11111";
        ram[2] = "0b11111";
        ram[3] = "0b00000";
        ram[4] = "0b11111";
        ram[5] = "0b00001";
        ram[6] = "0b11111";
        ram[7] = "0b11111";
        ram[8] = "0b11111";
        ram[9] = "0b11111";
        ram[10] = "0b00000";
        ram[11] = "0b11110";
        ram[12] = "0b00000";
        ram[13] = "0b00011";
        ram[14] = "0b00000";
        ram[15] = "0b00000";
        ram[16] = "0b00000";
        ram[17] = "0b00000";
        ram[18] = "0b11111";
        ram[19] = "0b01000";
        ram[20] = "0b00000";
        ram[21] = "0b00000";
        ram[22] = "0b11111";
        ram[23] = "0b11101";
        ram[24] = "0b00001";
        ram[25] = "0b11111";
        ram[26] = "0b00010";
        ram[27] = "0b11110";
        ram[28] = "0b00000";
        ram[29] = "0b11110";
        ram[30] = "0b11111";
        ram[31] = "0b11110";
        ram[32] = "0b00000";
        ram[33] = "0b11111";
        ram[34] = "0b00011";
        ram[35] = "0b00000";
        ram[36] = "0b00001";
        ram[37] = "0b00000";
        ram[38] = "0b11111";
        ram[39] = "0b00000";
        ram[40] = "0b00011";
        ram[41] = "0b11110";
        ram[42] = "0b00001";
        ram[43] = "0b00011";
        ram[44] = "0b00001";
        ram[45] = "0b11111";
        ram[46] = "0b00000";
        ram[47] = "0b11111";
        ram[48] = "0b00000";
        ram[49] = "0b11100";
        ram[50] = "0b00001";
        ram[51] = "0b00000";
        ram[52] = "0b11111";
        ram[53] = "0b00000";
        ram[54] = "0b00000";
        ram[55] = "0b00001";


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


SC_MODULE(layer1_biases_laydEe) {


static const unsigned DataWidth = 5;
static const unsigned AddressRange = 56;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


layer1_biases_laydEe_ram* meminst;


SC_CTOR(layer1_biases_laydEe) {
meminst = new layer1_biases_laydEe_ram("layer1_biases_laydEe_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~layer1_biases_laydEe() {
    delete meminst;
}


};//endmodule
#endif
