/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 2
    
    a 1-bit full adder
*/
module fullAdder_1b(A, B, C_in, S, C_out);
    input  A, B;
    input  C_in;
    output S;
    output C_out;
    wire n1, n2, n3, n4, n5, n6, n7;

    // C_out Logic
	nand2 m1( .in1(A), .in2(B), .out(n1));
	nand2 m2( .in1(A), .in2(C_in), .out(n2));
	nand2 m3( .in1(B), .in2(C_in), .out(n3));
	not1 m4( .in1(n1), .out(n4));
	not1 m5( .in1(n2), .out(n5));
	not1 m6( .in1(n3), .out(n6));
	nor3 m7( .in1(n4), .in2(n5), .in3(n6), .out(n7));
	not1 m8( .in1(n7), .out(C_out));
    // Sum Logic
	xor3 m9( .in1(A), .in2(B), .in3(C_in), .out(S));
endmodule
