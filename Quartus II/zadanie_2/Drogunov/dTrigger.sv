module dTrigger (d,clk,out);
input logic d;
input logic clk;
output logic out;
always_ff @(posedge clk) //����� ���� ��� always �� ������������ ��� ������� ���������  
begin 
out <= d;
end
endmodule 