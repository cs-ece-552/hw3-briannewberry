/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 1

    2-1 mux template
*/
module mux2_1(InA, InB, S, Out);
	input   InA, InB;
	input   S;
	output  Out;
	wire	n1, n2, n3, n4, n5, n6;

	// Mux Logic
	nand2 m1( .in1(S), .in2(InA), .out(n2));
	not1 m2( .in1(n2), .out(n4));
	not1 m3( .in1(S), .out(n1));
	nand2 m4( .in1(n1), .in2(InB), .out(n3));
	not1 m5( .in1(n3), .out(n5));
	nor2 m6( .in1(n4), .in2(n5), .out(n6));
	not1 m7( .in1(n6), .out(Out));
	
endmodule
