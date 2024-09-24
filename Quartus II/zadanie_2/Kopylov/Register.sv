module Register_1 (
    input logic [7:0] A,       
    input logic [7:0] B,       
    input logic [7:0] C,       
    input logic clk,           
    output logic [7:0] DATA_OUT
);

    logic [15:0] result1; 
    logic [15:0] result2;   

    always_ff @(posedge clk) begin
        result1 <= A * B;             
        result2 <= result1 + C;   
        DATA_OUT <= result2[7:0];
    end
    
endmodule