module ymnojenie (A,B,C);
input logic A; 
input logic B;
output logic C;
always_comb                 
begin 
C = A*B;
end
endmodule 