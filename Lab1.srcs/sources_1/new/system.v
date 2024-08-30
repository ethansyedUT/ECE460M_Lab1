`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 07:51:43 PM
// Design Name: 
// Module Name: system
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


module system(
    input wire Bin, 
    input wire [3:0]A,
    input wire [3:0]B,
    output wire [3:0] D,
    output wire Bout
    );
    
    wire b0_bout, b1_bout, b2_bout;
    
    Subtractor bit0 (A[0],B[0],Bin, D[0], b0_bout);
    Subtractor bit1 (A[1], B[1], b0_bout, D[1] , b1_bout);
    Subtractor bit2 (A[2], B[2], b1_bout, D[2] , b2_bout);
    Subtractor bit3 (A[3], B[3], b2_bout, D[3] , Bout);
    
    
    
endmodule
