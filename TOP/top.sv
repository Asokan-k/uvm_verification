module counter_top();

  import counter_pkg::*;
  import uvm_pkg::*;

  parameter cycle = 10;

  reg clk;
  counter_inf DUT_INF(clk);

  counter DUT (
    .clk      (clk),
    .rst      (DUT_INF.rst),
    .load     (DUT_INF.load),
    .data_out (DUT_INF.data_out),
    .data_in  (DUT_INF.data_in)
  );
				 
  initial begin
    uvm_config_db #(virtual counter_inf)::set(null, "*",
                                              "vif", DUT_INF);
    run_test();
  end

  // Generate the clock
  initial begin
    clk = 1'b0;
    forever #(cycle/2) clk = ~clk;
  end

endmodule
