module full_subtractor_tb;
    reg A, B, Bin;
    wire Diff, Bout;

    // Instantiate the Full Subtractor
    full_subtractor uut (
        .A(A),
        .B(B),
        .Bin(Bin),
        .Diff(Diff),
        .Bout(Bout)
    );

    initial begin
        // Test all input combinations
        A=0; B=0; Bin=0; #10;
        A=0; B=0; Bin=1; #10;
        A=0; B=1; Bin=0; #10;
        A=0; B=1; Bin=1; #10;
        A=1; B=0; Bin=0; #10;
        A=1; B=0; Bin=1; #10;
        A=1; B=1; Bin=0; #10;
        A=1; B=1; Bin=1; #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | A=%b B=%b Bin=%b | Diff=%b Bout=%b", 
                 $time, A, B, Bin, Diff, Bout);
    end
endmodule
