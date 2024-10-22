`include "includeMOD.inc"
module registerMOD (clk,reset,A,B,C,R,Cdelay,Cdelay2,DATA_OUT);
input logic [INPUT_WIDTH-1:0]A;
input logic [INPUT_WIDTH-1:0]B;
input logic [INPUT_WIDTH-1:0]C;
input logic clk;
input logic reset;
output logic [OUT_WIDTH-1:0]R;
output logic [INPUT_WIDTH-1:0]Cdelay;
output logic [INPUT_WIDTH-1:0]Cdelay2;
output logic [OUT_WIDTH-1:0]DATA_OUT;
always_ff @(posedge clk)   
begin
if (!reset) begin
	Cdelay <= 0;
	Cdelay2 <= 0;
	R <= 0;
	DATA_OUT <= 0;
	end 
	else 
        begin        
            R <= A * B;
            Cdelay <= C;
            Cdelay2 <= Cdelay;
            DATA_OUT <= R + Cdelay2;
        end
    end
endmodule
