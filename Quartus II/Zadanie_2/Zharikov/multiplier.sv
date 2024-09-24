module multiplier(
    input logic [7:0] A,  // Input signal A (8 bits)
    input logic [7:0] B,  // Input signal B (8 bits)
    output logic [15:0] C // Output signal C (16 bits, result of multiplication)
);

    // Procedural block for multiplication
    always_comb begin
        C = A * B;  // Multiply A by B
    end

endmodule