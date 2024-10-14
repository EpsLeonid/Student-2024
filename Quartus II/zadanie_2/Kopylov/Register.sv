`include "include1.inc"
    
module Register (
    input logic clk,
    input logic reset_n,       
    input logic [WIDTH-1:0] A,       
    input logic [WIDTH-1:0] B,       
    input logic [WIDTH-1:0] C,
    output logic [OUT_WIDTH-1:0] mult_result,
    output logic [OUT_WIDTH-1:0] mult_result_d,
    output logic [WIDTH-1:0] C_d_1,
    output logic [WIDTH-1:0] C_d_2, 
    output logic [OUT_WIDTH-1:0] sum_result,
    output logic [OUT_WIDTH-1:0] sum_result_d,
    output logic [OUT_WIDTH-1:0] result 
);

    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
			C_d_1 <= 8'd0;
			C_d_2 <= 8'd0;
            mult_result <= 16'd0;
            mult_result_d <= 16'd0;
            sum_result <= 16'd0;
            sum_result_d <= 16'd0;
            result <= 16'd0;
        end else begin
        
            mult_result <= A * B;
            
            mult_result_d <= mult_result;
            
            C_d_1 <= C;
            C_d_2 <= C_d_1;
           
            sum_result <= mult_result_d + {8'd0, C_d_2};
            sum_result_d <= sum_result;
			
            result <= sum_result_d;
        end
    end

endmodule

