`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/23/2024 12:31:30 PM
// Design Name: 
// Module Name: FSM
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


module FSM( 
    input clk_en,
    input reset,
    input left,
    input right,
    
    output [4:0] global_state
    );
    reg [4:0] state_n;
    reg [4:0] state_p;
    
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
    
    always @ (posedge clk_en, posedge reset) //state register
        if (reset) state_p <= S0;
        else       state_p <= state_n;
    always @ (*) begin // next state logic
        case (state_p)
            S0:     begin
                    if (left) begin 
                        if (right)
                            state_n = S0;
                        else
                            state_n = Sd4;
                    end else begin
                        if (right)
                            state_n = Sd1;
                        else 
                            state_n = S0;
                        end
                    end
            S1:     state_n = Sd2;
            S2:     state_n = Sd3;
            S3:     state_n = S0;
            S4:     state_n = Sd5;
            S5:     state_n = Sd6;
            S6:     state_n = S0;
            Sd1:    state_n = Sf1;
            Sd2:    state_n = Sf2;
            Sd3:    state_n = Sf3;
            Sd4:    state_n = Sf4;
            Sd5:    state_n = Sf5;
            Sd6:    state_n = Sf6;
            Sf1:    state_n = S1;
            Sf2:    state_n = S2;
            Sf3:    state_n = S3;
            Sf4:    state_n = S4;
            Sf5:    state_n = S5;
            Sf6:    state_n = S6;
            default: state_n = S0;
        endcase
     end
    
    assign global_state = state_p;
    
    
endmodule