`timescale 1ns/1ps
module mux_2to1_tb;

    logic A, B, S;
    logic Y;

    // Instantiate the MUX module
    mux_2to1 dut (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin
        $monitor("A=%b B=%b S=%b | Y=%b", A, B, S, Y);

        // Test cases
        A = 0; B = 0; S = 0; #10;
        A = 0; B = 1; S = 0; #10;
        A = 1; B = 0; S = 1; #10;
        A = 1; B = 1; S = 1; #10;

        $finish;
    end
endmodule
