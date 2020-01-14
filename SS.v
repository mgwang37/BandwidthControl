`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:56:23 10/15/2013
// Design Name:   bandwidth_control_10g
// Module Name:   /home/mgwang/Videos/FPGA-MULTI-STREAM/SS.v
// Project Name:  FPGA-MULTI-STREAM
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bandwidth_control_10g
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SS_10G;

	// Inputs
	reg clock;
	reg tx_enable;
	reg pause_enable;
	reg [31:0] v0;
	reg [31:0] v1;
	reg [31:0] v2;
	reg [31:0] v3;
	reg [31:0] v4;
	reg [31:0] v5;
	reg [31:0] v6;
	reg [31:0] v7;
	reg [31:0] v8;
	reg [31:0] v9;
	reg [31:0] v10;
	reg [31:0] v11;
	reg [31:0] v12;
	reg [31:0] v13;
	reg [31:0] v14;
	reg [31:0] v15;
	reg [31:0] v16;
	reg [31:0] v17;
	reg [31:0] v18;
	reg [31:0] v19;
	reg [31:0] v20;
	reg [31:0] v21;
	reg [31:0] v22;
	reg [31:0] v23;
	reg [31:0] v24;
	reg [31:0] v25;
	reg [31:0] v26;
	reg [31:0] v27;
	reg [31:0] v28;
	reg [31:0] v29;
	reg [31:0] v30;
	reg [31:0] v31;
	reg [31:0] v32;
	reg [31:0] v33;
	reg [31:0] v34;
	reg [31:0] v35;
	reg [31:0] v36;
	reg [31:0] v37;
	reg [31:0] v38;
	reg [31:0] v39;
	reg [31:0] v40;
	reg [31:0] v41;
	reg [31:0] v42;
	reg [31:0] v43;
	reg [31:0] v44;
	reg [31:0] v45;
	reg [31:0] v46;
	reg [31:0] v47;
	reg [31:0] v48;
	reg [31:0] v49;
	reg [31:0] v50;
	reg [31:0] v51;
	reg [31:0] v52;
	reg [31:0] v53;
	reg [31:0] v54;
	reg [31:0] v55;
	reg [31:0] v56;
	reg [31:0] v57;
	reg [31:0] v58;
	reg [31:0] v59;
	reg [31:0] v60;
	reg [31:0] v61;
	reg [31:0] v62;
	reg [31:0] v63;
	reg [31:0] v64;
	reg [15:0] frame_len1;
	reg [15:0] frame_len2;
	reg [15:0] frame_len3;
	reg [15:0] frame_len4;
	reg [15:0] frame_len5;
	reg [15:0] frame_len6;
	reg [15:0] frame_len7;
	reg [15:0] frame_len8;
	reg [15:0] frame_len9;
	reg [15:0] frame_len10;
	reg [15:0] frame_len11;
	reg [15:0] frame_len12;
	reg [15:0] frame_len13;
	reg [15:0] frame_len14;
	reg [15:0] frame_len15;
	reg [15:0] frame_len16;
	reg [15:0] frame_len17;
	reg [15:0] frame_len18;
	reg [15:0] frame_len19;
	reg [15:0] frame_len20;
	reg [15:0] frame_len21;
	reg [15:0] frame_len22;
	reg [15:0] frame_len23;
	reg [15:0] frame_len24;
	reg [15:0] frame_len25;
	reg [15:0] frame_len26;
	reg [15:0] frame_len27;
	reg [15:0] frame_len28;
	reg [15:0] frame_len29;
	reg [15:0] frame_len30;
	reg [15:0] frame_len31;
	reg [15:0] frame_len32;
	reg [15:0] frame_len33;
	reg [15:0] frame_len34;
	reg [15:0] frame_len35;
	reg [15:0] frame_len36;
	reg [15:0] frame_len37;
	reg [15:0] frame_len38;
	reg [15:0] frame_len39;
	reg [15:0] frame_len40;
	reg [15:0] frame_len41;
	reg [15:0] frame_len42;
	reg [15:0] frame_len43;
	reg [15:0] frame_len44;
	reg [15:0] frame_len45;
	reg [15:0] frame_len46;
	reg [15:0] frame_len47;
	reg [15:0] frame_len48;
	reg [15:0] frame_len49;
	reg [15:0] frame_len50;
	reg [15:0] frame_len51;
	reg [15:0] frame_len52;
	reg [15:0] frame_len53;
	reg [15:0] frame_len54;
	reg [15:0] frame_len55;
	reg [15:0] frame_len56;
	reg [15:0] frame_len57;
	reg [15:0] frame_len58;
	reg [15:0] frame_len59;
	reg [15:0] frame_len60;
	reg [15:0] frame_len61;
	reg [15:0] frame_len62;
	reg [15:0] frame_len63;
	reg [15:0] frame_len64;
	reg [31:0] gap_len;

	// Outputs
	wire [15:0] stream_id;
	wire [7:0]  valid;
	//wire       valid_new;

	reg [31:0] stream1_sum;
	reg [31:0] stream2_sum;
	reg [31:0] stream3_sum;
	reg [31:0] stream4_sum;
	reg [31:0] stream5_sum;
	reg [31:0] stream6_sum;
	reg [31:0] stream7_sum;
	reg [31:0] stream8_sum;
	reg [31:0] stream9_sum;
	reg [31:0] stream10_sum;
	reg [31:0] all_sum;
	reg        test_start;

	// Instantiate the Unit Under Test (UUT)
	bandwidth_control_10g uut (
		.clock(clock), 
		.tx_enable(tx_enable), 
		.pause_enable(pause_enable),
		.v00(v0), 
		.v01(v1), 
		.v02(v2), 
		.v03(v3), 
		.v04(v4), 
		.v05(v5), 
		.v06(v6), 
		.v07(v7), 
		.v08(v8), 
		.v09(v9), 
		.v10(v10), 
		.v11(v11), 
		.v12(v12), 
		.v13(v13), 
		.v14(v14), 
		.v15(v15), 
		.v16(v16), 
		.v17(v17), 
		.v18(v18), 
		.v19(v19), 
		.v20(v20), 
		.v21(v21), 
		.v22(v22), 
		.v23(v23), 
		.v24(v24), 
		.v25(v25), 
		.v26(v26), 
		.v27(v27), 
		.v28(v28), 
		.v29(v29), 
		.v30(v30), 
		.v31(v31), 
		.v32(v32), 
		.v33(v33), 
		.v34(v34), 
		.v35(v35), 
		.v36(v36), 
		.v37(v37), 
		.v38(v38), 
		.v39(v39), 
		.v40(v40), 
		.v41(v41), 
		.v42(v42), 
		.v43(v43), 
		.v44(v44), 
		.v45(v45), 
		.v46(v46), 
		.v47(v47), 
		.v48(v48), 
		.v49(v49), 
		.v50(v50), 
		.v51(v51), 
		.v52(v52), 
		.v53(v53), 
		.v54(v54), 
		.v55(v55), 
		.v56(v56), 
		.v57(v57), 
		.v58(v58), 
		.v59(v59), 
		.v60(v60), 
		.v61(v61), 
		.v62(v62), 
		.v63(v63), 
		.v64(v64), 
		.frame_len01(frame_len1), 
		.frame_len02(frame_len2), 
		.frame_len03(frame_len3), 
		.frame_len04(frame_len4), 
		.frame_len05(frame_len5), 
		.frame_len06(frame_len6), 
		.frame_len07(frame_len7), 
		.frame_len08(frame_len8), 
		.frame_len09(frame_len9), 
		.frame_len10(frame_len10), 
		.frame_len11(frame_len11), 
		.frame_len12(frame_len12), 
		.frame_len13(frame_len13), 
		.frame_len14(frame_len14), 
		.frame_len15(frame_len15), 
		.frame_len16(frame_len16), 
		.frame_len17(frame_len17), 
		.frame_len18(frame_len18), 
		.frame_len19(frame_len19), 
		.frame_len20(frame_len20), 
		.frame_len21(frame_len21), 
		.frame_len22(frame_len22), 
		.frame_len23(frame_len23), 
		.frame_len24(frame_len24), 
		.frame_len25(frame_len25), 
		.frame_len26(frame_len26), 
		.frame_len27(frame_len27), 
		.frame_len28(frame_len28), 
		.frame_len29(frame_len29), 
		.frame_len30(frame_len30), 
		.frame_len31(frame_len31), 
		.frame_len32(frame_len32), 
		.frame_len33(frame_len33), 
		.frame_len34(frame_len34), 
		.frame_len35(frame_len35), 
		.frame_len36(frame_len36), 
		.frame_len37(frame_len37), 
		.frame_len38(frame_len38), 
		.frame_len39(frame_len39), 
		.frame_len40(frame_len40), 
		.frame_len41(frame_len41), 
		.frame_len42(frame_len42), 
		.frame_len43(frame_len43), 
		.frame_len44(frame_len44), 
		.frame_len45(frame_len45), 
		.frame_len46(frame_len46), 
		.frame_len47(frame_len47), 
		.frame_len48(frame_len48), 
		.frame_len49(frame_len49), 
		.frame_len50(frame_len50), 
		.frame_len51(frame_len51), 
		.frame_len52(frame_len52), 
		.frame_len53(frame_len53), 
		.frame_len54(frame_len54), 
		.frame_len55(frame_len55), 
		.frame_len56(frame_len56), 
		.frame_len57(frame_len57), 
		.frame_len58(frame_len58), 
		.frame_len59(frame_len59), 
		.frame_len60(frame_len60), 
		.frame_len61(frame_len61), 
		.frame_len62(frame_len62), 
		.frame_len63(frame_len63), 
		.frame_len64(frame_len64), 
		.gap_len(gap_len), 
		.current_id(stream_id), 
		.valid(valid)

	);

	always @(posedge clock)begin
		if (!tx_enable)begin
			stream1_sum <= 0;
			stream2_sum <= 0;
			stream3_sum <= 0;
			stream4_sum <= 0;
			stream5_sum <= 0;
			stream6_sum <= 0;
			stream7_sum <= 0;
			stream8_sum <= 0;
			stream9_sum <= 0;
			stream10_sum <= 0;
			all_sum <= 0;
			test_start <= 0;
		end else if (valid == 8'b10000000) begin
			test_start <= 1;
			case (stream_id)
			1: begin
					stream1_sum <= stream1_sum + frame_len1;
					all_sum <= all_sum + 8;
				end
			2: begin
					stream2_sum <= stream2_sum + frame_len2;
					all_sum <= all_sum + 8;
				end
			3: begin
					stream3_sum <= stream3_sum + frame_len3;
					all_sum <= all_sum + 8;
				end
			4: begin
					stream4_sum <= stream4_sum + frame_len4;
					all_sum <= all_sum + 8;
				end
			5: begin
					stream5_sum <= stream5_sum + frame_len5;
					all_sum <= all_sum + 8;
				end
			6: begin
					stream6_sum <= stream6_sum + frame_len6;
					all_sum <= all_sum + 8;
				end
			7: begin
					stream7_sum <= stream7_sum + frame_len7;
					all_sum <= all_sum + 8;
				end
			8: begin
					stream8_sum <= stream8_sum + frame_len8;
					all_sum <= all_sum + 8;
				end
			9: begin
					stream9_sum <= stream9_sum + frame_len9;
					all_sum <= all_sum + 8;
				end
			10: begin
					stream10_sum <= stream10_sum + frame_len10;
					all_sum <= all_sum + 8;
				end
			endcase
		end else if (test_start &&(!pause_enable))begin
			all_sum <= all_sum + 8;
		end
	end


	initial begin
		// Initialize Inputs
		clock = 0;
		tx_enable = 0;
		v0  = 0;
		v1  = 15873;
		v2  = 15873;
		v3  = 15873;
		v4  = 15873;
		v5  = 15873;
		v6  = 15873;
		v7  = 15873;
		v8  = 15873;
		v9  = 15873;
		v10 = 15873;
		v11 = 15873;
		v12 = 15873;
		v13 = 15873;
		v14 = 15873;
		v15 = 15873;
		v16 = 15873;
		v17 = 15873;
		v18 = 15873;
		v19 = 15873;
		v20 = 15873;
		v21 = 15873;
		v22 = 15873;
		v23 = 15873;
		v24 = 15873;
		v25 = 15873;
		v26 = 15873;
		v27 = 15873;
		v28 = 15873;
		v29 = 15873;
		v30 = 15873;
		v31 = 15873;
		v32 = 15873;
		v33 = 15873;
		v34 = 15873;
		v35 = 15873;
		v36 = 15873;
		v37 = 15873;
		v38 = 15873;
		v39 = 15873;
		v40 = 15873;
		v41 = 15873;
		v42 = 15873;
		v43 = 15873;
		v44 = 15873;
		v45 = 15873;
		v46 = 15873;
		v47 = 15873;
		v48 = 15873;
		v49 = 15873;
		v50 = 15873;
		v51 = 15873;
		v52 = 15873;
		v53 = 15873;
		v54 = 15873;
		v55 = 15873;
		v56 = 15873;
		v57 = 15873;
		v58 = 15873;
		v59 = 15873;
		v60 = 15873;
		v61 = 15873;
		v62 = 15873;
		v63 = 15873;
		v64 = 1;
		frame_len1 = 84;
		frame_len2 = 84;
		frame_len3 = 84;
		frame_len4 = 84;
		frame_len5 = 84;
		frame_len6 = 84;
		frame_len7 = 84;
		frame_len8 = 84;
		frame_len9 = 84;
		frame_len10 = 84;
		frame_len11 = 84;
		frame_len12 = 84;
		frame_len13 = 84;
		frame_len14 = 84;
		frame_len15 = 84;
		frame_len16 = 84;
		frame_len17 = 84;
		frame_len18 = 84;
		frame_len19 = 84;
		frame_len20 = 84;
		frame_len21 = 84;
		frame_len22 = 84;
		frame_len23 = 84;
		frame_len24 = 84;
		frame_len25 = 84;
		frame_len26 = 84;
		frame_len27 = 84;
		frame_len28 = 84;
		frame_len29 = 84;
		frame_len30 = 84;
		frame_len31 = 84;
		frame_len32 = 84;
		frame_len33 = 84;
		frame_len34 = 84;
		frame_len35 = 84;
		frame_len36 = 84;
		frame_len37 = 84;
		frame_len38 = 84;
		frame_len39 = 84;
		frame_len40 = 84;
		frame_len41 = 84;
		frame_len42 = 84;
		frame_len43 = 84;
		frame_len44 = 84;
		frame_len45 = 84;
		frame_len46 = 84;
		frame_len47 = 84;
		frame_len48 = 84;
		frame_len49 = 84;
		frame_len50 = 84;
		frame_len51 = 84;
		frame_len52 = 84;
		frame_len53 = 84;
		frame_len54 = 84;
		frame_len55 = 84;
		frame_len56 = 84;
		frame_len57 = 84;
		frame_len58 = 84;
		frame_len59 = 84;
		frame_len60 = 84;
		frame_len61 = 84;
		frame_len62 = 84;
		frame_len63 = 84;
		frame_len64 = 2000;
		gap_len = 0;
		pause_enable = 0;

		// Wait 100 ns for global reset to finish
		#3.2;
		clock = 1;
		#3.2;
		clock = 0;
		#3.2;
		clock = 1;
		#3.2;
		clock = 0;
		#3.2;
		clock = 1;
		#3.2;
		clock = 0;
		tx_enable = 1;

		repeat(10000) begin
			#3.2;
			clock = 1;
			#3.2;
			clock = 0;
		end
		pause_enable = 0;

		repeat(900000) begin
			#3.2;
			clock = 1;
			#3.2;
			clock = 0;
		end
		pause_enable = 0;
		forever begin
			#3.2;
			clock = 1;
			#3.2;
			clock = 0;
		end



	end
      
endmodule

