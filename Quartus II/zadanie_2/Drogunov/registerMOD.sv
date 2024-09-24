`include "includeMOD.inc"
module registerMOD (A,B,C,clk,DATA_OUT);
input reg [INPUT_WIDTH-1:0]A;
input reg [INPUT_WIDTH-1:0]B;
input reg [INPUT_WIDTH-1:0]C;
input logic clk;
output reg [INPUT_WIDTH-1:0]DATA_OUT;
always_ff @(posedge clk)   
begin 
DATA_OUT<=A*B+C;
end
endmodule 