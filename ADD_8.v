`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/19 20:36:47
// Design Name: 
// Module Name: ADD_8
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


module ADD_8(A,B,Cin,Sum,CO);
input [7:0] A,B;
input Cin;
output [7:0] Sum;
output CO;
wire [7:0] P,G,Ci;
layer1 l1(A,B,P,G);
layer2 l2(P,G,Cin,Ci);
layer3 l3(P,G,Ci,Cin,Sum,CO);


endmodule
