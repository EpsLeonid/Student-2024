module multiplier(
    input logic [7:0] A,  // Входной сигнал A (8 бит)
    input logic [7:0] B,  // Входной сигнал B (8 бит)
    output logic [15:0] C // Выходной сигнал C (16 бит, результат умножения)
);

    // Процедурный блок для умножения
    always_comb begin
        C = A * B;  // Умножение A на B
    end

endmodule
