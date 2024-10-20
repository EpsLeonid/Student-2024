module mult (
    input logic [7:0] A,
    input logic [7:0] B,
    output logic [15:0] C
);
    always_comb begin
        C <= A * B;
    end
endmodule