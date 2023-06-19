//2-input multiplexer

module mux2(
	input wire [7:0] A,
	input wire [7:0] B,
	input wire select,
	output wire [7:0] mux_out
);

assign mux_out = (select) ? A:B;

endmodule