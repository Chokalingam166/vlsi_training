module half_adder_tb;
    reg A, B;
    wire Sum, Carry;

    // Instantiate the Half Adder
    half_adder uut (
        .A(A),
        .B(B),
        .Sum(Sum),
        .Carry(Carry)
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
        $monitor("Time=%0t | A=%b B=%b | Sum=%b Carry=%b", 
                 $time, A, B, Sum, Carry);
    end
endmodule
