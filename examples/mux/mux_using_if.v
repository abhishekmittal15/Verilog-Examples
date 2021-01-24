module mux_using_if (
    input din_0,
    input din_1,
    input sel,
    output mux_out
);
    reg mux_out;
    if (sel==1'b0) begin
        mux_out=din_1;
    end else begin
        mux_out=din_0;
    end
endmodule