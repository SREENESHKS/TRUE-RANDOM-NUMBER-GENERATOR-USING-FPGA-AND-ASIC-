
module ring_oscillator #(parameter ID = 0)(
    input enable,
    output reg ro_out
);
    initial ro_out = 0;

    always begin
        if (enable) begin
            #((ID+1)*3) ro_out = ~ro_out; // Different toggle delay for each oscillator
        end else begin
            #10; // do nothing when disabled
        end
    end
endmodule
