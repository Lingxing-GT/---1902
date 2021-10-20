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


module TOP(A,B,ALUop,Y,Less,Overflow);
input [31:0] A,B;
input [3:0] ALUop;
output reg [31:0] Y;
output reg [31:0] Less;
output reg Overflow;

wire [31:0] C;
wire Overflow1;

ADD_32 ADD(A,B,ALUop[2],C,Overflow1);

always@(*) begin
    case(ALUop[1:0]) 
        2'b00:
            begin
                if(ALUop[3])
                    Y <= ~A&~B;
                else
                    Y <= A&B;
                Less <= 32'bx;
                Overflow <= 1'bx;
            end
        2'b01:
            begin
                Y <= A|B;
                Less <= 32'bx;
                Overflow <= 1'bx;
            end
        2'b10://add or sub
            begin
                //ADD_32 ADD(A,B,ALUop[2],Y,Overflow);
                Y <= C;
                Less <= 32'bx;
                Overflow <= Overflow1;
            end
        2'b11:
            begin
                //ADD_32 SLT(A,B,ALUop[2],Less);
                Y <= 32'bx;
                Less <= {30'b0,C[31]};
                Overflow <= 1'bx;
            end
    endcase
end



endmodule
