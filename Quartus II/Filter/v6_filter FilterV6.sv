module v6_filter FilterV6(parameter N = 16)
(
    input  logic        clk,      
    input  logic        reset,    
    input  logic signed [N-1:0] input_data,
    output logic signed [N-1:0] output_data
);

	logic signed  l = 6;   
    logic signed  k = 13;   
    logic signed  m1 = 16;  
    logic signed  m2 = 1;  
    // Регистры для хранения промежуточных значений
    logic signed [N-1:0] v [0:N-1];    
    logic signed [N-1:0] d_k;         
    logic signed [N-1:0] d_1;          
    logic signed [N-1:0] p;           
    logic signed [N-1:0] q;           
    logic signed [N-1:0] s;          
    // Счетчик для отслеживания индекса
    logic [3:0] n; //bit = log2N

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            n <= 0;
            d_k <= 0;
            d_1 <= 0;
            p <= 0;
            q <= 0;
            s <= 0;
            output_data <= 0;
        end else begin
            
            v[n] <= input_data;

            
            if (n > k)
                d_k <= v[n] - v[n - k];
            else
                d_k <= v[n];

            
            if (n > 1)
                d_1 <= v[n] - v[n - 1];
            else
                d_1 <= v[n];

            
            if (n > l)
                p <= p + d_k - k * d_1;
            else
                p <= p + d_k;

            
            q <= q + m2 * p;

           
            s <= s + q + m1 * p;

            
            output_data <= s;

            
            n <= n + 1;
        end
    end

endmodule