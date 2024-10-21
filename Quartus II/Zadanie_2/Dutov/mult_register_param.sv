`include "parameter.sv"

module mult_register_param (
    input logic clk,
    input logic [WIDTH-1:0] A,
    input logic [WIDTH-1:0] B,
    input logic [WIDTH-1:0] C,
    output logic [OUT_WIDTH-1:0] C_reg,  		
    output logic [OUT_WIDTH-1:0] C_delayed,            
    output logic [OUT_WIDTH-1:0] AxB_result,      
    output logic [OUT_WIDTH-1:0] DATA_OUT
);

     always_ff @(posedge clk) begin
    
        C_reg <= C;
            
        AxB_result <= A * B; 

        C_delayed <= C_reg;
        
        end
        
     always_ff @(posedge clk) begin 
      
        if (C_delayed) begin
         
        DATA_OUT <= AxB_result + C_delayed;
        
        end
        
        else begin
    
        DATA_OUT <= 16'bz;
        
        end    
   end   
endmodule