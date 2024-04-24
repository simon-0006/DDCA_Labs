`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2024 05:28:28 PM
// Design Name: 
// Module Name: Decoder
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


module Decoder(
    input [3:0] in,
    output reg [6:0] ou
    );
    
    always @ (*)
        case (in)
        /*
            0: ou = 7'b0000_001;
            1: ou = 7'b0000_010;
            2: ou = 7'b0000_100;
            3: ou = 7'b0001_000;
            4: ou = 7'b0010_000;
            5: ou = 7'b0100_000;
            6: ou = 7'b1000_000;
            */
            0: ou = 7'b0000_001;
            1: ou = 7'b1001_111;
            2: ou = 7'b0010_010;
            3: ou = 7'b0000_110;
            4: ou = 7'b1001_100;
            5: ou = 7'b0100_100;
            6: ou = 7'b0100_000;
            7: ou = 7'b0001_111;
            8: ou = 7'b0000_000;
            9: ou = 7'b0000_100;
            10: ou = 7'b0001_000;
            11: ou = 7'b1100_000;
            12: ou = 7'b0110_001;
            13: ou = 7'b1000_010;
            14: ou = 7'b0110_000;
            15: ou = 7'b0111_000;
            default: ou = 7'b1111_111;
        endcase
    
    
    
endmodule
