module multiply(A,B,C);
    input logic A;    // ������� ������ A
    input logic B;    // ������� ������ B
    output logic C;   // �������� ������ C

    always_comb begin
        C = A & B;
    end
endmodule

module multiply_tb ();
logic A,B,C;
multiply dut(A,B,C);
integer i;
initial begin

	for (i=0; i<50; i++) begin
	{A,B} = i%4; #10;
	end
	end
endmodule
