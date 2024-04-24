`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2024 12:32:29 PM
// Design Name: 
// Module Name: output_logic
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


module output_logic(
    input [4:0] state_p,
    input clk_dim,
    input clk_dim_faster,
    output reg [5:0] bitstring
    );
    
    // normal light
    parameter S0 = 5'b00000;
    parameter S1 = 5'b00001;
    parameter S2 = 5'b00010;
    parameter S3 = 5'b00011;
    parameter S4 = 5'b00100;
    parameter S5 = 5'b00101;
    parameter S6 = 5'b00110;
    
    // dimmed
    parameter Sd1 = 5'b01001;
    parameter Sd2 = 5'b01010;
    parameter Sd3 = 5'b01011;
    parameter Sd4 = 5'b01100;
    parameter Sd5 = 5'b01101;
    parameter Sd6 = 5'b01110;
    
    // dimmed faster
    parameter Sf1 = 5'b11001;
    parameter Sf2 = 5'b11010;
    parameter Sf3 = 5'b11011;
    parameter Sf4 = 5'b11100;
    parameter Sf5 = 5'b11101;
    parameter Sf6 = 5'b11110;
    
    always @ (*)
        case(state_p)// full light
            S0: bitstring = 6'b000_000;
            S1: bitstring = 6'b000_100;
            S2: bitstring = 6'b000_110;
            S3: bitstring = 6'b000_111;
            S4: bitstring = 6'b001_000;
            S5: bitstring = 6'b011_000;
            S6: bitstring = 6'b111_000;
            Sd1: // slow light
            begin
                bitstring = 6'b000_000;
                bitstring[2] = clk_dim;
            end
            Sd2: 
            begin
                bitstring = 6'b000_100;
                bitstring[1] = clk_dim;
            end
            Sd3: 
            begin
                bitstring = 6'b000_110;
                bitstring[0] = clk_dim;
            end
            Sd4: 
            begin
                bitstring = 6'b000_000;
                bitstring[3] = clk_dim;
            end
            Sd5: 
            begin
                bitstring = 6'b001_000;
                bitstring[4] = clk_dim;
            end
            Sd6: 
            begin
                bitstring = 6'b011_000;
                bitstring[5] = clk_dim;
            end// fast light
            Sf1: 
            begin
                bitstring = 6'b000_000;
                bitstring[2] = clk_dim_faster;
            end
            Sf2: 
            begin
                bitstring = 6'b000_100;
                bitstring[1] = clk_dim_faster;
            end
            Sf3: 
            begin
                bitstring = 6'b000_110;
                bitstring[0] = clk_dim_faster;
            end
            Sf4: 
            begin
                bitstring = 6'b000_000;
                bitstring[3] = clk_dim_faster;
            end
            Sf5: 
            begin
                bitstring = 6'b001_000;
                bitstring[4] = clk_dim_faster;
            end
            Sf6: 
            begin
                bitstring = 6'b011_000;
                bitstring[5] = clk_dim_faster;
            end
        endcase
    
endmodule
