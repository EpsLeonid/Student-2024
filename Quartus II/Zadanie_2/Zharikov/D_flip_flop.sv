module D_flip_flop (
    input logic d,    // Input D
    input logic clk,  // Input clock signal
    output logic out  // Output Q
);

    // Process that triggers on the rising edge of the clock signal
    always_ff @(posedge clk) begin
        out <= d;  // Assign value D to output Q
    end

endmodule