`include "include1.inc"
    
module Register (
    input logic clk,
    input logic reset_n,       
    input logic [WIDTH-1:0] A,       
    input logic [WIDTH-1:0] B,       
    input logic [WIDTH-1:0] C,
    output logic [OUT_WIDTH-1:0] mult_result,
    output logic [WIDTH-1:0] C_d_1,
    output logic [WIDTH-1:0] C_d_2, 
    output logic [OUT_WIDTH-1:0] result 
);

    always_ff @(posedge clk) begin
        if (!reset_n) begin
        
			C_d_1 <= 8'd0;
			C_d_2 <= 8'd0;
            mult_result <= 16'd0;
            result <= 16'd0;
          
        end else begin
        
            mult_result <= A * B;
            C_d_1 <= C;
            C_d_2 <= C_d_1;
            result <= mult_result + {8'd0, C_d_2};
        end
    end

endmodule

