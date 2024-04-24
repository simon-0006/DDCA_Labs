`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2024 06:51:14 PM
// Design Name: 
// Module Name: Decorder
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


module Decorder(
    input a,
    input b,
    output[3:0] s);

wire n1, n2;

not nb (n1, b);
not na (n2, a);
nor a_nor_b (s[0], a, b);
and a_m_nb (s[1], a, n1);
and na_m_b (s[2], n2, b);  
and a_m_b (s[3], a, b);
    
endmodule
