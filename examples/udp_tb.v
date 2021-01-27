`include "udp.v"
module udp_tb();
wire c;
reg a ,b;
udp first_udp(c,a,b);
initial begin
    $monitor("@time=%g a=%b b=%b c=%b",$time,a,b,c);
    a=1'b0;
    b=1'b0;
end
always #2 a=a+1'b1;
    always #4 b=b+1'b1;
    always #8 $finish;
endmodule
