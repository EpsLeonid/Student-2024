`include "package_settings_v_6.sv"

module v6_filter(
    input  wire clk,
    input  wire reset,
    input  wire signed [SIZE_FILTER_DATA-1:0] input_data,
    output wire signed [SIZE_FILTER_DATA-1:0] output_data,
    output logic signed [SIZE_FILTER_DATA-1:0] v [0:SIZE_FILTER_DATA-1],     
    output logic signed [SIZE_FILTER_DATA-1:0] d_k,         
    output logic signed [SIZE_FILTER_DATA-1:0] d_1,          
    output logic signed [SIZE_FILTER_DATA-1:0] p,           
    output logic signed [SIZE_FILTER_DATA-1:0] q,           
    output logic signed [SIZE_FILTER_DATA-1:0] s          
);

	//logic signed [SIZE_FILTER_DATA-1:0] v [0:SIZE_FILTER_DATA-1];

    logic [32:0] n; //bit = log2N

    always_ff @(posedge clk ) begin
        if (!reset) begin
            n <= 0;
            d_k <= 0;
            d_1 <= 0;
            p <= 0;
            q <= 0;
            s <= 0;
            output_data <= 0;
        end else begin
            
            v[n] <= input_data;

            
            if (n > k_v_6)
                d_k <= v[n] - v[n - k_v_6];
            else
                d_k <= v[n];

            
            if (n > 1)
                d_1 <= v[n] - v[n - 1];
            else
                d_1 <= v[n];

            
            if (n > l_v_6)
                p <= p[n - 1] + d_k - k_v_6 * d_1[n - l_v_6];
            else
                p <= p[n - 1] + d_k;

            if (n > 1)
				q <= q[n - 1] + m2_v_6 * p;
			else
				p <= m2_v_6 * p;
			
			if (n > 1)  
				s <= s[n - 1] + q + m1_v_6 * p;
			else
				s <= q + m1_v_6 * p;
            
            output_data <= s;
			
            n <= n + 1;
        end
    end

endmodule