package counter_pkg;

  // Global parameter
  int number_of_transactions = 100;

  // UVM import
  import uvm_pkg::*;
  `include "uvm_macros.svh"

  // Interface
  `include "count_if.sv"

  // Transaction
  `include "counter_trans.sv"

  // Config
  `include "config.sv"

  // Input Agent Components
  `include "input_driver.sv"
  `include "input_monitor.sv"
  `include "input_sequencer.sv"
  `include "input_agent.sv"

  // Output Agent Components
  `include "output_monitor.sv"
  `include "output_agent.sv"

  // Scoreboard
  `include "scoreboard.sv"

  // Environment
  `include "counter_env.sv"

  // Sequence
  `include "sequence.sv"

  // Testcases
  `include "base_testcase.sv"
  `include "derived_testcase.sv"

endpackage