`include "params.sv"

module register_modified (
    input logic clk,                     // Clock signal
    input logic [params::DATA_WIDTH-1:0] A, // Input data A
    input logic [params::DATA_WIDTH-1:0] B, // Input data B
    input logic [params::DATA_WIDTH-1:0] C, // Input data C
    output logic [params::DATA_OUT_WIDTH-1:0] DATA_OUT // Output data
);

// Register to store the previous value of input C
reg[params::DATA_WIDTH-1:0] C_reg;           // Register for C

// Always block to update the registers and compute the output
    always_ff @(posedge clk) begin
		C_reg <= C;              // Store value of C
		// Calculate the result using inputs A, B, and the stored C value
        DATA_OUT <= A * B + C_reg;
    end

endmodule