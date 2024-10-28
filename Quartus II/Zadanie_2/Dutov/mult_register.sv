module mult_register (
    input logic clk,
    input logic [7:0] A,
    input logic [7:0] B,
    input logic [7:0] C,
    output logic [7:0] C_reg,  		
    output logic [7:0] C_delayed,            
    output logic [15:0] AxB_result,
    output logic [15:0] DATA_OUT
);

     always_ff @(posedge clk) begin
    
        C_reg <= C;            
        AxB_result <= A * B; 
        C_delayed <= C_reg;
        DATA_OUT <= AxB_result + C_delayed;
                
        end

      
endmodule
