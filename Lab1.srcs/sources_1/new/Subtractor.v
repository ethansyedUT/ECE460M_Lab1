`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 05:09:44 PM
// Design Name: 
// Module Name: Subtractor
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


module Subtractor(
    input wire A,
    input wire B,
    input wire Bin,
    output wire diff,
    output wire Bout
    );
    
    //assign diff <= 
    assign diff = A ~^ B ~^ Bin;
    assign Bout = (~A&B)|(~A&Bin)|(B&Bin);
    
endmodule
