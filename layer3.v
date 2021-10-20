`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/27 00:53:32
// Design Name: 
// Module Name: layer3
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


module layer3(P,G,Ci,C0,Sum,Co);
input [7:0] P,G,Ci;
input C0;
output [7:0] Sum;
output Co;
assign Sum = G^P^{Ci[6:0],C0};
assign Co = Ci[7];
endmodule
