`timescale 1ns/1ps

module ring_counter_tb;

reg clk;
reg reset;

wire [3:0] q;


ring_counter uut(
    .clk(clk),
    .reset(reset),
    .q(q)
);


// Clock Generation
always #5 clk = ~clk;


initial
begin

    clk = 0;
    reset = 1;

    #10 reset = 0;

    #50;

    $finish;

end


initial
begin

    $display("Time   Q3 Q2 Q1 Q0");
    $monitor("%0t     %b  %b  %b  %b",
             $time,q[3],q[2],q[1],q[0]);

end

endmodule