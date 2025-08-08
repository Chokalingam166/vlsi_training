module sr_flipflop_tb;
    reg S, R, clk;
    wire Q, Qbar;

    // Instantiate the SR Flip-Flop
    sr_flipflop uut (
        .S(S),
        .R(R),
        .clk(clk),
        .Q(Q),
        .Qbar(Qbar)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Apply test inputs
    initial begin
        S=0; R=0; #10;
