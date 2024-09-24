module D_trigger(D,CLK,Q);
    input logic D;    // ������� ������
    input logic CLK;    // ������ �������������
    output logic Q; 	//�������� ������
    
    always_ff @(posedge CLK) begin
		Q <= D;
	end
endmodule

module D_trigger_tb ();
logic D,CLK,Q;
D_trigger dut(D,CLK,Q);
integer i;
initial begin

	for (i=0; i<50; i++) begin
	CLK = i%2;#5; 
	D = i%5;#10;
	end
	end
endmodule