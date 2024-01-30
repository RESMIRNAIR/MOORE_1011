`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2024 22:37:34
// Design Name: 
// Module Name: moore1011_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1ns / 1ps

module testbench;
    // Inputs clock, reset, sequence_in
    reg sequence_in;
    reg clock;
    reg reset;
    // Outputs
    wire detector_out;
    // Instantiate the Unit Under Test (UUT)
    moore_1011 uut (
        .sequence_in(sequence_in), 
        .clock(clock), 
        .reset(reset), 
        .detector_out(detector_out)
    );
    
initial
    begin
        clock = 1'b0;
        reset = 1'b1;
        #15 reset = 1'b0;
    end

always #5 clock = ~ clock;  

initial begin
        #12 sequence_in = 0;#10 sequence_in = 0 ; #10 sequence_in = 1 ; #10 sequence_in = 0 ;
        #12 sequence_in = 1;#10 sequence_in = 1 ; #10 sequence_in = 0 ; #10 sequence_in = 1 ;
        #12 sequence_in = 1;#10 sequence_in = 0 ; #10 sequence_in = 0 ; #10 sequence_in = 1 ;
        #12 sequence_in = 0;#10 sequence_in = 1 ; #10 sequence_in = 1 ; #10 sequence_in = 0 ;
        #10 $finish;
    end
      
    
endmodule
