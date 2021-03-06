/*
    CS/ECE 552 Spring '19
    Homework #3, Problem 1

    4-1 mux template
*/
module mux4_1(InA, InB, InC, InD, S, Out);
    input        InA, InB, InC, InD;
    input [1:0]  S;
    output       Out;
    wire n1, n2;

    // YOUR CODE HERE
	mux2_1 m1(.InA(InD), .InB(InB), .S(S[1]), .Out(n1));
	mux2_1 m2(.InA(InC), .InB(InA), .S(S[1]), .Out(n2));
	mux2_1 m3(.InA(n1), .InB(n2), .S(S[0]), .Out(Out));


endmodule
