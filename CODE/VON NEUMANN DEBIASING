
module von_neumann (
    input clk,
    input in_bit,
    output reg out_bit,
    output reg valid
);
    reg [1:0] buffer;

    always @(posedge clk) begin
        buffer <= {buffer[0], in_bit};

        if (buffer == 2'b01) begin
            out_bit <= 1;
            valid <= 1;
        end else if (buffer == 2'b10) begin
            out_bit <= 0;
            valid <= 1;
        end else begin
            valid <= 0;
        end
    end
endmodule
