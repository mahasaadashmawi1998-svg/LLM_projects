module counter_tb();


    // Declare all signals
    logic clk;
    logic rst;
    // Instantiate DUT
    logic [3:0] counter_out;
    counter counter_inst (
        .clk(clk),
        .rst(rst),
        .count(counter_out)
    );



    // Generate clock
   // Clock generation (10 ns period)
    // Clock generation (10 ns period)
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

    // Generate reset
    initial begin rst = 1'b1;
    #1 rst = 1'b0;
end
    // Stimulus section empty

endmodule
