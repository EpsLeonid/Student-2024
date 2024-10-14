module mult_register (
    input logic clk,
    input logic [7:0] A,
    input logic [7:0] B,
    input logic [7:0] C,
    output logic [15:0] DATA_OUT
);

    logic [15:0] product;

    always_ff @(posedge clk) begin
        product <= A * B;
        DATA_OUT <= product + C;
    end
endmodule