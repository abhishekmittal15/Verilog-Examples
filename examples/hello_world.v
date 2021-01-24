module hello_world;
    initial begin
        $display ("hello world");
        #10 $finish;
    end
endmodule