`include "package_settings_v_4.sv"

module v4_filter (
    input  wire clk,
    input  wire reset,
    input  wire [SIZE_FILTER_DATA-1:0] input_data,
    output wire [SIZE_FILTER_DATA-1:0] output_data
);

	// Îáúÿâëÿåì ïåðåìåííûå
	reg signed [SIZE_FILTER_DATA-1:0] d_v_4;
	reg signed [SIZE_FILTER_DATA-1:0] p_v_4;
	reg signed [SIZE_FILTER_DATA-1:0] r_v_4;
	reg signed [SIZE_FILTER_DATA-1:0] s_v_4;
	reg signed [SIZE_FILTER_DATA+3:0] Mult_reg;

	// Äîïîëíèòåëüíûå ðåãèñòðû äëÿ çàäåðæàííûõ çíà÷åíèé
	reg signed [SIZE_FILTER_DATA-1:0] input_data_delay[0:k_v_4+l_v_4-1];

	always_ff @(posedge clk or negedge reset) begin
		if (!reset) begin
			d_v_4         <= '0;
			p_v_4         <= '0;
			r_v_4         <= '0;
			s_v_4         <= '0;
			Mult_reg      <= '0;
			output_data   <= '0;
			for (int i = 0; i < (k_v_4+l_v_4); i++) begin
				input_data_delay[i] <= '0;
			end
		end else begin
			// Îáíîâëÿåì äîïîëíèòåëüíûå ðåãèñòðû
			for (int i = (k_v_4+l_v_4-1); i > 0; i--) begin
				input_data_delay[i] <= input_data_delay[i-1];
			end
			input_data_delay[0] <= input_data;

			// Âû÷èñëåíèå d
			d_v_4 <= input_data_delay[0] - input_data_delay[k_v_4-1] - input_data_delay[l_v_4-1] + input_data_delay[k_v_4 + l_v_4 -1];

			// Âû÷èñëåíèå p
			p_v_4 <= p_v_4 + d_v_4;

			// Âû÷èñëåíèå r
			Mult_reg <=  M_v_4 * d_v_4;
			r_v_4 <= p_v_4 + Mult_reg;

			// Âû÷èñëåíèå s
			s_v_4 <= s_v_4 + r_v_4;

			// Îáíîâëåíèå ïåðåìåííûõ
			output_data <= s_v_4;
		end
	end
endmodule
