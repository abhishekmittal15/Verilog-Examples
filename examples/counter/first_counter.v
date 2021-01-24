// This is a synchronous up counter and has 3 inputs namely :
// 1. the clock which brings the synchronicity 
// 2. the enable which switches on or off the counter 
// 3. the reset which brings the counter to the 0000 state
module first_counter (
    clock,reset,enable,counter_out
);
input clock,reset,enable;
output [3:0] counter_out;
wire clock,reset,enable;
reg [3:0] counter_out;
always @(posedge clock) 
begin: COUNTER
    if(reset==1'b1) begin
        counter_out <= #1 4'b0000;
    end
    else if (enable==1'b1) begin
        counter_out <= counter_out+1;
    end
end
endmodule