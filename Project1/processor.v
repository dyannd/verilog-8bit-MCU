//processor
module processor(
	input wire CLK, //clock
	input wire CLB, //reset low active
	input wire [7:0] INST, //instruction bus coming from instruction memory
	output wire [7:0] PC, //address bus goes into instruction memory
	output wire [7:0] ACC //for debugging purpose (ACC value)
);

	//controller bus
	wire z,c, LoadIR, IncPC, SelPC, LoadPC, LoadReg, LoadAcc;
	wire [3:0] Opcode;
	wire [1:0] SelAcc;
	wire [3:0] SelALU; 

	//accumulator bus
	wire [7:0] Acc_Out;
	wire SelAcc1;
	wire SelAcc0;
	assign SelAcc1 = SelAcc[1];
	assign SelAcc0 = SelAcc[0];	
	assign ACC = Acc_Out;

	//IR bus
	wire [7:0] IR_Out; //8-bit immediate data output from IR
	wire [3:0] Imm; //4-bit Imm going into PC
	wire [3:0] RegAdd; //register address going into RF
	assign Imm = IR_Out[3:0];
	assign Opcode = IR_Out[7:4];

	//RF bus
	wire [7:0] Reg_Out;

	//ALU bus
	wire [7:0] ALU_Out;
	wire [1:0] ALU_sel;
	wire [1:0] load_shift;
	assign ALU_sel = SelALU[3:2];
	assign load_shift = SelALU[1:0];
	
	//Controller
	controller controller(
		.z1(z1),
		.c1(c1),
		.CLK (CLK),
		.CLB (CLB),
		.Opcode(INST[7:4]), //use instant instruction instead of one passing by RF
		.LoadIR  (LoadIR), // IR
		.IncPC   (IncPC), // PC
		.SelPC   (SelPC), // PC
		.LoadPC  (LoadPC), // PC
		.LoadReg (LoadReg), // RF
		.LoadAcc (LoadAcc), // ACC
		.SelAcc  (SelAcc), // ACCMUX
		.SelALU  (SelALU) // ALU
	);

	//ACC
	accumulator accu(
		.A_imm(Imm),
		.B_rf(Reg_Out),
		.B_alu(ALU_Out),
		.LoadAcc(LoadAcc),
		.SelAcc1(SelAcc1),
		.SelAcc0(SelAcc0),
		.CLK(CLK),
		.CLB(CLB),
		.acc_out(Acc_Out),
		.cout(c1),
		.cin(c),
		.zin(z),
		.zout(z1)
	);

	//ALU
	ALU alu(
		.a(Acc_Out),
		.b(Reg_Out),
		.ALU_sel(ALU_sel),
		.load_shift(load_shift),
		.result(ALU_Out),
		.cout(c),
		.zout(z)
	);


	//RF
	reg_file rf(
		.reg_in(Acc_Out),
		.RegAddr(IR_Out[3:0]),
		.clk(CLK),
		.CLB(CLB),
		.LoadReg(LoadReg),
		.reg_out(Reg_Out)
	);

	//PC
	program_counter pc(
		.address(PC),
		.regIn(Reg_Out),
		.imm(Imm),
		.CLB(CLB),
		.clk(CLK),
		.IncPC(IncPC),
		.LoadPC(LoadPC),
		.selPC(SelPC)
		
	);

	//IR
	IR ir(
		.I(IR_Out),
		.clk(CLK),
		.CLB(CLB),
		.LoadIR(LoadIR),
		.Instruction(INST)
	);
endmodule