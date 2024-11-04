`include "package_settings_v_5.sv"

module v5_filter (
    input  wire clk,
    input  wire reset,
    input  wire signed [SIZE_FILTER_DATA-1:0] input_data,
    output wire signed [SIZE_FILTER_DATA-1:0] output_data);
    
    logic signed [SIZE_FILTER_DATA-1:0] y_v_5 [k_v_5+l_v_5:0];
    logic signed [SIZE_FILTER_DATA-1:0] d_v_5;
    logic signed [SIZE_FILTER_DATA:0] d1_v_5;
    logic signed [SIZE_FILTER_DATA-1:0] p_v_5;
    logic signed [SIZE_FILTER_DATA+1:0] r_v_5;
    logic signed [SIZE_FILTER_DATA+3:0] s_v_5;
    logic signed [SIZE_FILTER_DATA-1:0] ZaDErzhKa;
    
        always_ff @(posedge clk) begin

    	if (reset) begin
			ZaDErzhKa<=input_data;	
		end else begin
			ZaDErzhKa<=0;
		end
    end

    always_ff @(posedge clk) begin

    	if (reset) begin
			y_v_5[0]<=ZaDErzhKa;
			for (int i = k_v_5+l_v_5; i>=1;i--) begin
				y_v_5[i]<=y_v_5[i-1];
			end		
		end else begin
			for (int i = 0; i<=k_v_5+l_v_5;i++) begin
				y_v_5[i]<=0;
			end	
		end
    end
    
    
    always_ff @(posedge clk) begin
		if (reset) begin
			d1_v_5<=d_v_5*M_v_5;
		end else begin
			d1_v_5<=0;
		end
    end
    
    
    always_ff @(posedge clk) begin 
		if (reset) begin
			d_v_5<=y_v_5[0]-y_v_5[k_v_5]-y_v_5[l_v_5]+y_v_5[k_v_5+l_v_5];
			p_v_5<=p_v_5+d_v_5;
			r_v_5<=p_v_5+d1_v_5;
			s_v_5<=s_v_5+r_v_5;
			output_data<=s_v_5[19:4];
		end else begin
			d_v_5<=0;
			p_v_5<=0;
			r_v_5<=0;
			s_v_5<=0;
			output_data<=0;
		end
		end
		endmodule
