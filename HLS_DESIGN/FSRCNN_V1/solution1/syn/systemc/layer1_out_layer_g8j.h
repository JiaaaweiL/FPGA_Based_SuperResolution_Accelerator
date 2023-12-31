// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __layer1_out_layer_g8j_H__
#define __layer1_out_layer_g8j_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct layer1_out_layer_g8j_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 1;
  static const unsigned AddressRange = 3584;
  static const unsigned AddressWidth = 12;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(layer1_out_layer_g8j_ram) {


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


SC_MODULE(layer1_out_layer_g8j) {


static const unsigned DataWidth = 1;
static const unsigned AddressRange = 3584;
static const unsigned AddressWidth = 12;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


layer1_out_layer_g8j_ram* meminst;


SC_CTOR(layer1_out_layer_g8j) {
meminst = new layer1_out_layer_g8j_ram("layer1_out_layer_g8j_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~layer1_out_layer_g8j() {
    delete meminst;
}


};//endmodule
#endif
