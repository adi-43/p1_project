module decimal_to_bram_bram_rom
	(
		input wire clk,
		input wire [-1:0] addr,
		output reg [11:0] data_out
	);

	(* rom_style = "block" *)

	// Signal declaration
	reg [-1:0] addr_reg;

	always @(posedge clk)
		begin
		addr_reg <= addr;
		end

	always @*
	case (addr_reg)
		0'd0: data_out = 12'b01000010100000100111010111000010;
		default: data_out = 12'b000000000000;
	endcase
endmodule