`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2024 05:42:02 PM
// Design Name: 
// Module Name: sevenSegment
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


module sevenSegment(
    input[3:0] a,
    input[3:0] b,
    input[1:0] switch,
    output[6:0] D,
    output s,
    output reg [3:0] AN
    );
    
    wire[4:0] n1;
    
    Decoder dec (.in(n1[3:0]), .ou(D));
    FourBitAdder fba (.a(a), .b(b), .s(n1));
    assign s = n1[4];
    
    always @ (switch)
        case(switch)
            0: AN = 4'b1110;
            1: AN = 4'b1101;
            2: AN = 4'b1011;
            3: AN = 4'b0111;
            default: AN = 4'b0000;
        endcase
    
    
    
endmodule
