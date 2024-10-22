module register_8bit (
    input logic clk,             // �������� ������
    input logic [7:0] A,         // ������� ������ A
    input logic [7:0] B,         // ������� ������ B
    input logic [7:0] C,         // ������� ������ C
    output logic [7:0] DATA_OUT // �������� ������
);

    reg [7:0] Mult_reg;          // ������� ��� �������� ���������� ���������
    reg [7:0] C_reg;             // ������� ��� C

    always_ff @(posedge clk) begin
        Mult_reg <= A * B;       // ��������� A �� B
        C_reg <= C;              // ���������� C
        DATA_OUT <= Mult_reg + C_reg; // ��������� ��������
    end

endmodule
