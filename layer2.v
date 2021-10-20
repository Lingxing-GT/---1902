`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/27 00:05:30
// Design Name: 
// Module Name: layer2
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


module layer2(P,G,C0,Ci);
input [7:0] P,G;
input C0;
output [8:1] Ci;
assign Ci[1] = G[0]|P[0]&C0;
assign Ci[2] = G[1]|P[1]&G[0]|P[1]&P[0]&C0;
assign Ci[3] = G[2]|P[2]&G[1]|P[2]&P[1]&G[0]|P[2]&P[1]&P[0]&C0;
assign Ci[4] = G[3]|P[3]&G[2]|P[3]&P[2]&G[1]|P[3]&P[2]&P[1]&G[0]|P[3]&P[2]&P[1]&P[0]&C0;
assign Ci[5] = G[4]|P[4]&G[3]|P[4]&P[3]&G[2]|P[4]&P[3]&P[2]&G[1]|P[4]&P[3]&P[2]&P[1]&G[0]|P[4]&P[3]&P[2]&P[1]&P[0]&C0;
assign Ci[6] = G[5]|P[5]&G[4]|P[5]&P[4]&G[3]|P[5]&P[4]&P[3]&G[2]|P[5]&P[4]&P[3]&P[2]&G[1]|P[5]&P[4]&P[3]&P[2]&P[1]&G[0]|P[5]&P[4]&P[3]&P[2]&P[1]&P[0]&C0;
assign Ci[7] = G[6]|P[6]&G[5]|P[6]&P[5]&G[4]|P[6]&P[5]&P[4]&G[3]|P[6]&P[5]&P[4]&P[3]&G[2]|P[6]&P[5]&P[4]&P[3]&P[2]&G[1]|P[6]&P[5]&P[4]&P[3]&P[2]&P[1]&G[0]|P[6]&P[5]&P[4]&P[3]&P[2]&P[1]&P[0]&C0;
assign Ci[8] = G[7]|P[7]&G[6]|P[7]&P[6]&G[5]|P[7]&P[6]&P[5]&G[4]|P[7]&P[6]&P[5]&P[4]&G[3]|P[7]&P[6]&P[5]&P[4]&P[3]&G[2]|P[7]&P[6]&P[5]&P[4]&P[3]&P[2]&G[1]|P[7]&P[6]&P[5]&P[4]&P[3]&P[2]&P[1]&G[0]|P[7]&P[6]&P[5]&P[4]&P[3]&P[2]&P[1]&P[0]&C0;
endmodule
