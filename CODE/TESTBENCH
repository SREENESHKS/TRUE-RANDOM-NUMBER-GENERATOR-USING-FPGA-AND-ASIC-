`timescale 1ns/1ps

module trng_tb;
    reg clk, reset, enable;
    wire [31:0] trng_output;
    wire valid_out;

    trng_top uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .trng_output(trng_output),
        .valid_out(valid_out)
    );

    
    always #10 clk = ~clk;

    initial begin
        $dumpfile("trng.vcd");
        $dumpvars(0, trng_tb);

        clk = 0;
        reset = 1;
        enable = 0;
        #50;

        reset = 0;
        enable = 1;

        #5000; // 

        $finish;
    end
endmodule
