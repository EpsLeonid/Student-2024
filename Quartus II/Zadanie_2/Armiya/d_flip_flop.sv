module D_flip_flop (
    input logic d,    // ���� D
    input logic clk,  // �������� ������
    output logic out  // ����� Q
);

    always_ff @(posedge clk) begin
        out <= d;  // ���������� �������� D ������ Q
    end

endmodule
