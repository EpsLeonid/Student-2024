`include "params.sv"

module register_modified (
    input logic clk,                     // Clock signal
    input logic reset_n,                 // Active-low reset signal
    input logic [params::DATA_WIDTH-1:0] A, // Input data A
    input logic [params::DATA_WIDTH-1:0] B, // Input data B
    input logic [params::DATA_WIDTH-1:0] C, // Input data C
    output logic [params::DATA_OUT_WIDTH-1:0] DATA_OUT // Output data
);

    // Process, which is triggered on the rising edge of the clock or the falling edge of reset
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            // Reset output to zero on active low reset
            DATA_OUT <= '0; // Initialization of output data
        end else begin
            // Perform the operation
            DATA_OUT <= (A * B) + C;
        end
    end

endmodule