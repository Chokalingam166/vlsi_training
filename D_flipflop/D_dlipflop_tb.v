module d_flipflop_tb;
    reg D, clk;
    wire Q;

    // Instantiate the D Flip-Flop
    d_flipflop uut (
        .D(D),
        .clk(clk),
        .Q(Q)
    );

    // Clock generation: 10 time unit period
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // Apply test inputs
    initial begin
        D = 0; #10;
        D = 1; #10;
        D = 0; #10;
        D = 1; #10;
        D = 1; #10;
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | clk=%b D=%b | Q=%b", 
                 $time, clk, D, Q);
    end
endmodule
