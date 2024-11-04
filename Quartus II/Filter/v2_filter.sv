`include "package_settings_v_2.sv"

module v2_filter 
(
    input  wire clk,
    input  wire reset,
    input  wire signed [SIZE_FILTER_DATA-1:0] input_data,
    output wire signed [SIZE_FILTER_DATA-1:0] output_data
);
	logic signed [SIZE_FILTER_DATA-1:0] v_v_2 [k_v_2+l_v_2:0];
	logic signed [SIZE_FILTER_DATA-1:0] eto_zaderjka;
	logic signed [SIZE_FILTER_DATA-1:0] d_kl_v_2;
	logic signed [SIZE_FILTER_DATA:0]   d_v_2;
	logic signed [SIZE_FILTER_DATA-1:0] p_v_2;
	logic signed [SIZE_FILTER_DATA+1:0] r_v_2;
	logic signed [SIZE_FILTER_DATA+3:0] s_v_2;

		always_ff @(posedge clk) 
			begin
			eto_zaderjka<=input_data;
			end
		always_ff @(posedge clk) 
			begin
		if (!reset)
			begin
				v_v_2[0] <= 0;
			for (int i = k_v_2+l_v_2; i>=1; i--) 
			begin
				v_v_2[i] <= 0;
			end
			end 
			else
					v_v_2[0]<=eto_zaderjka;
				for (int i = k_v_2+l_v_2; i>=1; i--) 
				begin
					v_v_2[i] <= v_v_2[i-1];
				end
			end
		
		always_ff @(posedge clk) 
			begin
				if (!reset)
				begin
				d_v_2 <= 0;
			end
			else
				d_v_2 <= d_kl_v_2 * M_v_2;
			end
		
   
		always_ff @(posedge clk) 
			begin
			if (!reset)
			begin
			d_kl_v_2 <= 0;
			p_v_2 <= 0;
			r_v_2 <= 0;
			s_v_2 <= 0;
			output_data <= 0;
			end
			else
				d_kl_v_2 <= v_v_2[0]-v_v_2[k_v_2]-v_v_2[l_v_2]+v_v_2[k_v_2+l_v_2];
				p_v_2 <= p_v_2+d_kl_v_2;
				r_v_2 <= p_v_2+d_v_2;
				s_v_2 <= s_v_2+r_v_2;
				output_data <= s_v_2[19:4];
			end
		endmodule