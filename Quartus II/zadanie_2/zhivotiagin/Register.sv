`include "params.inc"

module register (A,B,C,clk,DATA_OUT);
    input logic [WIDTH-1:0] A;    // ������� ������ A
    input logic [WIDTH-1:0] B;    // ������� ������ B
    input logic [WIDTH-1:0] C;    // ������� ������ C
    input logic clk;        // ������ �������� ������� 200 ���
    output logic [OUT_WIDTH-1:0] DATA_OUT; // �������� ������

    always_ff @(posedge clk) begin
        DATA_OUT <= A * B + C;
    end
endmodule


