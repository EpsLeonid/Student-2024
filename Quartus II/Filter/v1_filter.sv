`include "package_settings_v_1.sv"

module v1_filter 
(
    input  wire clk,
    input  wire reset,
    input  wire signed [SIZE_FILTER_DATA-1:0] input_data,
    output wire signed [SIZE_FILTER_DATA-1:0] output_data
);

  
    logic signed [SIZE_FILTER_DATA-1:0] v_v_1 [k_v_1 + l_v_1:0];
    logic signed [SIZE_FILTER_DATA-1:0] d_kl_v_1;
    logic signed [SIZE_FILTER_DATA:0]   d_v_1;
    logic signed [SIZE_FILTER_DATA-1:0] p_v_1;
    logic signed [SIZE_FILTER_DATA+1:0] r_v_1;
    logic signed [SIZE_FILTER_DATA+3:0] s_v_1;
    logic signed [SIZE_FILTER_DATA-1:0] zaderjanie;

        always_ff @(posedge clk) begin

    	if (reset) begin
			zaderjanie<=input_data;	
		end else begin
            zaderjanie<=0;
		end
    end

    
    always_ff @(posedge clk) 
    begin
        if (!reset)
        begin
            v_v_1[0] <= 0;
            for (int i = k_v_1 + l_v_1; i >= 1; i--) 
            begin
                v_v_1[i] <= 0;
            end
        end 
        else
        begin
            v_v_1[0] <= zaderjanie;
            for (int i = k_v_1 + l_v_1; i >= 1; i--) 
            begin
                v_v_1[i] <= v_v_1[i-1];
            end
        end
    end


    always_ff @(posedge clk) 
    begin
        if (!reset)
            d_v_1 <= 0;
        else
            d_v_1 <= d_kl_v_1 * M_v_1;
    end

    
    always_ff @(posedge clk) 
    begin
        if (!reset) begin
            d_kl_v_1 <= 0;
            p_v_1 <= 0;
            r_v_1 <= 0;
            s_v_1 <= 0;
            output_data <= 0;
        end
        else
        begin
            d_kl_v_1 <= v_v_1[0] - v_v_1[k_v_1] - v_v_1[l_v_1] + v_v_1[k_v_1 + l_v_1];
            p_v_1 <= p_v_1 + d_kl_v_1;
            r_v_1 <= p_v_1 + d_v_1;
            s_v_1 <= s_v_1 + r_v_1;
            output_data <= s_v_1[19:4]; 
        end
    end

endmodule