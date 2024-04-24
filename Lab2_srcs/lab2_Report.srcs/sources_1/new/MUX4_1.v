`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2024 08:55:19 PM
// Design Name: 
// Module Name: MUX4_1
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


module MUX4_1(
    input [3:0] in,
    input [1:0] decide,
    output ou
    );
    
    wire [1:0] n;
    
    Multiplexer_2_1 (.ou(n[1]), .decide(decide[0]), .in(in[3:2]));
    Multiplexer_2_1 (.ou(n[0]), .decide(decide[0]), .in(in[1:0]));
    
    Multiplexer_2_1 (.ou(ou), .decide(decide[1]), .in(n));
    
endmodule
