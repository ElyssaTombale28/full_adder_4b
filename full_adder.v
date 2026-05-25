/*
==========================================================================
									 Full-Adder Gate
==========================================================================
Description: This is an Full-Adder Module using behavioral-level modeling.

Design Engineer: 
	Elyssa C. Tombale
	
	Date:
	14 May, 2026
==========================================================================

==========================================================================
*/

module full_adder(cout, sum, A, B, cin);

	input A;
	input B;
	input cin;
	output reg sum;
	output reg cout;
	
	always @(A,B,cin)begin
	
		case({A,B,cin})
			3'b000: {cout, sum} = 2'b00;
			3'b001: {cout,sum} = 2'b01;
			3'b010: {cout,sum} = 2'b01;	
			3'b011: {cout,sum} = 2'b10;
			3'b100: {cout, sum} = 2'b01;
			3'b101: {cout,sum} = 2'b10;
			3'b110: {cout,sum} = 2'b10;	
			3'b111: {cout,sum} = 2'b11;
			default: {cout,sum} = 2'b00;
		endcase
		end
	
endmodule