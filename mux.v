
///////////////////////////////
Author Name: Maheshwari Ratthapuram
Date: 25.03.2025
Design Name: multiplexer
Description: A Multiplexer (MUX) is a digital circuit that selects 
one input from multiple inputs and forwards it to a 
single output based on control signals.
//////////////////////////////////////


module mux_2to1 (
    input logic A,     // Input A
    input logic B,     // Input B
    input logic S,     // Select line
    output logic Y     // Output
);

    // Output depends on select line
    assign Y = S ? B : A;

endmodule
