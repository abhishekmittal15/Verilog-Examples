`include "first_counter.v"
module first_counter_tb ();
    reg clock,reset,enable;
    wire [3:0] counter_out;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0,first_counter_tb);
        // $display ("time\t clk reset enable counter");
        // $monitor ("%g\t %b %b %b %b",$time , clock,reset,enable,counter_out);
        clock=1;
        reset=0;
        enable=1;
        #5 reset=1;
        #10 reset=0;
        #10 enable=1;
        #100 enable=0;
        #5 $finish;
    end

    always begin
        #5 clock=~clock;
    end
    first_counter U_counter(
        clock,reset,enable ,counter_out
    );
endmodule