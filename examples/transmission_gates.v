module transmission_gates ();
    reg data_enable_low,in;
    wire data_bus,out1,out2;

    bufif0 u1(data_bus,in,data_enable_low);
    buf u2(out1,in);
    not u3(out2,in);

    initial begin
        $monitor("@%g in=%b data_enable_low=%b out1=%b out2=%b databus=%b",$time,in,data_enable_low,out1,out2,data_bus);
        data_enable_low=0;
        in=0;
        #4 data_enable_low=1;
        #8 $finish;
    end
    always #2 begin
        in=~in;
    end
endmodule