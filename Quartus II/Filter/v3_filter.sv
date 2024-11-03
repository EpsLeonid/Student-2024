`include "package_settings_v_3.sv"

module v3_filter(
    input wire clk,
    input wire reset,    
    input wire signed [SIZE_FILTER_DATA-1:0] input_data,
    output wire signed [SIZE_FILTER_DATA-1:0] output_data,         
    output logic signed [SIZE_FILTER_DATA-1:0] d_k_3,         
    output logic signed [SIZE_FILTER_DATA-1:0] d_1_3,              
    output logic signed [SIZE_FILTER_DATA-1:0] p_v_3,           
    output logic signed [SIZE_FILTER_DATA-1:0] q_v_3,               
    output logic signed [SIZE_FILTER_DATA-1:0] s_v_3,  
    output logic signed [SIZE_FILTER_DATA-1:0] v [0:SIZE_FILTER_DATA-1]
);
    logic signed [SIZE_FILTER_DATA-1:0] n_v_3 [k_v_3+l_v_3:0];
    logic [31:0] i; 

    always_ff @(posedge clk) begin 
        if (reset) begin 
            n_v_3[0] <= input_data;
            for (i = k_v_3 + l_v_3; i >= 1; i--) begin
                n_v_3[i] <= n_v_3[i-1];   
            end  
        end else begin 
            for (i = 0; i <= k_v_3 + l_v_3; i++) begin
                n_v_3[i] <= 0;   
            end 
        end    
    end

    always_ff @(posedge clk) begin                        
        if (i > k_v_3)                
            d_k_3 <= n_v_3[i] - n_v_3[i - k_v_3];
        else                
            d_k_3 <= n_v_3[i];
            
        if (i >= 1)                
            d_1_3 <= n_v_3[i] - n_v_3[i - 1];
        else                
            d_1_3 <= n_v_3[i-1];

        if (i > l_v_3)
            p_v_3 <= p_v_3[i-1] + d_k_3 - k_v_3 * d_1_3[i-l_v_3];
        else
            p_v_3 <= p_v_3[i-1] + d_k_3;

        if (i >= 1)
            q_v_3 <= q_v_3[i-1] + m2_v_3 * p_v_3;
        else
            q_v_3 <= m2_v_3 * p_v_3;

        if (i >= 1)
            s_v_3 <= s_v_3[i] + q_v_3 + m1_v_3 * p_v_3;
        else
            s_v_3 <= q_v_3[i] + m1_v_3 * p_v_3;

        output_data <= s_v_3;   
    end
endmodule