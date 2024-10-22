module D_flip_flop (
    input logic d,    // Вход D
    input logic clk,  // Тактовый сигнал
    output logic out  // Выход Q
);

    always_ff @(posedge clk) begin
        out <= d;  // Присвоение значения D выходу Q
    end

endmodule
