`include "params.inc"

module register (A,B,C,clk,DATA_OUT);
    input logic [WIDTH-1:0] A;    // входной сигнал A
    input logic [WIDTH-1:0] B;    // входной сигнал B
    input logic [WIDTH-1:0] C;    // входной сигнал C
    input logic clk;        // сигнал тактовой частоты 200 ћ√ц
    output logic [OUT_WIDTH-1:0] DATA_OUT; // выходной сигнал
	reg [OUT_WIDTH-1:0] t1;
	logic [WIDTH-1:0] C_0;
	logic [WIDTH-1:0] C_1;
	
	always_ff @(posedge clk) begin
        C_0 <= C;
        C_1 <=C_0;
    end
    
    always_ff @(posedge clk) begin
        t1 <= A * B;
        DATA_OUT <= t1+C_1;
    end
    
endmodule


