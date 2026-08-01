`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/23/2025 03:45:35 PM
// Design Name: 
// Module Name: sev_seg
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


module sev_seg(
input clk,
output reg[3:0]an,
output reg[7:0]ca);
reg clk1=0;
reg [31:0]count=0;
reg [1:0]state;
always @(posedge clk)
begin
if(count==50000)
begin
count<=0;
clk1<=~clk1;
end
else
  count<=count+1;
 end
 always @(posedge clk1)
 begin
 case(state)
    2'b00:begin
    an<=4'b0001;
    ca<=8'b1111_1001;
    end
    2'b01:begin
    an<=4'b0010;
    ca<=8'b1001_1001;
    end
    2'b10:begin
    an<=4'b0100;
    ca<=8'b1101_1001;
    end
    2'b11:begin
    an<=4'b1000;
    ca<=8'b1111_1001;
    end
    endcase
    state<=state+1;
    end
    endmodule
