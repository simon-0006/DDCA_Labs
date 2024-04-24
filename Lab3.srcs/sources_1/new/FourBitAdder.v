`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2024 05:36:55 PM
// Design Name: 
// Module Name: FourBitAdder
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

module FourBitAdder(
    input[3:0] a,
    input[3:0] b,
    output[4:0] s);
    wire bl,n2,n3;

FullAdder FA0 (.a(a[0]), .b(b[0]), .ci(0), .s(s[0]), .co(bl));
FullAdder FA1 (.a(a[1]), .b(b[1]), .ci(bl), .s(s[1]), .co(n2));
FullAdder FA2 (.a(a[2]), .b(b[2]), .ci(n2), .s(s[2]), .co(n3));
FullAdder FA3 (.a(a[3]), .b(b[3]), .ci(n3), .s(s[3]), .co(s[4]));


endmodule
