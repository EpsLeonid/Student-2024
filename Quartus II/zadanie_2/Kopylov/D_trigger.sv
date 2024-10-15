module D_trigger (
    input logic d,   
    input logic clk,    
    output logic out    
);

    always_ff @(posedge clk) begin 
        out <= d;  
    end

endmodule