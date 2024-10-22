module dTrigger (d,clk,out);
input logic d;
input logic clk;
output logic out;
always_ff @(posedge clk) //ведет себя как always но используется для синтеза триггеров  
begin 
out <= d;
end
endmodule 