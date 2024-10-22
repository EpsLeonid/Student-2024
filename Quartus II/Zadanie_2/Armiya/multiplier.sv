module multiplier(
    input logic [7:0] A,  // ������� ������ A (8 ���)
    input logic [7:0] B,  // ������� ������ B (8 ���)
    output logic [15:0] C // �������� ������ C (16 ���, ��������� ���������)
);

    // ����������� ���� ��� ���������
    always_comb begin
        C = A * B;  // ��������� A �� B
    end

endmodule
