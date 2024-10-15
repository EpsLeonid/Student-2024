`include "params.sv"

module register_modified (
    input reg  clk,                                       // Clock signal
    input reg  [params::DATA_WIDTH-1:0] A,               // Input data A
    input reg  [params::DATA_WIDTH-1:0] B,               // Input data B
    input reg  [params::DATA_WIDTH-1:0] C,               // Input data C
    output reg  [params::DATA_OUT_WIDTH-1:0] DATA_OUT,   // Output data
    output reg [params::DATA_WIDTH-1:0] C_buffer,  			// Intermediate register for storing value of C
    output reg [params::DATA_WIDTH-1:0] C_reg,            // Register for C
    output reg [params::DATA_OUT_WIDTH-1:0] Mult_reg      // Register for the result of A * B
);

    always_ff @(posedge clk) begin
         // Update C_buffer every clock cycle
        C_buffer <= C;
    
        Mult_reg <= A * B;  // Calculate A * B every clock cycle

        // Transfer value from C_buffer to C_reg, delay by one clock cycle
        C_reg <= C_buffer;

        // Calculate DATA_OUT using C_reg and Mult_reg
        DATA_OUT <= Mult_reg + C_reg;              
    end

endmodule