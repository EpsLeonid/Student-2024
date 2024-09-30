// The maximum we can represent with an 8-bit signed number, which we must use, is:
// Maximum value of an 8-bit signed number: (2^8 - 1 = 255)
// Maximum value represented by two 8-bit signed numbers: (255 * 255 = 65025)
// 65025+255=65280 is represented in 16 bits.
`ifndef PARAMS_SV
`define PARAMS_SV

package params;
    // Input data width
    parameter int DATA_WIDTH = 8; // Input data A, B, C
    // Output data width
    parameter int DATA_OUT_WIDTH = DATA_WIDTH * 2; // Width of output data for processing pipeline
endpackage

`endif // PARAMS_SV