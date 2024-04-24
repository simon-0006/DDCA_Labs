`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2024 07:08:50 PM
// Design Name: 
// Module Name: Multiplexer_2_1
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


module Multiplexer_2_1(
    output ou,
    input decide,
    input [1:0] in
    );
    
    /*
    in the 2:1 MUX we only use 
     - decide[0]: to select which input gets routed to output
     - in[1:0]: for the two inputs
     - ou: signal on the board
    */
    
    wire ac, bc, notC;
    // Decoder dec(ou, decide, in);
    // Multiplexer_4_1 mux4(ou, decide, in);
    
    not notc (notC, decide);
    and a_nc (ac, notC, in[0]);
    and b_c (bc, decide, in[1]);
    
    or final_or (ou, ac, bc);
    
endmodule
