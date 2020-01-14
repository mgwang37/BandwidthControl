`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:01:39 10/14/2013 
// Design Name: 
// Module Name:    bandwidth_control_1g 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bandwidth_control_1g(
	input  clock,
	input  tx_enable,
	input  pause_enable,
	input  signed [31:0]v00,
	input  signed [31:0]v01,
	input  signed [31:0]v02,
	input  signed [31:0]v03,
	input  signed [31:0]v04,
	input  signed [31:0]v05,
	input  signed [31:0]v06,
	input  signed [31:0]v07,
	input  signed [31:0]v08,
	input  signed [31:0]v09,
	input  signed [31:0]v10,
	input  signed [31:0]v11,
	input  signed [31:0]v12,
	input  signed [31:0]v13,
	input  signed [31:0]v14,
	input  signed [31:0]v15,
	input  signed [31:0]v16,
	input  signed [31:0]v17,
	input  signed [31:0]v18,
	input  signed [31:0]v19,
	input  signed [31:0]v20,
	input  signed [31:0]v21,
	input  signed [31:0]v22,
	input  signed [31:0]v23,
	input  signed [31:0]v24,
	input  signed [31:0]v25,
	input  signed [31:0]v26,
	input  signed [31:0]v27,
	input  signed [31:0]v28,
	input  signed [31:0]v29,
	input  signed [31:0]v30,
	input  signed [31:0]v31,
	input  signed [31:0]v32,
	input  signed [31:0]v33,
	input  signed [31:0]v34,
	input  signed [31:0]v35,
	input  signed [31:0]v36,
	input  signed [31:0]v37,
	input  signed [31:0]v38,
	input  signed [31:0]v39,
	input  signed [31:0]v40,
	input  signed [31:0]v41,
	input  signed [31:0]v42,
	input  signed [31:0]v43,
	input  signed [31:0]v44,
	input  signed [31:0]v45,
	input  signed [31:0]v46,
	input  signed [31:0]v47,
	input  signed [31:0]v48,
	input  signed [31:0]v49,
	input  signed [31:0]v50,
	input  signed [31:0]v51,
	input  signed [31:0]v52,
	input  signed [31:0]v53,
	input  signed [31:0]v54,
	input  signed [31:0]v55,
	input  signed [31:0]v56,
	input  signed [31:0]v57,
	input  signed [31:0]v58,
	input  signed [31:0]v59,
	input  signed [31:0]v60,
	input  signed [31:0]v61,
	input  signed [31:0]v62,
	input  signed [31:0]v63,
	input  signed [31:0]v64,
	input  [15:0]frame_len01,
	input  [15:0]frame_len02,
	input  [15:0]frame_len03,
	input  [15:0]frame_len04,
	input  [15:0]frame_len05,
	input  [15:0]frame_len06,
	input  [15:0]frame_len07,
	input  [15:0]frame_len08,
	input  [15:0]frame_len09,
	input  [15:0]frame_len10,
	input  [15:0]frame_len11,
	input  [15:0]frame_len12,
	input  [15:0]frame_len13,
	input  [15:0]frame_len14,
	input  [15:0]frame_len15,
	input  [15:0]frame_len16,
	input  [15:0]frame_len17,
	input  [15:0]frame_len18,
	input  [15:0]frame_len19,
	input  [15:0]frame_len20,
	input  [15:0]frame_len21,
	input  [15:0]frame_len22,
	input  [15:0]frame_len23,
	input  [15:0]frame_len24,
	input  [15:0]frame_len25,
	input  [15:0]frame_len26,
	input  [15:0]frame_len27,
	input  [15:0]frame_len28,
	input  [15:0]frame_len29,
	input  [15:0]frame_len30,
	input  [15:0]frame_len31,
	input  [15:0]frame_len32,
	input  [15:0]frame_len33,
	input  [15:0]frame_len34,
	input  [15:0]frame_len35,
	input  [15:0]frame_len36,
	input  [15:0]frame_len37,
	input  [15:0]frame_len38,
	input  [15:0]frame_len39,
	input  [15:0]frame_len40,
	input  [15:0]frame_len41,
	input  [15:0]frame_len42,
	input  [15:0]frame_len43,
	input  [15:0]frame_len44,
	input  [15:0]frame_len45,
	input  [15:0]frame_len46,
	input  [15:0]frame_len47,
	input  [15:0]frame_len48,
	input  [15:0]frame_len49,
	input  [15:0]frame_len50,
	input  [15:0]frame_len51,
	input  [15:0]frame_len52,
	input  [15:0]frame_len53,
	input  [15:0]frame_len54,
	input  [15:0]frame_len55,
	input  [15:0]frame_len56,
	input  [15:0]frame_len57,
	input  [15:0]frame_len58,
	input  [15:0]frame_len59,
	input  [15:0]frame_len60,
	input  [15:0]frame_len61,
	input  [15:0]frame_len62,
	input  [15:0]frame_len63,
	input  [15:0]frame_len64,
	input  [31:0]gap_len,
	output reg [15:0]current_id,
	output reg       valid
	);

	reg [15:0]stream_id;

	// vout_block;
	reg [63:0]vout_init_state;
	reg [15:0]vout_init01;
	reg [15:0]vout_init02;
	reg [15:0]vout_init03;
	reg [15:0]vout_init04;
	reg [15:0]vout_init05;
	reg [15:0]vout_init06;
	reg [15:0]vout_init07;
	reg [15:0]vout_init08;
	reg [15:0]vout_init09;
	reg [15:0]vout_init10;
	reg [15:0]vout_init11;
	reg [15:0]vout_init12;
	reg [15:0]vout_init13;
	reg [15:0]vout_init14;
	reg [15:0]vout_init15;
	reg [15:0]vout_init16;
	reg [15:0]vout_init17;
	reg [15:0]vout_init18;
	reg [15:0]vout_init19;
	reg [15:0]vout_init20;
	reg [15:0]vout_init21;
	reg [15:0]vout_init22;
	reg [15:0]vout_init23;
	reg [15:0]vout_init24;
	reg [15:0]vout_init25;
	reg [15:0]vout_init26;
	reg [15:0]vout_init27;
	reg [15:0]vout_init28;
	reg [15:0]vout_init29;
	reg [15:0]vout_init30;
	reg [15:0]vout_init31;
	reg [15:0]vout_init32;
	reg [15:0]vout_init33;
	reg [15:0]vout_init34;
	reg [15:0]vout_init35;
	reg [15:0]vout_init36;
	reg [15:0]vout_init37;
	reg [15:0]vout_init38;
	reg [15:0]vout_init39;
	reg [15:0]vout_init40;
	reg [15:0]vout_init41;
	reg [15:0]vout_init42;
	reg [15:0]vout_init43;
	reg [15:0]vout_init44;
	reg [15:0]vout_init45;
	reg [15:0]vout_init46;
	reg [15:0]vout_init47;
	reg [15:0]vout_init48;
	reg [15:0]vout_init49;
	reg [15:0]vout_init50;
	reg [15:0]vout_init51;
	reg [15:0]vout_init52;
	reg [15:0]vout_init53;
	reg [15:0]vout_init54;
	reg [15:0]vout_init55;
	reg [15:0]vout_init56;
	reg [15:0]vout_init57;
	reg [15:0]vout_init58;
	reg [15:0]vout_init59;
	reg [15:0]vout_init60;
	reg [15:0]vout_init61;
	reg [15:0]vout_init62;
	reg [15:0]vout_init63;
	reg [15:0]vout_init64;
	reg signed [31:0]vout00;
	reg signed [31:0]vout01;
	reg signed [31:0]vout02;
	reg signed [31:0]vout03;
	reg signed [31:0]vout04;
	reg signed [31:0]vout05;
	reg signed [31:0]vout06;
	reg signed [31:0]vout07;
	reg signed [31:0]vout08;
	reg signed [31:0]vout09;
	reg signed [31:0]vout10;
	reg signed [31:0]vout11;
	reg signed [31:0]vout12;
	reg signed [31:0]vout13;
	reg signed [31:0]vout14;
	reg signed [31:0]vout15;
	reg signed [31:0]vout16;
	reg signed [31:0]vout17;
	reg signed [31:0]vout18;
	reg signed [31:0]vout19;
	reg signed [31:0]vout20;
	reg signed [31:0]vout21;
	reg signed [31:0]vout22;
	reg signed [31:0]vout23;
	reg signed [31:0]vout24;
	reg signed [31:0]vout25;
	reg signed [31:0]vout26;
	reg signed [31:0]vout27;
	reg signed [31:0]vout28;
	reg signed [31:0]vout29;
	reg signed [31:0]vout30;
	reg signed [31:0]vout31;
	reg signed [31:0]vout32;
	reg signed [31:0]vout33;
	reg signed [31:0]vout34;
	reg signed [31:0]vout35;
	reg signed [31:0]vout36;
	reg signed [31:0]vout37;
	reg signed [31:0]vout38;
	reg signed [31:0]vout39;
	reg signed [31:0]vout40;
	reg signed [31:0]vout41;
	reg signed [31:0]vout42;
	reg signed [31:0]vout43;
	reg signed [31:0]vout44;
	reg signed [31:0]vout45;
	reg signed [31:0]vout46;
	reg signed [31:0]vout47;
	reg signed [31:0]vout48;
	reg signed [31:0]vout49;
	reg signed [31:0]vout50;
	reg signed [31:0]vout51;
	reg signed [31:0]vout52;
	reg signed [31:0]vout53;
	reg signed [31:0]vout54;
	reg signed [31:0]vout55;
	reg signed [31:0]vout56;
	reg signed [31:0]vout57;
	reg signed [31:0]vout58;
	reg signed [31:0]vout59;
	reg signed [31:0]vout60;
	reg signed [31:0]vout61;
	reg signed [31:0]vout62;
	reg signed [31:0]vout63;
	reg signed [31:0]vout64;

	always @(posedge clock)begin
		if (tx_enable)begin
			if (pause_enable)begin
			// do nothing
			end else begin
				if (vout_init01 !=0)begin
					vout_init01 <= vout_init01 - 16'h0001;
					vout01 <= vout01 + 1000000;
				end else begin
					vout_init_state[0] <= 1'b1;
				end

				if (vout_init02 !=0)begin
					vout_init02 <= vout_init02 - 16'h0001;
					vout02 <= vout02 + 1000000;
				end else begin
					vout_init_state[1] <= 1'b1;
				end

				if (vout_init03 !=0)begin
					vout_init03 <= vout_init03 - 16'h0001;
					vout03 <= vout03 + 1000000;
				end else begin
					vout_init_state[2] <= 1'b1;
				end

				if (vout_init04 !=0)begin
					vout_init04 <= vout_init04 - 16'h0001;
					vout04 <= vout04 + 1000000;
				end else begin
					vout_init_state[3] <= 1'b1;
				end

				if (vout_init05 !=0)begin
					vout_init05 <= vout_init05 - 16'h0001;
					vout05 <= vout05 + 1000000;
				end else begin
					vout_init_state[4] <= 1'b1;
				end

				if (vout_init06 !=0)begin
					vout_init06 <= vout_init06 - 16'h0001;
					vout06 <= vout06 + 1000000;
				end else begin
					vout_init_state[5] <= 1'b1;
				end

				if (vout_init07 !=0)begin
					vout_init07 <= vout_init07 - 16'h0001;
					vout07 <= vout07 + 1000000;
				end else begin
					vout_init_state[6] <= 1'b1;
				end

				if (vout_init08 !=0)begin
					vout_init08 <= vout_init08 - 16'h0001;
					vout08 <= vout08 + 1000000;
				end else begin
					vout_init_state[7] <= 1'b1;
				end

				if (vout_init09 !=0)begin
					vout_init09 <= vout_init09 - 16'h0001;
					vout09 <= vout09 + 1000000;
				end else begin
					vout_init_state[8] <= 1'b1;
				end

				if (vout_init10 !=0)begin
					vout_init10 <= vout_init10 - 16'h0001;
					vout10 <= vout10 + 1000000;
				end else begin
					vout_init_state[9] <= 1'b1;
				end

				if (vout_init11 !=0)begin
					vout_init11 <= vout_init11 - 16'h0001;
					vout11 <= vout11 + 1000000;
				end else begin
					vout_init_state[10] <= 1'b1;
				end

				if (vout_init12 !=0)begin
					vout_init12 <= vout_init12 - 16'h0001;
					vout12 <= vout12 + 1000000;
				end else begin
					vout_init_state[11] <= 1'b1;
				end

				if (vout_init13 !=0)begin
					vout_init13 <= vout_init13 - 16'h0001;
					vout13 <= vout13 + 1000000;
				end else begin
					vout_init_state[12] <= 1'b1;
				end

				if (vout_init14 !=0)begin
					vout_init14 <= vout_init14 - 16'h0001;
					vout14 <= vout14 + 1000000;
				end else begin
					vout_init_state[13] <= 1'b1;
				end

				if (vout_init15 !=0)begin
					vout_init15 <= vout_init15 - 16'h0001;
					vout15 <= vout15 + 1000000;
				end else begin
					vout_init_state[14] <= 1'b1;
				end

				if (vout_init16 !=0)begin
					vout_init16 <= vout_init16 - 16'h0001;
					vout16 <= vout16 + 1000000;
				end else begin
					vout_init_state[15] <= 1'b1;
				end

				if (vout_init17 !=0)begin
					vout_init17 <= vout_init17 - 16'h0001;
					vout17 <= vout17 + 1000000;
				end else begin
					vout_init_state[16] <= 1'b1;
				end

				if (vout_init18 !=0)begin
					vout_init18 <= vout_init18 - 16'h0001;
					vout18 <= vout18 + 1000000;
				end else begin
					vout_init_state[17] <= 1'b1;
				end

				if (vout_init19 !=0)begin
					vout_init19 <= vout_init19 - 16'h0001;
					vout19 <= vout19 + 1000000;
				end else begin
					vout_init_state[18] <= 1'b1;
				end

				if (vout_init20 !=0)begin
					vout_init20 <= vout_init20 - 16'h0001;
					vout20 <= vout20 + 1000000;
				end else begin
					vout_init_state[19] <= 1'b1;
				end
	
				if (vout_init21 !=0)begin
					vout_init21 <= vout_init21 - 16'h0001;
					vout21 <= vout21 + 1000000;
				end else begin
					vout_init_state[20] <= 1'b1;
				end

				if (vout_init22 !=0)begin
					vout_init22 <= vout_init22 - 16'h0001;
					vout22 <= vout22 + 1000000;
				end else begin
					vout_init_state[21] <= 1'b1;
				end

				if (vout_init23 !=0)begin
					vout_init23 <= vout_init23 - 16'h0001;
					vout23 <= vout23 + 1000000;
				end else begin
					vout_init_state[22] <= 1'b1;
				end

				if (vout_init24 !=0)begin
					vout_init24 <= vout_init24 - 16'h0001;
					vout24 <= vout24 + 1000000;
				end else begin
					vout_init_state[23] <= 1'b1;
				end

				if (vout_init25 !=0)begin
					vout_init25 <= vout_init25 - 16'h0001;
					vout25 <= vout25 + 1000000;
				end else begin
					vout_init_state[24] <= 1'b1;
				end

				if (vout_init26 !=0)begin
					vout_init26 <= vout_init26 - 16'h0001;
					vout26 <= vout26 + 1000000;
				end else begin
					vout_init_state[25] <= 1'b1;
				end

				if (vout_init27 !=0)begin
					vout_init27 <= vout_init27 - 16'h0001;
					vout27 <= vout27 + 1000000;
				end else begin
					vout_init_state[26] <= 1'b1;
				end

				if (vout_init28 !=0)begin
					vout_init28 <= vout_init28 - 16'h0001;
					vout28 <= vout28 + 1000000;
				end else begin
					vout_init_state[27] <= 1'b1;
				end

				if (vout_init29 !=0)begin
					vout_init29 <= vout_init29 - 16'h0001;
					vout29 <= vout29 + 1000000;
				end else begin
					vout_init_state[28] <= 1'b1;
				end

				if (vout_init30 !=0)begin
					vout_init30 <= vout_init30 - 16'h0001;
					vout30 <= vout30 + 1000000;
				end else begin
					vout_init_state[29] <= 1'b1;
				end

				if (vout_init31 !=0)begin
					vout_init31 <= vout_init31 - 16'h0001;
					vout31 <= vout31 + 1000000;
				end else begin
					vout_init_state[30] <= 1'b1;
				end

				if (vout_init32 !=0)begin
					vout_init32 <= vout_init32 - 16'h0001;
					vout32 <= vout32 + 1000000;
				end else begin
					vout_init_state[31] <= 1'b1;
				end

				if (vout_init33 !=0)begin
					vout_init33 <= vout_init33 - 16'h0001;
					vout33 <= vout33 + 1000000;
				end else begin
					vout_init_state[32] <= 1'b1;
				end

				if (vout_init34 !=0)begin
					vout_init34 <= vout_init34 - 16'h0001;
					vout34 <= vout34 + 1000000;
				end else begin
					vout_init_state[33] <= 1'b1;
				end

				if (vout_init35 !=0)begin
					vout_init35 <= vout_init35 - 16'h0001;
					vout35 <= vout35 + 1000000;
				end else begin
					vout_init_state[34] <= 1'b1;
				end

				if (vout_init36 !=0)begin
					vout_init36 <= vout_init36 - 16'h0001;
					vout36 <= vout36 + 1000000;
				end else begin
					vout_init_state[35] <= 1'b1;
				end

				if (vout_init37 !=0)begin
					vout_init37 <= vout_init37 - 16'h0001;
					vout37 <= vout37 + 1000000;
				end else begin
					vout_init_state[36] <= 1'b1;
				end

				if (vout_init38 !=0)begin
					vout_init38 <= vout_init38 - 16'h0001;
					vout38 <= vout38 + 1000000;
				end else begin
					vout_init_state[37] <= 1'b1;
				end

				if (vout_init39 !=0)begin
					vout_init39 <= vout_init39 - 16'h0001;
					vout39 <= vout39 + 1000000;
				end else begin
					vout_init_state[38] <= 1'b1;
				end

				if (vout_init40 !=0)begin
					vout_init40 <= vout_init40 - 16'h0001;
					vout40 <= vout40 + 1000000;
				end else begin
					vout_init_state[39] <= 1'b1;
				end

				if (vout_init41 !=0)begin
					vout_init41 <= vout_init41 - 16'h0001;
					vout41 <= vout41 + 1000000;
				end else begin
					vout_init_state[40] <= 1'b1;
				end

				if (vout_init42 !=0)begin
					vout_init42 <= vout_init42 - 16'h0001;
					vout42 <= vout42 + 1000000;
				end else begin
					vout_init_state[41] <= 1'b1;
				end

				if (vout_init43 !=0)begin
					vout_init43 <= vout_init43 - 16'h0001;
					vout43 <= vout43 + 1000000;
				end else begin
					vout_init_state[42] <= 1'b1;
				end

				if (vout_init44 !=0)begin
					vout_init44 <= vout_init44 - 16'h0001;
					vout44 <= vout44 + 1000000;
				end else begin
					vout_init_state[43] <= 1'b1;
				end

				if (vout_init45 !=0)begin
					vout_init45 <= vout_init45 - 16'h0001;
					vout45 <= vout45 + 1000000;
				end else begin
					vout_init_state[44] <= 1'b1;
				end
	
				if (vout_init46 !=0)begin
					vout_init46 <= vout_init46 - 16'h0001;
					vout46 <= vout46 + 1000000;
				end else begin
					vout_init_state[45] <= 1'b1;
				end

				if (vout_init47 !=0)begin
					vout_init47 <= vout_init47 - 16'h0001;
					vout47 <= vout47 + 1000000;
				end else begin
					vout_init_state[46] <= 1'b1;
				end

				if (vout_init48 !=0)begin
					vout_init48 <= vout_init48 - 16'h0001;
					vout48 <= vout48 + 1000000;
				end else begin
					vout_init_state[47] <= 1'b1;
				end

				if (vout_init49 !=0)begin
					vout_init49 <= vout_init49 - 16'h0001;
					vout49 <= vout49 + 1000000;
				end else begin
					vout_init_state[48] <= 1'b1;
				end

				if (vout_init50 !=0)begin
					vout_init50 <= vout_init50 - 16'h0001;
					vout50 <= vout50 + 1000000;
				end else begin
					vout_init_state[49] <= 1'b1;
				end
	
				if (vout_init51 !=0)begin
					vout_init51 <= vout_init51 - 16'h0001;
					vout51 <= vout51 + 1000000;
				end else begin
					vout_init_state[50] <= 1'b1;
				end
	
				if (vout_init52 !=0)begin
					vout_init52 <= vout_init52 - 16'h0001;
					vout52 <= vout52 + 1000000;
				end else begin
					vout_init_state[51] <= 1'b1;
				end

				if (vout_init53 !=0)begin
					vout_init53 <= vout_init53 - 16'h0001;
					vout53 <= vout53 + 1000000;
				end else begin
					vout_init_state[52] <= 1'b1;
				end

				if (vout_init54 !=0)begin
					vout_init54 <= vout_init54 - 16'h0001;
					vout54 <= vout54 + 1000000;
				end else begin
					vout_init_state[53] <= 1'b1;
				end

				if (vout_init55 !=0)begin
					vout_init55 <= vout_init55 - 16'h0001;
					vout55 <= vout55 + 1000000;
				end else begin
					vout_init_state[54] <= 1'b1;
				end

				if (vout_init56 !=0)begin
					vout_init56 <= vout_init56 - 16'h0001;
					vout56 <= vout56 + 1000000;
				end else begin
					vout_init_state[55] <= 1'b1;
				end

				if (vout_init57 !=0)begin
					vout_init57 <= vout_init57 - 16'h0001;
					vout57 <= vout57 + 1000000;
				end else begin
					vout_init_state[56] <= 1'b1;
				end

				if (vout_init58 !=0)begin
					vout_init58 <= vout_init58 - 16'h0001;
					vout58 <= vout58 + 1000000;
				end else begin
					vout_init_state[57] <= 1'b1;
				end

				if (vout_init59 !=0)begin
					vout_init59 <= vout_init59 - 16'h0001;
					vout59 <= vout59 + 1000000;
				end else begin
					vout_init_state[58] <= 1'b1;
				end

				if (vout_init60 !=0)begin
					vout_init60 <= vout_init60 - 16'h0001;
					vout60 <= vout60 + 1000000;
				end else begin
					vout_init_state[59] <= 1'b1;
				end

				if (vout_init61 !=0)begin
					vout_init61 <= vout_init61 - 16'h0001;
					vout61 <= vout61 + 1000000;
				end else begin
					vout_init_state[60] <= 1'b1;
				end

				if (vout_init62 !=0)begin
					vout_init62 <= vout_init62 - 16'h0001;
					vout62 <= vout62 + 1000000;
				end else begin
					vout_init_state[61] <= 1'b1;
				end

				if (vout_init63 !=0)begin
					vout_init63 <= vout_init63 - 16'h0001;
					vout63 <= vout63 + 1000000;
				end else begin
					vout_init_state[62] <= 1'b1;
				end

				if (vout_init64 !=0)begin
					vout_init64 <= vout_init64 - 16'h0001;
					vout64 <= vout64 + 1000000;
				end else begin
					vout_init_state[63] <= 1'b1;
				end

			end
		end else begin
			vout_init_state <=64'h0000000000000000;
			vout_init01 <= frame_len01;
			vout_init02 <= frame_len02;
			vout_init03 <= frame_len03;
			vout_init04 <= frame_len04;
			vout_init05 <= frame_len05;
			vout_init06 <= frame_len06;
			vout_init07 <= frame_len07;
			vout_init08 <= frame_len08;
			vout_init09 <= frame_len09;
			vout_init10 <= frame_len10;
			vout_init11 <= frame_len11;
			vout_init12 <= frame_len12;
			vout_init13 <= frame_len13;
			vout_init14 <= frame_len14;
			vout_init15 <= frame_len15;
			vout_init16 <= frame_len16;
			vout_init17 <= frame_len17;
			vout_init18 <= frame_len18;
			vout_init19 <= frame_len19;
			vout_init20 <= frame_len20;
			vout_init21 <= frame_len21;
			vout_init22 <= frame_len22;
			vout_init23 <= frame_len23;
			vout_init24 <= frame_len24;
			vout_init25 <= frame_len25;
			vout_init26 <= frame_len26;
			vout_init27 <= frame_len27;
			vout_init28 <= frame_len28;
			vout_init29 <= frame_len29;
			vout_init30 <= frame_len30;
			vout_init31 <= frame_len31;
			vout_init32 <= frame_len32;
			vout_init33 <= frame_len33;
			vout_init34 <= frame_len34;
			vout_init35 <= frame_len35;
			vout_init36 <= frame_len36;
			vout_init37 <= frame_len37;
			vout_init38 <= frame_len38;
			vout_init39 <= frame_len39;
			vout_init40 <= frame_len40;
			vout_init41 <= frame_len41;
			vout_init42 <= frame_len42;
			vout_init43 <= frame_len43;
			vout_init44 <= frame_len44;
			vout_init45 <= frame_len45;
			vout_init46 <= frame_len46;
			vout_init47 <= frame_len47;
			vout_init48 <= frame_len48;
			vout_init49 <= frame_len49;
			vout_init50 <= frame_len50;
			vout_init51 <= frame_len51;
			vout_init52 <= frame_len52;
			vout_init53 <= frame_len53;
			vout_init54 <= frame_len54;
			vout_init55 <= frame_len55;
			vout_init56 <= frame_len56;
			vout_init57 <= frame_len57;
			vout_init58 <= frame_len58;
			vout_init59 <= frame_len59;
			vout_init60 <= frame_len60;
			vout_init61 <= frame_len61;
			vout_init62 <= frame_len62;
			vout_init63 <= frame_len63;
			vout_init64 <= frame_len64;
			vout01 <= 0;
			vout02 <= 0;
			vout03 <= 0;
			vout04 <= 0;
			vout05 <= 0;
			vout06 <= 0;
			vout07 <= 0;
			vout08 <= 0;
			vout09 <= 0;
			vout10 <= 0;
			vout11 <= 0;
			vout12 <= 0;
			vout13 <= 0;
			vout14 <= 0;
			vout15 <= 0;
			vout16 <= 0;
			vout17 <= 0;
			vout18 <= 0;
			vout19 <= 0;
			vout20 <= 0;
			vout21 <= 0;
			vout22 <= 0;
			vout23 <= 0;
			vout24 <= 0;
			vout25 <= 0;
			vout26 <= 0;
			vout27 <= 0;
			vout28 <= 0;
			vout29 <= 0;
			vout30 <= 0;
			vout31 <= 0;
			vout32 <= 0;
			vout33 <= 0;
			vout34 <= 0;
			vout35 <= 0;
			vout36 <= 0;
			vout37 <= 0;
			vout38 <= 0;
			vout39 <= 0;
			vout40 <= 0;
			vout41 <= 0;
			vout42 <= 0;
			vout43 <= 0;
			vout44 <= 0;
			vout45 <= 0;
			vout46 <= 0;
			vout47 <= 0;
			vout48 <= 0;
			vout49 <= 0;
			vout50 <= 0;
			vout51 <= 0;
			vout52 <= 0;
			vout53 <= 0;
			vout54 <= 0;
			vout55 <= 0;
			vout56 <= 0;
			vout57 <= 0;
			vout58 <= 0;
			vout59 <= 0;
			vout60 <= 0;
			vout61 <= 0;
			vout62 <= 0;
			vout63 <= 0;
			vout64 <= 0;
		end
	end 

	// integral
	reg  signed [31:0]s00;
	reg  signed [31:0]s01;
	reg  signed [31:0]s02;
	reg  signed [31:0]s03;
	reg  signed [31:0]s04;
	reg  signed [31:0]s05;
	reg  signed [31:0]s06;
	reg  signed [31:0]s07;
	reg  signed [31:0]s08;
	reg  signed [31:0]s09;
	reg  signed [31:0]s10;
	reg  signed [31:0]s11;
	reg  signed [31:0]s12;
	reg  signed [31:0]s13;
	reg  signed [31:0]s14;
	reg  signed [31:0]s15;
	reg  signed [31:0]s16;
	reg  signed [31:0]s17;
	reg  signed [31:0]s18;
	reg  signed [31:0]s19;
	reg  signed [31:0]s20;
	reg  signed [31:0]s21;
	reg  signed [31:0]s22;
	reg  signed [31:0]s23;
	reg  signed [31:0]s24;
	reg  signed [31:0]s25;
	reg  signed [31:0]s26;
	reg  signed [31:0]s27;
	reg  signed [31:0]s28;
	reg  signed [31:0]s29;
	reg  signed [31:0]s30;
	reg  signed [31:0]s31;
	reg  signed [31:0]s32;
	reg  signed [31:0]s33;
	reg  signed [31:0]s34;
	reg  signed [31:0]s35;
	reg  signed [31:0]s36;
	reg  signed [31:0]s37;
	reg  signed [31:0]s38;
	reg  signed [31:0]s39;
	reg  signed [31:0]s40;
	reg  signed [31:0]s41;
	reg  signed [31:0]s42;
	reg  signed [31:0]s43;
	reg  signed [31:0]s44;
	reg  signed [31:0]s45;
	reg  signed [31:0]s46;
	reg  signed [31:0]s47;
	reg  signed [31:0]s48;
	reg  signed [31:0]s49;
	reg  signed [31:0]s50;
	reg  signed [31:0]s51;
	reg  signed [31:0]s52;
	reg  signed [31:0]s53;
	reg  signed [31:0]s54;
	reg  signed [31:0]s55;
	reg  signed [31:0]s56;
	reg  signed [31:0]s57;
	reg  signed [31:0]s58;
	reg  signed [31:0]s59;
	reg  signed [31:0]s60;
	reg  signed [31:0]s61;
	reg  signed [31:0]s62;
	reg  signed [31:0]s63;
	reg  signed [31:0]s64;
	reg  signed [15:0]p_add_stream_id;

	wire gap_adjust_enable;
	assign gap_adjust_enable = (s00 >= 1000000) ? 1'b1:1'b0;

	always @(posedge clock)begin

		if (tx_enable)begin
			if (pause_enable)begin
				// do nothing
			end else begin
				if (p_add_stream_id == 0)begin
						s00 <= s00 + v00 + vout00;
				end else if (p_add_stream_id == 66)begin
				end else begin
						s00 <= s00 + v00 + vout00;
				end

				if (p_add_stream_id == 1)begin
					s01 <= s01 + v01 - vout01;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s01 <= s01 + v01;
				end

				if (p_add_stream_id == 2)begin
					s02 <= s02 + v02 - vout02;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s02 <= s02 + v02;
				end

				if (p_add_stream_id == 3)begin
					s03 <= s03 + v03 - vout03;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s03 <= s03 + v03;
				end

				if (p_add_stream_id == 4)begin
					s04 <= s04 + v04 - vout04;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s04 <= s04 + v04;
				end

				if (p_add_stream_id == 5)begin
					s05 <= s05 + v05 - vout05;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s05 <= s05 + v05;
				end

				if (p_add_stream_id == 6)begin
					s06 <= s06 + v06 - vout06;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s06 <= s06 + v06;
				end

				if (p_add_stream_id == 7)begin
					s07 <= s07 + v07 - vout07;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s07 <= s07 + v07;
				end

				if (p_add_stream_id == 8)begin
					s08 <= s08 + v08 - vout08;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s08 <= s08 + v08;
				end

				if (p_add_stream_id == 9)begin
					s09 <= s09 + v09 - vout09;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s09 <= s09 + v09;
				end

				if (p_add_stream_id == 10)begin
					s10 <= s10 + v10 - vout10;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s10 <= s10 + v10;
				end

				if (p_add_stream_id == 11)begin
					s11 <= s11 + v11 - vout11;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s11 <= s11 + v11;
				end

				if (p_add_stream_id == 12)begin
					s12 <= s12 + v12 - vout12;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s12 <= s12 + v12;
				end

				if (p_add_stream_id == 13)begin
					s13 <= s13 + v13 - vout13;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s13 <= s13 + v13;
				end

				if (p_add_stream_id == 14)begin
					s14 <= s14 + v14 - vout14;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s14 <= s14 + v14;
				end

				if (p_add_stream_id == 15)begin
					s15 <= s15 + v15 - vout15;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s15 <= s15 + v15;
				end

				if (p_add_stream_id == 16)begin
					s16 <= s16 + v16 - vout16;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s16 <= s16 + v16;
				end

				if (p_add_stream_id == 17)begin
					s17 <= s17 + v17 - vout17;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s17 <= s17 + v17;
				end

				if (p_add_stream_id == 18)begin
					s18 <= s18 + v18 - vout18;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s18 <= s18 + v18;
				end

				if (p_add_stream_id == 19)begin
					s19 <= s19 + v19 - vout19;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s19 <= s19 + v19;
				end

				if (p_add_stream_id == 20)begin
					s20 <= s20 + v20 - vout20;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s20 <= s20 + v20;
				end

				if (p_add_stream_id == 21)begin
					s21 <= s21 + v21 - vout21;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s21 <= s21 + v21;
				end

				if (p_add_stream_id == 22)begin
					s22 <= s22 + v22 - vout22;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s22 <= s22 + v22;
				end

				if (p_add_stream_id == 23)begin
					s23 <= s23 + v23 - vout23;
				end else if (p_add_stream_id == 66)begin
				end else begin
				s23 <= s23 + v23;
				end

				if (p_add_stream_id == 24)begin
					s24 <= s24 + v24 - vout24;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s24 <= s24 + v24;
				end

				if (p_add_stream_id == 25)begin
					s25 <= s25 + v25 - vout25;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s25 <= s25 + v25;
				end

				if (p_add_stream_id == 26)begin
					s26 <= s26 + v26 - vout26;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s26 <= s26 + v26;
				end

				if (p_add_stream_id == 27)begin
					s27 <= s27 + v27 - vout27;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s27 <= s27 + v27;
				end

				if (p_add_stream_id == 28)begin
					s28 <= s28 + v28 - vout28;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s28 <= s28 + v28;
				end

				if (p_add_stream_id == 29)begin
					s29 <= s29 + v29 - vout29;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s29 <= s29 + v29;
				end

				if (p_add_stream_id == 30)begin
					s30 <= s30 + v30 - vout30;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s30 <= s30 + v30;
				end

				if (p_add_stream_id == 31)begin
					s31 <= s31 + v31 - vout31;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s31 <= s31 + v31;
				end

				if (p_add_stream_id == 32)begin
					s32 <= s32 + v32 - vout32;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s32 <= s32 + v32;
				end

				if (p_add_stream_id == 33)begin
					s33 <= s33 + v33 - vout33;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s33 <= s33 + v33;
				end

				if (p_add_stream_id == 34)begin
					s34 <= s34 + v34 - vout34;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s34 <= s34 + v34;
				end

				if (p_add_stream_id == 35)begin
					s35 <= s35 + v35 - vout35;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s35 <= s35 + v35;
				end

				if (p_add_stream_id == 36)begin
					s36 <= s36 + v36 - vout36;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s36 <= s36 + v36;
				end

				if (p_add_stream_id == 37)begin
					s37 <= s37 + v37 - vout37;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s37 <= s37 + v37;
				end

				if (p_add_stream_id == 38)begin
					s38 <= s38 + v38 - vout38;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s38 <= s38 + v38;
				end

				if (p_add_stream_id == 39)begin
					s39 <= s39 + v39 - vout39;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s39 <= s39 + v39;
				end

				if (p_add_stream_id == 40)begin
					s40 <= s40 + v40 - vout40;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s40 <= s40 + v40;
				end

				if (p_add_stream_id == 41)begin
					s41 <= s41 + v41 - vout41;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s41 <= s41 + v41;
				end

				if (p_add_stream_id == 42)begin
					s42 <= s42 + v42 - vout42;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s42 <= s42 + v42;
				end

				if (p_add_stream_id == 43)begin
					s43 <= s43 + v43 - vout43;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s43 <= s43 + v43;
				end

				if (p_add_stream_id == 44)begin
					s44 <= s44 + v44 - vout44;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s44 <= s44 + v44;
				end

				if (p_add_stream_id == 45)begin
					s45 <= s45 + v45 - vout45;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s45 <= s45 + v45;
				end

				if (p_add_stream_id == 46)begin
					s46 <= s46 + v46 - vout46;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s46 <= s46 + v46;
				end

				if (p_add_stream_id == 47)begin
					s47 <= s47 + v47 - vout47;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s47 <= s47 + v47;
				end

				if (p_add_stream_id == 48)begin
					s48 <= s48 + v48 - vout48;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s48 <= s48 + v48;
				end

				if (p_add_stream_id == 49)begin
					s49 <= s49 + v49 - vout49;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s49 <= s49 + v49;
				end

				if (p_add_stream_id == 50)begin
					s50 <= s50 + v50 - vout50;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s50 <= s50 + v50;
				end

				if (p_add_stream_id == 51)begin
					s51 <= s51 + v51 - vout51;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s51 <= s51 + v51;
				end

				if (p_add_stream_id == 52)begin
					s52 <= s52 + v52 - vout52;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s52 <= s52 + v52;
				end

				if (p_add_stream_id == 53)begin
					s53 <= s53 + v53 - vout53;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s53 <= s53 + v53;
				end

				if (p_add_stream_id == 54)begin
					s54 <= s54 + v54 - vout54;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s54 <= s54 + v54;
				end

				if (p_add_stream_id == 55)begin
					s55 <= s55 + v55 - vout55;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s55 <= s55 + v55;
				end

				if (p_add_stream_id == 56)begin
					s56 <= s56 + v56 - vout56;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s56 <= s56 + v56;
				end

				if (p_add_stream_id == 57)begin
					s57 <= s57 + v57 - vout57;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s57 <= s57 + v57;
				end

				if (p_add_stream_id == 58)begin
					s58 <= s58 + v58 - vout58;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s58 <= s58 + v58;
				end

				if (p_add_stream_id == 59)begin
					s59 <= s59 + v59 - vout59;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s59 <= s59 + v59;
				end

				if (p_add_stream_id == 60)begin
					s60 <= s60 + v60 - vout60;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s60 <= s60 + v60;
				end

				if (p_add_stream_id == 61)begin
					s61 <= s61 + v61 - vout61;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s61 <= s61 + v61;
				end

				if (p_add_stream_id == 62)begin
					s62 <= s62 + v62 - vout62;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s62 <= s62 + v62;
				end

				if (p_add_stream_id == 63)begin
					s63 <= s63 + v63 - vout63;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s63 <= s63 + v63;
				end

				if (p_add_stream_id == 64)begin
					s64 <= s64 + v64 - vout64;
				end else if (p_add_stream_id == 66)begin
				end else begin
					s64 <= s64 + v64;
				end

			end
		end else begin
			s00  <= 0;

			if (v01 > 0)
				s01  <= v01;
			else
				s01  <= 32'h80000000;

			if (v02 > 0)
				s02  <= v02;
			else
				s02  <= 32'h80000000;

			if (v03 > 0)
				s03  <= v03;
			else
				s03  <= 32'h80000000;

			if (v04 > 0)
				s04  <= v04;
			else
				s04  <= 32'h80000000;
			
			if (v05 > 0)
				s05  <= v05;
			else
				s05  <= 32'h80000000;
			
			if (v06 > 0)
				s06  <= v06;
			else
				s06  <= 32'h80000000;
			
			if (v07 > 0)
				s07  <= v07;
			else
				s07  <= 32'h80000000;

			if (v08 > 0)
				s08  <= v08;
			else
				s08  <= 32'h80000000;

			if (v09 > 0)
				s09  <= v09;
			else
				s09  <= 32'h80000000;

			if (v10 > 0)
				s10 <= v10;
			else
				s10 <= 32'h80000000;

			if (v11 > 0)
				s11 <= v11;
			else
				s11 <= 32'h80000000;

			if (v12 > 0)
				s12 <= v12;
			else
				s12 <= 32'h80000000;

			if (v13 > 0)
				s13 <= v13;
			else
				s13 <= 32'h80000000;

			if (v14 > 0)
				s14 <= v14;
			else
				s14 <= 32'h80000000;

			if (v15 > 0)
				s15 <= v15;
			else
				s15 <= 32'h80000000;

			if (v16 > 0)
				s16 <= v16;
			else
				s16 <= 32'h80000000;

			if (v17 > 0)
				s17 <= v17;
			else
				s17 <= 32'h80000000;

			if (v18 > 0)
				s18 <= v18;
			else
				s18 <= 32'h80000000;

			if (v19 > 0)
				s19 <= v19;
			else
				s19 <= 32'h80000000;

			if (v20 > 0)
				s20 <= v20;
			else
				s20 <= 32'h80000000;

			if (v21 > 0)
				s21 <= v21;
			else
				s21 <= 32'h80000000;

			if (v22 > 0)
				s22 <= v22;
			else
				s22 <= 32'h80000000;

			if (v23 > 0)
				s23 <= v23;
			else
				s23 <= 32'h80000000;

			if (v24 > 0)
				s24 <= v24;
			else
				s24 <= 32'h80000000;

			if (v25 > 0)
				s25 <= v25;
			else
				s25 <= 32'h80000000;

			if (v26 > 0)
				s26 <= v26;
			else
				s26 <= 32'h80000000;

			if (v27 > 0)
				s27 <= v27;
			else
				s27 <= 32'h80000000;

			if (v28 > 0)
				s28 <= v28;
			else
				s28 <= 32'h80000000;

			if (v29 > 0)
				s29 <= v29;
			else
				s29 <= 32'h80000000;

			if (v30 > 0)
				s30 <= v30;
			else
				s30 <= 32'h80000000;

			if (v31 > 0)
				s31 <= v31;
			else
				s31 <= 32'h80000000;

			if (v32 > 0)
				s32 <= v32;
			else
				s32 <= 32'h80000000;

			if (v33 > 0)
				s33 <= v33;
			else
				s33 <= 32'h80000000;

			if (v34 > 0)
				s34 <= v34;
			else
				s34 <= 32'h80000000;

			if (v35 > 0)
				s35 <= v35;
			else
				s35 <= 32'h80000000;

			if (v36 > 0)
				s36 <= v36;
			else
				s36 <= 32'h80000000;

			if (v37 > 0)
				s37 <= v37;
			else
				s37 <= 32'h80000000;

			if (v38 > 0)
				s38 <= v38;
			else
				s38 <= 32'h80000000;

			if (v39 > 0)
				s39 <= v39;
			else
				s39 <= 32'h80000000;

			if (v40 > 0)
				s40 <= v40;
			else
				s40 <= 32'h80000000;

			if (v41 > 0)
				s41 <= v41;
			else
				s41 <= 32'h80000000;

			if (v42 > 0)
				s42 <= v42;
			else
				s42 <= 32'h80000000;

			if (v43 > 0)
				s43 <= v43;
			else
				s43 <= 32'h80000000;

			if (v44 > 0)
				s44 <= v44;
			else
				s44 <= 32'h80000000;

			if (v45 > 0)
				s45 <= v45;
			else
				s45 <= 32'h80000000;

			if (v46 > 0)
				s46 <= v46;
			else
				s46 <= 32'h80000000;

			if (v47 > 0)
				s47 <= v47;
			else
				s47 <= 32'h80000000;

			if (v48 > 0)
				s48 <= v48;
			else
				s48 <= 32'h80000000;

			if (v49 > 0)
				s49 <= v49;
			else
				s49 <= 32'h80000000;

			if (v50 > 0)
				s50 <= v50;
			else
				s50 <= 32'h80000000;

			if (v51 > 0)
				s51 <= v51;
			else
				s51 <= 32'h80000000;

			if (v52 > 0)
				s52 <= v52;
			else
				s52 <= 32'h80000000;

			if (v53 > 0)
				s53 <= v53;
			else
				s53 <= 32'h80000000;

			if (v54 > 0)
				s54 <= v54;
			else
				s54 <= 32'h80000000;

			if (v55 > 0)
				s55 <= v55;
			else
				s55 <= 32'h80000000;

			if (v56 > 0)
				s56 <= v56;
			else
				s56 <= 32'h80000000;

			if (v57 > 0)
				s57 <= v57;
			else
				s57 <= 32'h80000000;

			if (v58 > 0)
				s58 <= v58;
			else
				s58 <= 32'h80000000;

			if (v59 > 0)
				s59 <= v59;
			else
				s59 <= 32'h80000000;

			if (v60 > 0)
				s60 <= v60;
			else
				s60 <= 32'h80000000;

			if (v61 > 0)
				s61 <= v61;
			else
				s61 <= 32'h80000000;

			if (v62 > 0)
				s62 <= v62;
			else
				s62 <= 32'h80000000;

			if (v63 > 0)
				s63 <= v63;
			else
				s63 <= 32'h80000000;

			if (v64 > 0)
				s64 <= v64;
			else
				s64 <= 32'h80000000;

		end
	end

	//get stream id
	reg signed [31:0]max_s_01_02;
	reg signed [31:0]max_s_03_04;
	reg signed [31:0]max_s_05_06;
	reg signed [31:0]max_s_07_08;
	reg signed [31:0]max_s_09_10;
	reg signed [31:0]max_s_11_12;
	reg signed [31:0]max_s_13_14;
	reg signed [31:0]max_s_15_16;
	reg signed [31:0]max_s_17_18;
	reg signed [31:0]max_s_19_20;
	reg signed [31:0]max_s_21_22;
	reg signed [31:0]max_s_23_24;
	reg signed [31:0]max_s_25_26;
	reg signed [31:0]max_s_27_28;
	reg signed [31:0]max_s_29_30;
	reg signed [31:0]max_s_31_32;
	reg signed [31:0]max_s_33_34;
	reg signed [31:0]max_s_35_36;
	reg signed [31:0]max_s_37_38;
	reg signed [31:0]max_s_39_40;
	reg signed [31:0]max_s_41_42;
	reg signed [31:0]max_s_43_44;
	reg signed [31:0]max_s_45_46;
	reg signed [31:0]max_s_47_48;
	reg signed [31:0]max_s_49_50;
	reg signed [31:0]max_s_51_52;
	reg signed [31:0]max_s_53_54;
	reg signed [31:0]max_s_55_56;
	reg signed [31:0]max_s_57_58;
	reg signed [31:0]max_s_59_60;
	reg signed [31:0]max_s_61_62;
	reg signed [31:0]max_s_63_64;

	reg signed [31:0]max_s_01_04;
	reg signed [31:0]max_s_05_08;
	reg signed [31:0]max_s_09_12;
	reg signed [31:0]max_s_13_16;
	reg signed [31:0]max_s_17_20;
	reg signed [31:0]max_s_21_24;
	reg signed [31:0]max_s_25_28;
	reg signed [31:0]max_s_29_32;
	reg signed [31:0]max_s_33_36;
	reg signed [31:0]max_s_37_40;
	reg signed [31:0]max_s_41_44;
	reg signed [31:0]max_s_45_48;
	reg signed [31:0]max_s_49_52;
	reg signed [31:0]max_s_53_56;
	reg signed [31:0]max_s_57_60;
	reg signed [31:0]max_s_61_64;

	reg signed [31:0]max_s_01_08;
	reg signed [31:0]max_s_09_16;
	reg signed [31:0]max_s_17_24;
	reg signed [31:0]max_s_25_32;
	reg signed [31:0]max_s_33_40;
	reg signed [31:0]max_s_41_48;
	reg signed [31:0]max_s_49_56;
	reg signed [31:0]max_s_57_64;

	reg signed [31:0]max_s_01_16;
	reg signed [31:0]max_s_17_32;
	reg signed [31:0]max_s_33_48;
	reg signed [31:0]max_s_49_64;

	reg signed [31:0]max_s_01_32;
	reg signed [31:0]max_s_33_64;

	reg [15:0]max_len_01_02;
	reg [15:0]max_len_03_04;
	reg [15:0]max_len_05_06;
	reg [15:0]max_len_07_08;
	reg [15:0]max_len_09_10;
	reg [15:0]max_len_11_12;
	reg [15:0]max_len_13_14;
	reg [15:0]max_len_15_16;
	reg [15:0]max_len_17_18;
	reg [15:0]max_len_19_20;
	reg [15:0]max_len_21_22;
	reg [15:0]max_len_23_24;
	reg [15:0]max_len_25_26;
	reg [15:0]max_len_27_28;
	reg [15:0]max_len_29_30;
	reg [15:0]max_len_31_32;
	reg [15:0]max_len_33_34;
	reg [15:0]max_len_35_36;
	reg [15:0]max_len_37_38;
	reg [15:0]max_len_39_40;
	reg [15:0]max_len_41_42;
	reg [15:0]max_len_43_44;
	reg [15:0]max_len_45_46;
	reg [15:0]max_len_47_48;
	reg [15:0]max_len_49_50;
	reg [15:0]max_len_51_52;
	reg [15:0]max_len_53_54;
	reg [15:0]max_len_55_56;
	reg [15:0]max_len_57_58;
	reg [15:0]max_len_59_60;
	reg [15:0]max_len_61_62;
	reg [15:0]max_len_63_64;

	reg [15:0]max_len_01_04;
	reg [15:0]max_len_05_08;
	reg [15:0]max_len_09_12;
	reg [15:0]max_len_13_16;
	reg [15:0]max_len_17_20;
	reg [15:0]max_len_21_24;
	reg [15:0]max_len_25_28;
	reg [15:0]max_len_29_32;
	reg [15:0]max_len_33_36;
	reg [15:0]max_len_37_40;
	reg [15:0]max_len_41_44;
	reg [15:0]max_len_45_48;
	reg [15:0]max_len_49_52;
	reg [15:0]max_len_53_56;
	reg [15:0]max_len_57_60;
	reg [15:0]max_len_61_64;

	reg [15:0]max_len_01_08;
	reg [15:0]max_len_09_16;
	reg [15:0]max_len_17_24;
	reg [15:0]max_len_25_32;
	reg [15:0]max_len_33_40;
	reg [15:0]max_len_41_48;
	reg [15:0]max_len_49_56;
	reg [15:0]max_len_57_64;

	reg [15:0]max_len_01_16;
	reg [15:0]max_len_17_32;
	reg [15:0]max_len_33_48;
	reg [15:0]max_len_49_64;

	reg [15:0]max_len_01_32;
	reg [15:0]max_len_33_64;

	reg [15:0]max_id_01_02;
	reg [15:0]max_id_03_04;
	reg [15:0]max_id_05_06;
	reg [15:0]max_id_07_08;
	reg [15:0]max_id_09_10;
	reg [15:0]max_id_11_12;
	reg [15:0]max_id_13_14;
	reg [15:0]max_id_15_16;
	reg [15:0]max_id_17_18;
	reg [15:0]max_id_19_20;
	reg [15:0]max_id_21_22;
	reg [15:0]max_id_23_24;
	reg [15:0]max_id_25_26;
	reg [15:0]max_id_27_28;
	reg [15:0]max_id_29_30;
	reg [15:0]max_id_31_32;
	reg [15:0]max_id_33_34;
	reg [15:0]max_id_35_36;
	reg [15:0]max_id_37_38;
	reg [15:0]max_id_39_40;
	reg [15:0]max_id_41_42;
	reg [15:0]max_id_43_44;
	reg [15:0]max_id_45_46;
	reg [15:0]max_id_47_48;
	reg [15:0]max_id_49_50;
	reg [15:0]max_id_51_52;
	reg [15:0]max_id_53_54;
	reg [15:0]max_id_55_56;
	reg [15:0]max_id_57_58;
	reg [15:0]max_id_59_60;
	reg [15:0]max_id_61_62;
	reg [15:0]max_id_63_64;

	reg [15:0]max_id_01_04;
	reg [15:0]max_id_05_08;
	reg [15:0]max_id_09_12;
	reg [15:0]max_id_13_16;
	reg [15:0]max_id_17_20;
	reg [15:0]max_id_21_24;
	reg [15:0]max_id_25_28;
	reg [15:0]max_id_29_32;
	reg [15:0]max_id_33_36;
	reg [15:0]max_id_37_40;
	reg [15:0]max_id_41_44;
	reg [15:0]max_id_45_48;
	reg [15:0]max_id_49_52;
	reg [15:0]max_id_53_56;
	reg [15:0]max_id_57_60;
	reg [15:0]max_id_61_64;

	reg [15:0]max_id_01_08;
	reg [15:0]max_id_09_16;
	reg [15:0]max_id_17_24;
	reg [15:0]max_id_25_32;
	reg [15:0]max_id_33_40;
	reg [15:0]max_id_41_48;
	reg [15:0]max_id_49_56;
	reg [15:0]max_id_57_64;

	reg [15:0]max_id_01_16;
	reg [15:0]max_id_17_32;
	reg [15:0]max_id_33_48;
	reg [15:0]max_id_49_64;

	reg [15:0]max_id_01_32;
	reg [15:0]max_id_33_64;


	reg [31:0]max_frame_len;


	reg [31:0]get_max_step;
	reg get_max_add_enable;

	always @(posedge clock)begin
		if (pause_enable)begin
			//do nothing
		end else begin
			if (!get_max_add_enable)begin
				get_max_step <= 6;

			end else begin
				if (s01 >= s02)begin
					max_s_01_02   <= s01;
					max_len_01_02 <= frame_len01;
					max_id_01_02  <= 1;
				end else begin
					max_s_01_02   <= s02;
					max_len_01_02 <= frame_len02;
					max_id_01_02  <= 2;
				end

				if (s03 >= s04)begin
					max_s_03_04   <= s03;
					max_len_03_04 <= frame_len03;
					max_id_03_04  <= 3;
				end else begin
					max_s_03_04   <= s04;
					max_len_03_04 <= frame_len04;
					max_id_03_04  <= 4;
				end

				if (s05 >= s06)begin
					max_s_05_06   <= s05;
					max_len_05_06 <= frame_len05;
					max_id_05_06  <= 5;
				end else begin
					max_s_05_06   <= s06;
					max_len_05_06 <= frame_len06;
					max_id_05_06  <= 6;
				end

				if (s07 >= s08)begin
					max_s_07_08   <= s07;
					max_len_07_08 <= frame_len07;
					max_id_07_08  <= 7;
				end else begin
					max_s_07_08   <= s08;
					max_len_07_08 <= frame_len08;
					max_id_07_08  <= 8;
				end

				if (s09 >= s10)begin
					max_s_09_10   <= s09;
					max_len_09_10 <= frame_len09;
					max_id_09_10  <= 9;
				end else begin
					max_s_09_10   <= s10;
					max_len_09_10 <= frame_len10;
					max_id_09_10  <= 10;
				end

				if (s11 >= s12)begin
					max_s_11_12   <= s11;
					max_len_11_12 <= frame_len11;
					max_id_11_12  <= 11;
				end else begin
					max_s_11_12   <= s12;
					max_len_11_12 <= frame_len12;
					max_id_11_12  <= 12;
				end

				if (s13 >= s14)begin
					max_s_13_14   <= s13;
					max_len_13_14 <= frame_len13;
					max_id_13_14  <= 13;
				end else begin
					max_s_13_14   <= s14;
					max_len_13_14 <= frame_len14;
					max_id_13_14  <= 14;
				end

				if (s15 >= s16)begin
					max_s_15_16   <= s15;
					max_len_15_16 <= frame_len15;
					max_id_15_16  <= 15;
				end else begin
					max_s_15_16   <= s16;
					max_len_15_16 <= frame_len16;
					max_id_15_16  <= 16;
				end

				if (s17 >= s18)begin
					max_s_17_18   <= s17;
					max_len_17_18 <= frame_len17;
					max_id_17_18  <= 17;
				end else begin
					max_s_17_18   <= s18;
					max_len_17_18 <= frame_len18;
					max_id_17_18  <= 18;
				end

				if (s19 >= s20)begin
					max_s_19_20   <= s19;
					max_len_19_20 <= frame_len19;
					max_id_19_20  <= 19;
				end else begin
					max_s_19_20   <= s20;
					max_len_19_20 <= frame_len20;
					max_id_19_20  <= 20;
				end

				if (s21 >= s22)begin
					max_s_21_22   <= s21;
					max_len_21_22 <= frame_len21;
					max_id_21_22  <= 21;
				end else begin
					max_s_21_22   <= s22;
					max_len_21_22 <= frame_len22;
					max_id_21_22  <= 22;
				end

				if (s23 >= s24)begin
					max_s_23_24   <= s23;
					max_len_23_24 <= frame_len23;
					max_id_23_24  <= 23;
				end else begin
					max_s_23_24   <= s24;
					max_len_23_24 <= frame_len24;
					max_id_23_24  <= 24;
				end

				if (s25 >= s26)begin
					max_s_25_26   <= s25;
					max_len_25_26 <= frame_len25;
					max_id_25_26  <= 25;
				end else begin
					max_s_25_26   <= s26;
					max_len_25_26 <= frame_len26;
					max_id_25_26  <= 26;
				end

				if (s27 >= s28)begin
					max_s_27_28   <= s27;
					max_len_27_28 <= frame_len27;
					max_id_27_28  <= 27;
				end else begin
					max_s_27_28   <= s28;
					max_len_27_28 <= frame_len28;
					max_id_27_28  <= 28;
				end

				if (s29 >= s30)begin
					max_s_29_30   <= s29;
					max_len_29_30 <= frame_len29;
					max_id_29_30  <= 29;
				end else begin
					max_s_29_30   <= s30;
					max_len_29_30 <= frame_len30;
					max_id_29_30  <= 30;
				end

				if (s31 >= s32)begin
					max_s_31_32   <= s31;
					max_len_31_32 <= frame_len31;
					max_id_31_32  <= 31;
				end else begin
					max_s_31_32   <= s32;
					max_len_31_32 <= frame_len32;
					max_id_31_32  <= 32;
				end

				if (s33 >= s34)begin
					max_s_33_34   <= s33;
					max_len_33_34 <= frame_len33;
					max_id_33_34  <= 33;
				end else begin
					max_s_33_34   <= s34;
					max_len_33_34 <= frame_len34;
					max_id_33_34  <= 34;
				end

				if (s35 >= s36)begin
					max_s_35_36   <= s35;
					max_len_35_36 <= frame_len35;
					max_id_35_36  <= 35;
				end else begin
					max_s_35_36   <= s36;
					max_len_35_36 <= frame_len36;
					max_id_35_36  <= 36;
				end

				if (s37 >= s38)begin
					max_s_37_38   <= s37;
					max_len_37_38 <= frame_len37;
					max_id_37_38  <= 37;
				end else begin
					max_s_37_38   <= s38;
					max_len_37_38 <= frame_len38;
					max_id_37_38  <= 38;
				end

				if (s39 >= s40)begin
					max_s_39_40   <= s39;
					max_len_39_40 <= frame_len39;
					max_id_39_40  <= 39;
				end else begin
					max_s_39_40   <= s40;
					max_len_39_40 <= frame_len40;
					max_id_39_40  <= 40;
				end

				if (s41 >= s42)begin
					max_s_41_42   <= s41;
					max_len_41_42 <= frame_len41;
					max_id_41_42  <= 41;
				end else begin
					max_s_41_42   <= s42;
					max_len_41_42 <= frame_len42;
					max_id_41_42  <= 42;
				end

				if (s43 >= s44)begin
					max_s_43_44   <= s43;
					max_len_43_44 <= frame_len43;
					max_id_43_44  <= 43;
				end else begin
					max_s_43_44   <= s44;
					max_len_43_44 <= frame_len44;
					max_id_43_44  <= 44;
				end

				if (s45 >= s46)begin
					max_s_45_46   <= s45;
					max_len_45_46 <= frame_len45;
					max_id_45_46  <= 45;
				end else begin
					max_s_45_46   <= s46;
					max_len_45_46 <= frame_len46;
					max_id_45_46  <= 46;
				end

				if (s47 >= s48)begin
					max_s_47_48   <= s47;
					max_len_47_48 <= frame_len47;
					max_id_47_48  <= 47;
				end else begin
					max_s_47_48   <= s48;
					max_len_47_48 <= frame_len48;
					max_id_47_48  <= 48;
				end

				if (s49 >= s50)begin
					max_s_49_50   <= s49;
					max_len_49_50 <= frame_len49;
					max_id_49_50  <= 49;
				end else begin
					max_s_49_50   <= s50;
					max_len_49_50 <= frame_len50;
					max_id_49_50  <= 50;
				end

				if (s51 >= s52)begin
					max_s_51_52   <= s51;
					max_len_51_52 <= frame_len51;
					max_id_51_52  <= 51;
				end else begin
					max_s_51_52   <= s52;
					max_len_51_52 <= frame_len52;
					max_id_51_52  <= 52;
				end

				if (s53 >= s54)begin
					max_s_53_54   <= s53;
					max_len_53_54 <= frame_len53;
					max_id_53_54  <= 53;
				end else begin
					max_s_53_54   <= s54;
					max_len_53_54 <= frame_len54;
					max_id_53_54  <= 54;
				end

				if (s55 >= s56)begin
					max_s_55_56   <= s55;
					max_len_55_56 <= frame_len55;
					max_id_55_56  <= 55;
				end else begin
					max_s_55_56   <= s56;
					max_len_55_56 <= frame_len56;
					max_id_55_56  <= 56;
				end

				if (s57 >= s58)begin
					max_s_57_58   <= s57;
					max_len_57_58 <= frame_len57;
					max_id_57_58  <= 57;
				end else begin
					max_s_57_58   <= s58;
					max_len_57_58 <= frame_len58;
					max_id_57_58  <= 58;
				end
	
				if (s59 >= s60)begin
					max_s_59_60   <= s59;
					max_len_59_60 <= frame_len59;
					max_id_59_60  <= 59;
				end else begin
					max_s_59_60   <= s60;
					max_len_59_60 <= frame_len60;
					max_id_59_60  <= 60;
				end

				if (s61 >= s62)begin
					max_s_61_62   <= s61;
					max_len_61_62 <= frame_len61;
					max_id_61_62  <= 61;
				end else begin
					max_s_61_62   <= s62;
					max_len_61_62 <= frame_len62;
					max_id_61_62  <= 62;
				end

				if (s63 >= s64)begin
					max_s_63_64   <= s63;
					max_len_63_64 <= frame_len63;
					max_id_63_64  <= 63;
				end else begin
					max_s_63_64   <= s64;
					max_len_63_64 <= frame_len64;
					max_id_63_64  <= 64;
				end


				if (max_s_01_02 >= max_s_03_04)begin
					max_s_01_04   <= max_s_01_02;
					max_len_01_04 <= max_len_01_02;
					max_id_01_04  <= max_id_01_02;
				end else begin
					max_s_01_04   <= max_s_03_04;
					max_len_01_04 <= max_len_03_04;
					max_id_01_04  <= max_id_03_04;
				end
	
				if (max_s_05_06 >= max_s_07_08)begin
					max_s_05_08   <= max_s_05_06;
					max_len_05_08 <= max_len_05_06;
					max_id_05_08  <= max_id_05_06;
				end else begin
					max_s_05_08   <= max_s_07_08;
					max_len_05_08 <= max_len_07_08;
					max_id_05_08  <= max_id_07_08;
				end

				if (max_s_09_10 >= max_s_11_12)begin
					max_s_09_12   <= max_s_09_10;
					max_len_09_12 <= max_len_09_10;
					max_id_09_12  <= max_id_09_10;
				end else begin
					max_s_09_12   <= max_s_11_12;
					max_len_09_12 <= max_len_11_12;
					max_id_09_12  <= max_id_11_12;
				end

				if (max_s_13_14 >= max_s_15_16)begin
					max_s_13_16   <= max_s_13_14;
					max_len_13_16 <= max_len_13_14;
					max_id_13_16  <= max_id_13_14;
				end else begin
					max_s_13_16   <= max_s_15_16;
					max_len_13_16 <= max_len_15_16;
					max_id_13_16  <= max_id_15_16;
				end

				if (max_s_17_18 >= max_s_19_20)begin
					max_s_17_20   <= max_s_17_18;
					max_len_17_20 <= max_len_17_18;
					max_id_17_20  <= max_id_17_18;
				end else begin
					max_s_17_20   <= max_s_19_20;
					max_len_17_20 <= max_len_19_20;
					max_id_17_20  <= max_id_19_20;
				end

				if (max_s_21_22 >= max_s_23_24)begin
					max_s_21_24   <= max_s_21_22;
					max_len_21_24 <= max_len_21_22;
					max_id_21_24  <= max_id_21_22;
				end else begin
					max_s_21_24   <= max_s_23_24;
					max_len_21_24 <= max_len_23_24;
					max_id_21_24  <= max_id_23_24;
				end

				if (max_s_25_26 >= max_s_27_28)begin
					max_s_25_28   <= max_s_25_26;
					max_len_25_28 <= max_len_25_26;
					max_id_25_28  <= max_id_25_26;
				end else begin
					max_s_25_28   <= max_s_27_28;
					max_len_25_28 <= max_len_27_28;
					max_id_25_28  <= max_id_27_28;
				end

				if (max_s_29_30 >= max_s_31_32)begin
					max_s_29_32   <= max_s_29_30;
					max_len_29_32 <= max_len_29_30;
					max_id_29_32  <= max_id_29_30;
				end else begin
					max_s_29_32   <= max_s_31_32;
					max_len_29_32 <= max_len_31_32;
					max_id_29_32  <= max_id_31_32;
				end

				if (max_s_33_34 >= max_s_35_36)begin
					max_s_33_36   <= max_s_33_34;
					max_len_33_36 <= max_len_33_34;
					max_id_33_36  <= max_id_33_34;
				end else begin
					max_s_33_36   <= max_s_35_36;
					max_len_33_36 <= max_len_35_36;
					max_id_33_36  <= max_id_35_36;
				end

				if (max_s_37_38 >= max_s_39_40)begin
					max_s_37_40   <= max_s_37_38;
					max_len_37_40 <= max_len_37_38;
					max_id_37_40  <= max_id_37_38;
				end else begin
					max_s_37_40   <= max_s_39_40;
					max_len_37_40 <= max_len_39_40;
					max_id_37_40  <= max_id_39_40;
				end

				if (max_s_41_42 >= max_s_43_44)begin
					max_s_41_44   <= max_s_41_42;
					max_len_41_44 <= max_len_41_42;
					max_id_41_44  <= max_id_41_42;
				end else begin
					max_s_41_44   <= max_s_43_44;
					max_len_41_44 <= max_len_43_44;
					max_id_41_44  <= max_id_43_44;
				end

				if (max_s_45_46 >= max_s_47_48)begin
					max_s_45_48   <= max_s_45_46;
					max_len_45_48 <= max_len_45_46;
					max_id_45_48  <= max_id_45_46;
				end else begin
					max_s_45_48   <= max_s_47_48;
					max_len_45_48 <= max_len_47_48;
					max_id_45_48  <= max_id_47_48;
				end

				if (max_s_49_50 >= max_s_51_52)begin
					max_s_49_52   <= max_s_49_50;
					max_len_49_52 <= max_len_49_50;
					max_id_49_52  <= max_id_49_50;
				end else begin
					max_s_49_52   <= max_s_51_52;
					max_len_49_52 <= max_len_51_52;
					max_id_49_52  <= max_id_51_52;
				end	

				if (max_s_53_54 >= max_s_55_56)begin
					max_s_53_56   <= max_s_53_54;
					max_len_53_56 <= max_len_53_54;
					max_id_53_56  <= max_id_53_54;
				end else begin
					max_s_53_56   <= max_s_55_56;
					max_len_53_56 <= max_len_55_56;
					max_id_53_56  <= max_id_55_56;
				end

				if (max_s_57_58 >= max_s_59_60)begin
					max_s_57_60   <= max_s_57_58;
					max_len_57_60 <= max_len_57_58;
					max_id_57_60  <= max_id_57_58;
				end else begin
					max_s_57_60   <= max_s_59_60;
					max_len_57_60 <= max_len_59_60;
					max_id_57_60  <= max_id_59_60;
				end

				if (max_s_61_62 >= max_s_63_64)begin
					max_s_61_64   <= max_s_61_62;
					max_len_61_64 <= max_len_61_62;
					max_id_61_64  <= max_id_61_62;
				end else begin
					max_s_61_64   <= max_s_63_64;
					max_len_61_64 <= max_len_63_64;
					max_id_61_64  <= max_id_63_64;
				end

				//pp
				if (max_s_01_04 >= max_s_05_08)begin
					max_s_01_08   <= max_s_01_04;
					max_len_01_08 <= max_len_01_04;
					max_id_01_08  <= max_id_01_04;
				end else begin
					max_s_01_08   <= max_s_05_08;
					max_len_01_08 <= max_len_05_08;
					max_id_01_08  <= max_id_05_08;
				end

				if (max_s_09_12 >= max_s_13_16)begin
					max_s_09_16   <= max_s_09_12;
					max_len_09_16 <= max_len_09_12;
					max_id_09_16  <= max_id_09_12;
				end else begin
					max_s_09_16   <= max_s_13_16;
					max_len_09_16 <= max_len_13_16;
					max_id_09_16  <= max_id_13_16;
				end

				if (max_s_17_20 >= max_s_21_24)begin 
					max_s_17_24   <= max_s_17_20;
					max_len_17_24 <= max_len_17_20;
					max_id_17_24  <= max_id_17_20;
				end else begin
					max_s_17_24   <= max_s_21_24;
					max_len_17_24 <= max_len_21_24;
					max_id_17_24  <= max_id_21_24;
				end

				if (max_s_25_28 >= max_s_29_32)begin 
					max_s_25_32   <= max_s_25_28;
					max_len_25_32 <= max_len_25_28;
					max_id_25_32  <= max_id_25_28;
				end else begin
					max_s_25_32   <= max_s_29_32;
					max_len_25_32 <= max_len_29_32;
					max_id_25_32  <= max_id_29_32;
				end

				if (max_s_33_36 >= max_s_37_40)begin 
					max_s_33_40   <= max_s_33_36;
					max_len_33_40 <= max_len_33_36;
					max_id_33_40  <= max_id_33_36;
				end else begin
					max_s_33_40   <= max_s_37_40;
					max_len_33_40 <= max_len_37_40;
					max_id_33_40  <= max_id_37_40;
				end

				if (max_s_41_44 >= max_s_45_48)begin 
					max_s_41_48   <= max_s_41_44;
					max_len_41_48 <= max_len_41_44;
					max_id_41_48  <= max_id_41_44;
				end else begin
					max_s_41_48   <= max_s_45_48;
					max_len_41_48 <= max_len_45_48;
					max_id_41_48  <= max_id_45_48;
				end

				if (max_s_49_52 >= max_s_53_56)begin 
					max_s_49_56   <= max_s_49_52;
					max_len_49_56 <= max_len_49_52;
					max_id_49_56  <= max_id_49_52;
				end else begin
					max_s_49_56   <= max_s_53_56;
					max_len_49_56 <= max_len_53_56;
					max_id_49_56  <= max_id_53_56;
				end

				if (max_s_57_60 >= max_s_61_64)begin 
					max_s_57_64   <= max_s_57_60;
					max_len_57_64 <= max_len_57_60;
					max_id_57_64  <= max_id_57_60;
				end else begin
					max_s_57_64   <= max_s_61_64;
					max_len_57_64 <= max_len_61_64;
					max_id_57_64  <= max_id_61_64;
				end

				//==
				if (max_s_01_04 >= max_s_05_08)begin
					max_s_01_08   <= max_s_01_04;
					max_len_01_08 <= max_len_01_04;
					max_id_01_08  <= max_id_01_04;
				end else begin
					max_s_01_08   <= max_s_05_08;
					max_len_01_08 <= max_len_05_08;
					max_id_01_08  <= max_id_05_08;
				end

				if (max_s_09_12 >= max_s_13_16)begin
					max_s_09_16   <= max_s_09_12;
					max_len_09_16 <= max_len_09_12;
					max_id_09_16  <= max_id_09_12;
				end else begin
					max_s_09_16   <= max_s_13_16;
					max_len_09_16 <= max_len_13_16;
					max_id_09_16  <= max_id_13_16;
				end

				if (max_s_17_20 >= max_s_21_24)begin
					max_s_17_24   <= max_s_17_20;
					max_len_17_24 <= max_len_17_20;
					max_id_17_24  <= max_id_17_20;
				end else begin
					max_s_17_24   <= max_s_21_24;
					max_len_17_24 <= max_len_21_24;
					max_id_17_24  <= max_id_21_24;
				end

				if (max_s_25_28 >= max_s_29_32)begin
					max_s_25_32   <= max_s_25_28;
					max_len_25_32 <= max_len_25_28;
					max_id_25_32  <= max_id_25_28;
				end else begin
					max_s_25_32   <= max_s_29_32;
					max_len_25_32 <= max_len_29_32;
					max_id_25_32  <= max_id_29_32;
				end

				if (max_s_33_36 >= max_s_37_40)begin
					max_s_33_40   <= max_s_33_36;
					max_len_33_40 <= max_len_33_36;
					max_id_33_40  <= max_id_33_36;
				end else begin
					max_s_33_40   <= max_s_37_40;
					max_len_33_40 <= max_len_37_40;
					max_id_33_40  <= max_id_37_40;
				end

				if (max_s_41_44 >= max_s_45_48)begin
					max_s_41_48   <= max_s_41_44;
					max_len_41_48 <= max_len_41_44;
					max_id_41_48  <= max_id_41_44;
				end else begin
					max_s_41_48   <= max_s_45_48;
					max_len_41_48 <= max_len_45_48;
					max_id_41_48  <= max_id_45_48;
				end

				if (max_s_49_52 >= max_s_53_56)begin
					max_s_49_56   <= max_s_49_52;
					max_len_49_56 <= max_len_49_52;
					max_id_49_56  <= max_id_49_52;
				end else begin
					max_s_49_56   <= max_s_53_56;
					max_len_49_56 <= max_len_53_56;
					max_id_49_56  <= max_id_53_56;
				end

				if (max_s_57_60 >= max_s_61_64)begin
					max_s_57_64   <= max_s_57_60;
					max_len_57_64 <= max_len_57_60;
					max_id_57_64  <= max_id_57_60;
				end else begin
					max_s_57_64   <= max_s_61_64;
					max_len_57_64 <= max_len_61_64;
					max_id_57_64  <= max_id_61_64;
				end
				//==

				if (max_s_01_08 >= max_s_09_16)begin
					max_s_01_16   <= max_s_01_08;
					max_len_01_16 <= max_len_01_08;
					max_id_01_16  <= max_id_01_08;
				end else begin
					max_s_01_16   <= max_s_09_16;
					max_len_01_16 <= max_len_09_16;
					max_id_01_16  <= max_id_09_16;
				end

				if (max_s_17_24 >= max_s_25_32)begin
					max_s_17_32   <= max_s_17_24;
					max_len_17_32 <= max_len_17_24;
					max_id_17_32  <= max_id_17_24;
				end else begin
					max_s_17_32   <= max_s_25_32;
					max_len_17_32 <= max_len_25_32;
					max_id_17_32  <= max_id_25_32;
				end

				if (max_s_33_40 >= max_s_41_48)begin
					max_s_33_48   <= max_s_33_40;
					max_len_33_48 <= max_len_33_40;
					max_id_33_48  <= max_id_33_40;
				end else begin
					max_s_33_48   <= max_s_41_48;
					max_len_33_48 <= max_len_41_48;
					max_id_33_48  <= max_id_41_48;
				end

				if (max_s_49_56 >= max_s_57_64)begin
					max_s_49_64   <= max_s_49_56;
					max_len_49_64 <= max_len_49_56;
					max_id_49_64  <= max_id_49_56;
				end else begin
					max_s_49_64   <= max_s_57_64;
					max_len_49_64 <= max_len_57_64;
					max_id_49_64  <= max_id_57_64;
				end
				//==
	
				if (max_s_01_16 >= max_s_17_32)begin
					max_s_01_32   <= max_s_01_16;
					max_len_01_32 <= max_len_01_16;
					max_id_01_32  <= max_id_01_16;
				end else begin
					max_s_01_32   <= max_s_17_32;
					max_len_01_32 <= max_len_17_32;
					max_id_01_32  <= max_id_17_32;
				end

				if (max_s_33_48 >= max_s_49_64)begin
					max_s_33_64   <= max_s_33_48;
					max_len_33_64 <= max_len_33_48;
					max_id_33_64  <= max_id_33_48;
				end else begin
					max_s_33_64   <= max_s_49_64;
					max_len_33_64 <= max_len_49_64;
					max_id_33_64  <= max_id_49_64;
				end

				if (get_max_step != 0) begin
					get_max_step <= get_max_step -1;
	
					if (get_max_step == 1) begin
						if (max_s_01_32 >= max_s_33_64)begin
							stream_id  <= max_id_01_32[15:0];	
							max_frame_len <= max_len_01_32;
						end else begin
							stream_id  <= max_id_33_64[15:0];	
							max_frame_len <= max_len_33_64;
						end
					end
				end else begin
				end

			end

		end
	end

	// main
	reg [31:0]step_index;
	reg [31:0]tx_len;

	always @(posedge clock) begin
		if (!tx_enable)begin
			valid <= 1'b0;
			step_index <=0;
			get_max_add_enable <= 0;	
			p_add_stream_id <= 65;
			vout00 <= 0;
		end else begin
			if (pause_enable)begin
			// do nothing
			end else begin
				case (step_index)
				0 :begin
						p_add_stream_id <= 66;
						get_max_add_enable <= 1;
						step_index <= 1;
					end
				1 :begin
						if (vout_init_state[63:0] == 64'hffffffffffffffff)begin
							p_add_stream_id <= stream_id;
							valid <= 1'b1;
							current_id <= stream_id;
							get_max_add_enable <= 0;
							tx_len <= max_frame_len -12;
							step_index <= 2;
						end 
					end
				2 :begin //+++
						step_index <= 3;
						p_add_stream_id <= 65;
						get_max_add_enable <= 1;
						tx_len <= tx_len - 1;
						valid <= 1'b1;
						current_id <= stream_id;
						vout00 <= 0;
					end
				3 :begin
						case (tx_len)
						1 :begin
								step_index <= 4;
								tx_len <= tx_len + gap_len + 12 -1;
								valid <= 1'b0;
								p_add_stream_id <= 0;
								vout00 <= -1000000;
							end
						default:begin
									tx_len <= tx_len - 1;
								   vout00  <= 0;
							  	  end
						endcase
					end
				default: begin 
						if (gap_adjust_enable)begin
							valid <= 1'b0;
							vout00 <= -1000000;
						end else begin
							case (tx_len)
							1 :begin
									valid <= 1'b1;
									current_id <= stream_id;
									p_add_stream_id <= stream_id;
									tx_len <= tx_len + max_frame_len -12 -1;
									step_index <= 2;
									get_max_add_enable <= 0;
									vout00 <= 12000000;
								end
							default: begin
											tx_len <= tx_len - 1;
											valid <= 1'b0;
											vout00 <= -1000000;
										end
							endcase 
						end
					end
				endcase
			end
		end
	end

endmodule
