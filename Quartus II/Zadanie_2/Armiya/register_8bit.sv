module register_8bit(
    input logic [7:0] A,
    input logic [7:0] B,
    input logic [7:0] C,
    input logic clk,
    output logic [15:0] DATA_OUT
);

    always_ff @(posedge clk) begin
        DATA_OUT <= (A * B) + C;
    end
endmodule