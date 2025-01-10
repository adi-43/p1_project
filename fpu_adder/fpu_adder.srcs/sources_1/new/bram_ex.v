`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.01.2025 15:42:48
// Design Name: 
// Module Name: bram_ex
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

module decimal_to_bram_bram_rom
	(
		input wire clk,
		input wire [0:0] addr,
		output reg [11:0] data_out
	);

	(* rom_style = "block" *)

	// Signal declaration
	reg [0:0] addr_reg;

	always @(posedge clk)
		begin
		addr_reg <= addr;
		end

	always @*
	case (addr_reg)
		1'd0: data_out = 12'b0100001010000011;
		1'd1: data_out = 12'b0100001000110100;
		default: data_out = 12'b0;
	endcase
endmodule