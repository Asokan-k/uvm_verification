interface counter_inf (input bit clock);

  logic [3:0] data_in;
  logic [3:0] data_out;
  logic       clk_in_out;
  logic       load;
  logic       rst;

  // Driver Clocking Block
  clocking driver_cb @(posedge clock);
    default input #1 output #1;
    output rst;
    output data_in;
    output load;
  endclocking

  // Output Monitor Clocking Block
  clocking output_mon_cb @(posedge clock);
    default input #1 output #1;
    input data_out;
  endclocking

  // Input Monitor Clocking Block
  clocking input_mon_cb @(posedge clock);
    default input #1 output #1;
    input load;
    input rst;
    input data_in;
  endclocking
  
  // Driver modport
  modport DRIVER (clocking driver_cb);

  // Input Monitor modport
  modport INPUT_MON (clocking input_mon_cb);

  // Output Monitor modport
  modport OUTPUT_MON (clocking output_mon_cb);

endinterface