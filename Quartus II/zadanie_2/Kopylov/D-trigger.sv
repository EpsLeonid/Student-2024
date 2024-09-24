module D_trigger (
    input logic d,   
    input logic clk,    
    output logic out    
);

    always_ff @(posedge clk) begin //нарастающий фронт тактового сигнала 
        out <= d;  // Запоминаем значение D на фронте тактового сигнала
    end

endmodule