module register_8bit (
    input logic clk,             // Тактовый сигнал
    input logic [7:0] A,         // Входной сигнал A
    input logic [7:0] B,         // Входной сигнал B
    input logic [7:0] C,         // Входной сигнал C
    output logic [7:0] DATA_OUT // Выходной сигнал
);

    reg [7:0] Mult_reg;          // Регистр для хранения результата умножения
    reg [7:0] C_reg;             // Регистр для C

    always_ff @(posedge clk) begin
        Mult_reg <= A * B;       // Умножение A на B
        C_reg <= C;              // Сохранение C
        DATA_OUT <= Mult_reg + C_reg; // Результат сложения
    end

endmodule
