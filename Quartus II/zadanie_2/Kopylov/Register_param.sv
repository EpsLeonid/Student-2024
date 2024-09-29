`include "include1.inc"
    
    module Register_2 (
    input logic [WIDTH-1:0] A,       
    input logic [WIDTH-1:0] B,       
    input logic [WIDTH-1:0] C,      
    input logic clk,   
    output logic [OUT_WIDTH-1:0] result1,
    output logic [OUT_WIDTH-1:0] result2,  
    output logic [WIDTH-1:0] C_delayed,     
    output logic [OUT_WIDTH-1:0] DATA_OUT
);


	always_ff @(posedge clk) begin
			C_delayed <= C;               
		end

    always_ff @(posedge clk) begin
        result1 <= A * B;             
        result2 <= result1 + C_delayed;   
        DATA_OUT <= result2;
    end
    
endmodule