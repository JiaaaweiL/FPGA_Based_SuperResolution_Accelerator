
`timescale 1 ns / 1 ps

  module FSRCNN_mul_mul_7sbkb_DSP48_0(a, b, p);
input signed [7 - 1 : 0] a;
input signed [12 - 1 : 0] b;
output signed [19 - 1 : 0] p;

assign p = $signed (a) * $signed (b);

endmodule
`timescale 1 ns / 1 ps
module FSRCNN_mul_mul_7sbkb(
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



FSRCNN_mul_mul_7sbkb_DSP48_0 FSRCNN_mul_mul_7sbkb_DSP48_0_U(
    .a( din0 ),
    .b( din1 ),
    .p( dout ));

endmodule

