`include "parameter.sv"

module mult_register_param (
    input logic clk,
    input logic [WIDTH-1:0] A,
    input logic [WIDTH-1:0] B,
    input logic [WIDTH-1:0] C,
    output logic [OUT_WIDTH-1:0] DATA_OUT
);

    logic [OUT_WIDTH-1:0] product;

    always_ff @(posedge clk) begin
        product <= A * B;
        DATA_OUT <= product + C;
    end
endmodule