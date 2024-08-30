`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/29/2024 08:48:47 PM
// Design Name: 
// Module Name: tb_system
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


module tb_system;
    reg clk;
    reg bin;
    reg [3:0] A;
    reg [3:0] B;
    wire [3:0] D;
    wire bout;
    
    system u1(
        .Bin(bin),
        .A(A),
        .B(B),
        .D(D),
        .Bout(bout)
    );
    
    initial begin
    bin = 1;
    A = 'b1001;
    B = 'b0011;
    
    #10
    bin = 0;
    A = 0;
    B = 0;
    
    #10
    bin = 1;
    A = 'b0011;
    B = 'b0110;
    
    
    end
    
    always
    #5 clk = ~clk;
endmodule
