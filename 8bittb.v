module bcd_counter_tb;

  reg clk, reset;
  wire [7:0] count;

  // Instantiate the counter module
  bcd_counter dut (clk, reset, count);

  // Generate clock signal (50 MHz)
  initial begin
    clk = 1'b0;
    forever #10 clk = ~clk;
  end

  // Apply reset pulse
  initial begin
    reset = 1'b1;
    #10 reset = 1'b0;
  end

  // Monitor the counter output
  always @(posedge clk) begin
    if (reset == 1'b0) begin
      // Print the current count value in BCD format
      $display("Count: %b (%0d)", count, count);
      #1000 $finish;
    end
  end
initial begin 
    $dumpfile("dump.vcd");
  
  $dumpvars(1);
end

  
endmodule
