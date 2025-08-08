module not_gate_tb;
    reg A;
    wire Y;

    // Instantiate the NOT gate
    not_gate uut (
        .A(A),
        .Y(Y)
    );

    initial begin
        // Test cases
        A = 0; #10;
        A = 1; #10;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | A=%b | Y=%b", $time, A, Y);
    end
endmodule
