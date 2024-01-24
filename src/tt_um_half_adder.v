`default_nettype none

module tt_um_half_adder #( parameter MAX_COUNT = 24'd10_000_000 ) (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

assign uio_out = 8'h00;
 assign uio_oe = 8'h00;
    assign uo_out[7:2]=4'b0000;

ha ha (
    .a(ui_in[0]),
    .b(ui_in[1]),
    .sum(uo_out[0]),
    .carry(uo_out[1])
);
endmodule

   
   
            

