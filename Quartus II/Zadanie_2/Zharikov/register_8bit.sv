module register_8bit (
    input logic clk,         // Clock signal
    input logic reset_n,     // Active-low reset signal
    input logic [7:0] A,     // Input data A
    input logic [7:0] B,     // Input data B
    input logic [7:0] C,     // Input data C
    output logic [7:0] DATA_OUT // Output data
);

    // Process, which is triggered on the rising edge of the clock or the falling edge of reset
    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            // Reset output to zero on active low reset
            DATA_OUT <= 8'b0;
        end else begin
            // Perform the operation
            DATA_OUT <= (A * B) + C;
        end
    end

endmodule