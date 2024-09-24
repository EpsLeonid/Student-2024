`include "include1.inc"
    
    module Register_2 (
    input logic [WIDTH-1:0] A,       
    input logic [WIDTH-1:0] B,       
    input logic [WIDTH-1:0] C,       
    input logic clk,           
    output logic [OUT_WIDTH-1:0] DATA_OUT
);

    logic [OUT_WIDTH-1:0] result1;  // Промежуточный результат умножения (16 бит)
    logic [OUT_WIDTH-1:0] result2;   // Промежуточный результат сложения (16 бит)

    always_ff @(posedge clk) begin
        result1 <= A * B;             
        result2 <= result1 + C;   
        DATA_OUT <= result2;
    end
    
endmodule