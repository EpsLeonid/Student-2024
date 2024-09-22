module register (A,B,C,clk,DATA_OUT);
input reg [7:0]A;
input reg [7:0]B;
input reg [7:0]C;
input logic clk;
output reg [7:0]DATA_OUT;
always_ff @(posedge clk)   
begin 
DATA_OUT<=A*B+C;
end
endmodule 