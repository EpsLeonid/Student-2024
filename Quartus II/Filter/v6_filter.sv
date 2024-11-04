`include "package_settings_v_6.sv"

module v6_filter(
    input  wire clk,
    input  wire reset,
    input  wire signed [SIZE_FILTER_DATA-1:0] input_data,
    output wire signed [SIZE_FILTER_DATA-1:0] output_data);
    
    
    logic signed [SIZE_FILTER_DATA-1:0] v_v_6 [k_v_6:0];     
    logic signed [SIZE_FILTER_DATA-1:0] d_k_v_6;         
    logic signed [SIZE_FILTER_DATA-1:0] d_1_v_6;          
    logic signed [SIZE_FILTER_DATA-1:0] p_v_6;         
    logic signed [SIZE_FILTER_DATA:0] q_v_6;           
    logic signed [SIZE_FILTER_DATA+6:0] s_v_6; 
    
    logic signed [SIZE_FILTER_DATA-1:0] v_delay_v_6;
    logic signed [SIZE_FILTER_DATA-1:0] d_1_delay_v_6 [l_v_6:0];
    logic signed [SIZE_FILTER_DATA-1:0] d_k_delay_v_6;
    logic signed [SIZE_FILTER_DATA+4:0] p_delay_v_6;

	
	always_ff @(posedge clk) begin
		v_v_6[0]<=input_data;
		
		if(!reset) begin
			for (int i = k_v_6; i >= 1; i--) begin
				v_v_6[i] <= 0;
		end
	end
		
		else
			for (int i = k_v_6; i >= 1; i--) begin
				v_v_6[i] <= v_v_6[i-1];
		end	
    end
	
	always_ff @(posedge clk) begin
		if(!reset) begin
				v_delay_v_6 <= 0;
				d_k_delay_v_6 <= 0;
				p_delay_v_6 <= 0;
			end
		else
				v_delay_v_6 <= v_v_6[0];
				d_k_delay_v_6 <= d_k_v_6;
				p_delay_v_6 <= m1_v_6 * p_v_6;
		end
	
	always_ff @(posedge clk) begin
    
    if(!reset) begin
			d_1_delay_v_6[0]<=d_1_v_6*k_v_6;
			for (int i = l_v_6; i >= 1; i--) begin
				d_1_delay_v_6[i] <= 0;
			end
		end
		else
			d_1_delay_v_6[0]<=d_1_v_6*k_v_6;
			for (int i = l_v_6; i >= 1; i--) begin
				d_1_delay_v_6[i] <= d_1_delay_v_6[i-1];
		end
    end
	
    always_ff @(posedge clk ) begin
        if (!reset) begin
 
            d_k_v_6 <= 0;
            d_1_v_6 <= 0;
            p_v_6 <= 0;
            q_v_6 <= 0;
            s_v_6 <= 0;
            output_data <= 0;
            
        end else begin
            
            d_k_v_6 <= v_v_6[0] - v_v_6[k_v_6];
            
            d_1_v_6 <= v_v_6[0] - v_delay_v_6;
            
            p_v_6 <= p_v_6 + d_k_delay_v_6 - d_1_delay_v_6[l_v_6];
            
            q_v_6 <= q_v_6 + m2_v_6* p_v_6; 
            
            s_v_6 <= s_v_6 + q_v_6 + p_delay_v_6;
            
            output_data <= s_v_6[22:7];   
            
        end
    end

endmodule