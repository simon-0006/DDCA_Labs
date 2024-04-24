`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2024 12:31:11 PM
// Design Name: 
// Module Name: top
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


module top(
    input left,
    input right,
    input reset,
    input clk,
    output LA,
    output LB,
    output LC,
    output RA,
    output RB,
    output RC
);
    wire clk_en, clk_dimming, clk_dimming_faster;
    wire [4:0] state_p;
    wire [5:0] bitstring;

    clk_div clk_div(.clk(clk), .rst(reset), .clk_en(clk_en));
    clk_dim clk_dim(.clk(clk), .rst(reset), .clk_en(clk_dimming));
    clk_dim_faster clk_dim_faster(.clk(clk), .rst(reset), .clk_en(clk_dimming_faster));
    
    FSM fsm(.clk_en(clk_en), .reset(reset), .left(left), .right(right), .global_state(state_p));
    
    output_logic Out(.state_p(state_p), 
                     .clk_dim(clk_dimming), 
                     .clk_dim_faster(clk_dimming_faster), 
                     .bitstring(bitstring));
    
    // Decoder
    assign LC = bitstring[5];
    assign LB = bitstring[4];
    assign LA = bitstring[3];
    assign RA = bitstring[2];
    assign RB = bitstring[1];
    assign RC = bitstring[0]; 
    
    
endmodule
