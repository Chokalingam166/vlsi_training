module half_subtractor_tb;
    reg A, B;
    wire Diff, Borrow;

    // Instantiate the Half Subtractor
    half_subtractor uut (
        .A(A),
        .B(B),
        .Diff(Diff),
        .Borrow(Borrow)
    );

    initial begin
        // Test all input combinations
        A=0; B=0; #10;
        A=0; B=1; #10;
        A=1; B=0; #10;
        A=1; B=1; #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | A=%b B=%b | Diff=%b Borrow=%b", 
                 $time, A, B, Diff, Borrow);
    end
endmodule
