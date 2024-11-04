`include "package_settings_v_3.sv"

module v3_filter(
    input wire clk,
    input wire reset,    
    input wire signed [SIZE_FILTER_DATA-1:0] input_data,
    output wire signed [SIZE_FILTER_DATA-1:0] output_data
             );
    logic signed [SIZE_FILTER_DATA-1:0] d_k_3;         
    logic signed [SIZE_FILTER_DATA-1:0] d_l_3;              
    logic signed [SIZE_FILTER_DATA-1:0] p_v_3;           
    logic signed [SIZE_FILTER_DATA:0] q_v_3;               
    logic signed [SIZE_FILTER_DATA+6:0] s_v_3;  
    logic signed [SIZE_FILTER_DATA-1:0] n_delay_v_3;
    logic signed [SIZE_FILTER_DATA-1:0] d_l_delay_3 [l_v_3:0];
    logic signed [SIZE_FILTER_DATA-1:0] d_k_delay_3;
    logic signed [SIZE_FILTER_DATA+4:0] p_delay_v_3;
    logic signed [SIZE_FILTER_DATA-1:0] n_v_3 [k_v_3:0];
 
    
    always_ff @(posedge clk) begin 
        if (reset) begin 
            n_v_3[0] <= input_data;
            for (int i = k_v_3; i >= 1; i--) begin
                n_v_3[i] <= n_v_3[i-1];   
            end  
        end else begin 
            for (int i = 0; i <= k_v_3; i++) begin
                n_v_3[i] <= 0;   
            end 
        end    
    end
    
	always_ff @(posedge clk) begin
		if(!reset) begin
				n_delay_v_3 <= 0;
				d_k_delay_3 <= 0;
				p_delay_v_3 <= 0;
			end
		else begin
				n_delay_v_3 <= n_v_3[0];
				d_k_delay_3 <= d_k_3;
				p_delay_v_3 <= m1_v_3 * p_v_3;
		end
		end
	
  always_ff @(posedge clk ) begin
	if (reset) begin
			d_l_delay_3[0]<=d_l_3*k_v_3;
			for (int i = l_v_3; i >= 1; i--) begin
				d_l_delay_3[i] <= d_l_delay_3[i-1];
			end
		end
		else begin
			d_l_delay_3[0]<=d_l_3*k_v_3;
			for (int i = l_v_3; i >= 1; i--) begin
				d_l_delay_3[i] <= 0;
		end
    end
	end
  always_ff @(posedge clk ) begin
        if (reset) begin
			d_k_3 <= n_v_3[0] - n_v_3[k_v_3];
            
            d_l_3 <= n_v_3[0] - n_delay_v_3;
            
            p_v_3 <= p_v_3 + d_k_delay_3 - d_l_delay_3[l_v_3];
            
            q_v_3 <= q_v_3 + m2_v_3* p_v_3; 
            
            s_v_3 <= s_v_3 + q_v_3 + p_delay_v_3;
            
            output_data <= s_v_3[22:7];  
             
        end
               
      else begin  
			d_l_3 <=0; 		
			d_k_3 <=0;			
			p_v_3 <=0;
			q_v_3 <=0;
			s_v_3 <=0;
			output_data <=0;
    end
   end
  endmodule

