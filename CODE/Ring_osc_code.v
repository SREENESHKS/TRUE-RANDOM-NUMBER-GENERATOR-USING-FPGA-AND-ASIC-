module ring_oscillator (
    input enable,
    output reg ro_out
);
    initial ro_out = 0;

    always begin
        if (enable) begin
            #5 ro_out = ~ro_out;  // toggle with fixed delay
        end else begin
            #10; // wait when disabled
        end
    end
endmodule
