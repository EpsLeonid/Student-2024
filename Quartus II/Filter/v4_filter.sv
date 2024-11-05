`include "package_settings_v_4.sv"

module v4_filter (
    input wire clk,
    input wire reset,
    input wire signed [SIZE_FILTER_DATA-1:0] input_data,
    output wire signed [SIZE_FILTER_DATA-1:0] output_data
);

logic signed [SIZE_FILTER_DATA-1:0] input_data_delay [k_v_4+l_v_4:0];
logic signed [SIZE_FILTER_DATA:0] d_v_4;
logic signed [SIZE_FILTER_DATA+2:0] d1_v_4;
logic signed [SIZE_FILTER_DATA-1:0] p_v_4;
logic signed [SIZE_FILTER_DATA+1:0] r_v_4;
logic signed [SIZE_FILTER_DATA+4:0] s_v_4;
logic signed [SIZE_FILTER_DATA-1:0] Delay_v_4;

always_ff @(posedge clk) begin
    if (reset) begin
        Delay_v_4 <= input_data;
        input_data_delay[0] <= Delay_v_4;
        for (int i = k_v_4 + l_v_4; i >= 1; i--) begin
            input_data_delay[i] <= input_data_delay[i - 1];
        end
        d1_v_4 <= d_v_4 * M_v_4;
        d_v_4 <= input_data_delay[0] - input_data_delay[k_v_4] - input_data_delay[l_v_4] + input_data_delay[k_v_4 + l_v_4];
        p_v_4 <= p_v_4 + d_v_4;
        r_v_4 <= p_v_4 + d1_v_4;
        s_v_4 <= s_v_4 + r_v_4;
        output_data <= s_v_4[19:4];
    end else begin
        Delay_v_4 <= 0;
        for (int i = 0; i <= k_v_4 + l_v_4; i++) begin
            input_data_delay[i] <= 0;
        end
        d_v_4 <= 0;
        d1_v_4 <= 0;
        p_v_4 <= 0;
        r_v_4 <= 0;
        s_v_4 <= 0;
        output_data <= 0;
    end
end

endmodule