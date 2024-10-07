`include "params.inc"

module register (A,B,C,clk,DATA_OUT);
    input logic [WIDTH-1:0] A;    // входной сигнал A
    input logic [WIDTH-1:0] B;    // входной сигнал B
    input logic [WIDTH-1:0] C;    // входной сигнал C
    input logic clk;        // сигнал тактовой частоты 200 ћ√ц
    output logic [OUT_WIDTH-1:0] DATA_OUT; // выходной сигнал
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


