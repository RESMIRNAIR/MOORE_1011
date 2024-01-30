`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.01.2024 21:44:17
// Design Name: 
// Module Name: moore_1011
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


module moore_1011(clock,reset,sequence_in,detector_out);
input clock, reset, sequence_in; 
output reg detector_out; 
parameter  S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b100;
reg [2:0] current_state, next_state;
always @(posedge clock, posedge reset)
begin
 if(reset==1) 
 current_state <= S0;
 else
 current_state <= next_state; 
end 
// Write logic to determine next state from the state diagram
always @(current_state,sequence_in)
begin
 case(current_state) 
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
 	default:next_state = S0;
endcase
end
// to determine the output of the Moore FSM, output only depends on current state
always @(current_state)
begin 
 case(current_state) 
 	S0:   detector_out = 0;
 	S1:   detector_out = 0;
 	S2:  detector_out = 0;
 	S3:  detector_out = 0;
 	S4:  detector_out = 1;
 	default:  detector_out = 0;
 endcase
end 
endmodule 

