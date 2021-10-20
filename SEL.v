`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/27 01:07:55
// Design Name: 
// Module Name: SEL
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


module SEL(A,SEL,B);
input [31:0] A;
input SEL;

output [31:0] B;
assign B = (SEL)?~A:A;
endmodule
