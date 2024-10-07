`include "params.inc"

module register (A,B,C,clk,DATA_OUT);
    input logic [WIDTH-1:0] A;    // ������� ������ A
    input logic [WIDTH-1:0] B;    // ������� ������ B
    input logic [WIDTH-1:0] C;    // ������� ������ C
    input logic clk;        // ������ �������� ������� 200 ���
    output logic [OUT_WIDTH-1:0] DATA_OUT; // �������� ������
	reg [OUT_WIDTH-1:0] t1;
	logic [WIDTH-1:0] C_0;
	logic [OUT_WIDTH-1:0] t2;
	
	always_ff @(posedge clk) begin
        C_0 <= C;
    end
    
    always_ff @(posedge clk) begin
        t1 <= A * B;
        t2 <= t1+C_0;
        DATA_OUT <= t2;
    end
    
endmodule


