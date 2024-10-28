`include "params.sv"

module register_modified (
    input logic clk,                                       // Тактовый сигнал
    input logic [params::DATA_WIDTH-1:0] A,               // Входной сигнал A
    input logic [params::DATA_WIDTH-1:0] B,               // Входной сигнал B
    input logic [params::DATA_WIDTH-1:0] C,               // Входной сигнал C
    output logic [params::DATA_OUT_WIDTH-1:0] DATA_OUT    // Выходной сигнал
);
    reg [params::DATA_WIDTH-1:0] C_buffer;
    reg [params::DATA_OUT_WIDTH-1:0] Mult_reg; // Регистр для результата A * B
    reg [params::DATA_WIDTH-1:0] C_reg;        // Регистр для C

    always_ff @(posedge clk) begin
        C_buffer <= C; 
        Mult_reg <= A * B;       // Умножение A на B
        C_reg <= C_buffer;             
        DATA_OUT <= Mult_reg + C_reg; // Вычисление итогового результата
    end

endmodule
