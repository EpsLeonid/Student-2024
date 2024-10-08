`include "params.svh"

module register_parametrized (
    input logic [WIDTH_A-1:0] A,           
    input logic [WIDTH_B-1:0] B,           
    input logic [WIDTH_C-1:0] C,           
    input logic clk,
    output logic [WIDTH_OUT-1:0] DATA_OUT  
);

    always_ff @(posedge clk) begin
        DATA_OUT <= (A * B) + C;  
    end
endmodule