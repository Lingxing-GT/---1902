`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/19 20:20:46
// Design Name: 
// Module Name: ADD_32
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


module ADD_32(A,B,Sub,Sum,Overflow);
input [31:0] A,B;
input Sub;
output [31:0] Sum;
output Overflow;

wire [31:0] B1;
wire C0,C1,C2;

SEL my_sel(B,Sub,B1);
ADD_8 ALU_0(A[7:0],B1[7:0],Sub,Sum[7:0],C0);
ADD_8 ALU_1(A[15:8],B1[15:8],C0,Sum[15:8],C1);
ADD_8 ALU_2(A[23:16],B1[23:16],C1,Sum[23:16],C2);
ADD_8 ALU_3(A[31:24],B1[31:24],C2,Sum[31:24]);
assign Overflow = (A[31]&B[31]&(~Sum[31]))|((~A[31])&(~B[31])&Sum[31]);
endmodule
