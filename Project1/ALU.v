//ALU 
module ALU 
( a,
  b,
  ALU_sel,
  load_shift,
  result,
  cout,
  zout
);
 input [7:0] a;
 input [7:0] b;
 input [1:0] ALU_sel;
 input [1:0] load_shift;
 output [7:0] result;
 output cout;
 output zout;
//Decare any necessary registers or wires
wire [7:0] a;
wire [7:0] b;
wire [1:0] ALU_sel;
wire [1:0] load_shift;
wire [7:0] result;
reg cout;
reg zout;
reg [8:0]r;
assign result = r[7:0];//one cout bit at end rest go to result

assign cout = r[8]; 
assign zout = (result == 0)?1:0;
//setting parameters for ALU_sel and load_shift
parameter ADD = 2'b10,
	  SUB = 2'b11,
	  NOR = 2'b01,
	  NUL = 2'b00,
	  SHL = 2'b01,
	  SHR = 2'b11,
	  LD  = 2'b10,
	  RST = 2'b00;
	
	  

always @(a or b or ALU_sel or load_shift) begin

//Complete this part to specify ALU behavior 
	case(ALU_sel)//combinational should be blocking assign "=" shifting should be non blocking <=
		ADD: begin
			r = a + b;
			//cout <= r[8];
			

		end
		SUB: begin
			r = a - b;
			//cout <= r[8];
			
		end
		NOR: begin
			r[7:0] = ~(a | b);
			r[8] = 0;
			
		end
		NUL: begin
			case (load_shift)
				SHL: begin
					r[7:0] <= a << 1;
					r[8]<=0;
				end
				SHR: begin
					r <= a >> 1;
					
				end
				LD: begin
					r <= a;
					
				end
				RST: begin
					r <= 0;
					
				end
				
				endcase
			end
		default: begin
			r = 0;
			
		end
		endcase

end


endmodule


