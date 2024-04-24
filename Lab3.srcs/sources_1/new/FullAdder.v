`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2024 05:19:17 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input a,
    input b,
    input ci,
    output s,
    output co
    );
    wire x1, x2, x3, x4, x5;
    
    // CO
    and a_m_b (x1, a, b);
    and a_m_c (x3, a, ci);
    and c_m_b (x2, ci, b);
    
    or n1_p_n2 (x4, x1, x2);
    or n3_p_n4 (co, x3, x4);
    
    // S
    xor a_xp_b (x5, a, b);
    xor n5_xp_c (s, x5, ci);
    
endmodule
