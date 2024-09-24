`include "params.inc"

module register (A,B,C,clk,DATA_OUT);
    input logic [WIDTH-1:0] A;    // входной сигнал A
    input logic [WIDTH-1:0] B;    // входной сигнал B
    input logic [WIDTH-1:0] C;    // входной сигнал C
    input logic clk;        // сигнал тактовой частоты 200 ћ√ц
    output logic [OUT_WIDTH-1:0] DATA_OUT; // выходной сигнал

    always_ff @(posedge clk) begin
        DATA_OUT <= A * B + C;
    end
endmodule


