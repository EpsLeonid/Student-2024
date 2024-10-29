`include "package_settings_v_4.sv"

module v4_filter (
    input  wire clk,
    input  wire reset,
    input  wire [SIZE_FILTER_DATA-1:0] input_data,
    output wire [SIZE_FILTER_DATA-1:0] output_data
);

	// Объявляем переменные
	logic signed [SIZE_FILTER_DATA-1:0] d_v_4;
	logic signed [SIZE_FILTER_DATA-1:0] p_v_4;
	logic signed [SIZE_FILTER_DATA-1:0] r_v_4;
	logic signed [SIZE_FILTER_DATA-1:0] s_v_4;
	logic signed [SIZE_FILTER_DATA-1:0] Mult_reg;

	// Дополнительные регистры для задержанных значений
	logic [SIZE_FILTER_DATA-1:0] input_data_delay[0:k_v_4+l_v_4-1];

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
			// Обновляем дополнительные регистры
			for (int i = (k_v_4+l_v_4-1); i > 0; i--) begin
				input_data_delay[i] <= input_data_delay[i-1];
			end
			input_data_delay[0] <= input_data;

			// Вычисление d
			d_v_4 <= input_data_delay[0] - input_data_delay[k_v_4-1] - input_data_delay[l_v_4-1] + input_data_delay[k_v_4 + l_v_4 -1];

			// Вычисление p
			p_v_4 <= p_v_4 + d_v_4;

			// Вычисление r
			Mult_reg <=  M_v_4 * d_v_4;
			r_v_4 <= p_v_4 + Mult_reg;

			// Вычисление s
			s_v_4 <= s_v_4 + r_v_4;

			// Обновление переменных
			output_data <= s_v_4;
		end
	end
endmodule