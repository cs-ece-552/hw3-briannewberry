module mux2_1_bench;
    
    reg A,B,S,clk;
    wire Y;
    
    mux2_1 a1(.InA(A) ,.InB(B), .S(S), .Out(Y));
    
    //Above style is connecting by names

    always #10 clk = ~clk;
    
    initial begin
        A =1'b0;
        B = 1'b0;
	S = 1'b0;
	clk = 1'b0;

	@(negedge clk)
		begin
			A=1'b1;
			S=1'b1;
		end
	@(negedge clk)
			A=1'b0;
	@(negedge clk)
		begin
			B=1'b1;
			S=1'b0;
		end
	@(negedge clk)
			B=1'b0;

    end
    
    always @(Y)
    $display( "time =%0t \tINPUT VALUES: \t InA=%b InB=%b Sel=%b \t output value Y  =%b",$time,A,B,S,Y);
endmodule
