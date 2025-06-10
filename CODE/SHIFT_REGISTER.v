module shift_register_32 (
    input clk,
    input reset,
    input shift_en,
    input data_in,
    output reg [31:0] data_out
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            data_out <= 32'b0;
        else if (shift_en)
            data_out <= {data_out[30:0], data_in};
    end
endmodule
