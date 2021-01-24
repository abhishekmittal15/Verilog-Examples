module mux_using_assign (
    din_0,
    din_1,
    sel,
    mux_out
);
    input din_0,din_1,sel;
    output mux_out;
    wire mux_out;
    assign mux_out=(sel) ? din_1 :din_0;
endmodule