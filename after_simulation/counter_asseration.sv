module counter_assertions;

  input clk, rst;
  output reg [3:0] count;

  property counter_property;
    @(posedge clk)
    $stable(count) || (count == 0);
  endproperty

  assert property_counter {
    counter_property;
  }

  property counter_reset;
    rst = 1'b1 => count == 0;
  endproperty

  assert property_counter_wraparound {
    $past(count) == 15 => count == 0;
  }

  property counter_max_value {
    count <= 15;
  }

  property counter_always_zero_on_reset {
    disable iff(rst);
    count == 0;
  }

endmodule
