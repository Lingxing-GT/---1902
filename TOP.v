`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/19 20:00:51
// Design Name: 
// Module Name: TOP
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


module TOP(A,B,ALUop,Shift,Y,Less,Overflow,ZERO);
input [31:0] A,B;
input [3:0] ALUop;                          //{x,x,ALUop[1:0]}
input [4:0] Shift;
output ZERO;
output reg [31:0] Y;
output reg [31:0] Less;                    //SLT
output reg Overflow;                       //Overflow

wire [31:0] C,SL,SR;
wire Overflow1,sub;

assign sub = (ALUop[3]|ALUop[1])?1:0;
ADD_32 ADD(A,B,sub,C,Overflow1);       //CLA_32bits
Shift Sft(A,Shift,ALUop[3],SR,SL);

always@(*) begin
    case(ALUop[2:0])
        2'b000:                              //ADD
            begin
                Y <= C;
                Less <= 32'bx;
                Overflow <= Overflow1;
            end
        2'b001:                              //sll
            begin
                Y <= SL;
                Less <= 32'bx;
                Overflow <= 1'bx;
            end
        2'b010:                              //slt
            begin
                Y <= 32'bx;
                Less <= {31'b0,C[31]};
                Overflow <= 1'bx;
            end
        3'b100:                              //XOR
            begin
                Y <= A^B;
                Less <= 32'bx;
                Overflow <= 1'bx;
            end
        3'b101:                              //slr&sra
            begin
                Y <= SR;
                Less <= 32'bx;
                Overflow <= 1'bx;
            end
        3'b110:                              //OR
            begin
                Y <= A|B;
                Less <= 32'bx;
                Overflow <= 1'bx;
            end
        3'b111:                              //AND
            begin
                Y <= A&B;
                Less <= 32'bx;
                Overflow <= 1'bx;
            end
    endcase
end 

assign ZERO = (C)?0:1;


endmodule
