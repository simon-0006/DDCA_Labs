`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2024 12:47:23 PM
// Design Name: 
// Module Name: clk_dim_faster
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


module clk_dim_faster(input clk, input rst, output clk_en);
    reg [1:0] clk_count;
    always @ (posedge clk)
    // posedge defines a rising edge (transition from 0 to 1)
    begin
        if (rst)
            clk_count <= 0;
        else
            clk_count <= clk_count + 1;
    end
    assign clk_en = clk_count[0] | clk_count[1];
endmodule