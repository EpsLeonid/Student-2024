module register_8bit (
    input logic clk,             // Clock signal
    input logic [7:0] A,         // Input signal A
    input logic [7:0] B,         // Input signal B
    input logic [7:0] C,         // Input signal C
    output logic [7:0] DATA_OUT // Output signal
);

// Register to store the previous value of input C
reg [7:0] C_reg;           // Register for C
reg [7:0] Mult_reg;           // Register for 

// Always block to update the registers and compute the output
always_ff @(posedge clk) begin
    C_reg <= C;
    Mult_reg <= A * B;               // Store value of C
    // Calculate the result using inputs A, B, and the stored C value
    DATA_OUT <= Mult_reg + C_reg;
end

endmodule