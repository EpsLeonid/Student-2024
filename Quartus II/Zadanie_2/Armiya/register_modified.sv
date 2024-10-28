`include "params.sv"

module register_modified (
    input logic clk,                                       // �������� ������
    input logic [params::DATA_WIDTH-1:0] A,               // ������� ������ A
    input logic [params::DATA_WIDTH-1:0] B,               // ������� ������ B
    input logic [params::DATA_WIDTH-1:0] C,               // ������� ������ C
    output logic [params::DATA_OUT_WIDTH-1:0] DATA_OUT    // �������� ������
);
    reg [params::DATA_WIDTH-1:0] C_buffer;
    reg [params::DATA_OUT_WIDTH-1:0] Mult_reg; // ������� ��� ���������� A * B
    reg [params::DATA_WIDTH-1:0] C_reg;        // ������� ��� C

    always_ff @(posedge clk) begin
        C_buffer <= C; 
        Mult_reg <= A * B;       // ��������� A �� B
        C_reg <= C_buffer;             
        DATA_OUT <= Mult_reg + C_reg; // ���������� ��������� ����������
    end

endmodule
