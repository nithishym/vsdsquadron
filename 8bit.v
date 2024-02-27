module bcd_counter (
  input clk,
  input reset,
  output reg [7:0] count
);

  always @(posedge clk) begin
    if (reset) begin
      count <= 8'b00000000; // Reset to 0
    end else begin
      count <= count + 1;
      // Check for overflow (9999) and correct to 0000
      if (count[3:0] == 4'b1001 && count[7:4] == 4'b1001) begin
        count <= 8'b00000000;
      end
    end
  end
endmodule
