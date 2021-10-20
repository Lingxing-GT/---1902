`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/27 00:00:57
// Design Name: 
// Module Name: layer1
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


module layer1(A,B,P,G);
input [7:0] A,B;
output [7:0] P,G;

assign G[7:0] = A[7:0] & B[7:0];
assign P[7:0] = A[7:0] | B[7:0];

endmodule
