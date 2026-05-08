

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="cnn_top_cnn_top,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.849250,HLS_SYN_LAT=117757,HLS_SYN_TPT=none,HLS_SYN_MEM=113,HLS_SYN_DSP=0,HLS_SYN_FF=16408,HLS_SYN_LUT=23631,HLS_VERSION=2020_2}" *)

module cnn_top (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        s_axis_V_TDATA,
        s_axis_V_TVALID,
        s_axis_V_TREADY,
        m_axis_V_TDATA,
        m_axis_V_TVALID,
        m_axis_V_TREADY
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [15:0] s_axis_V_TDATA;
input   s_axis_V_TVALID;
output   s_axis_V_TREADY;
output  [63:0] m_axis_V_TDATA;
output   m_axis_V_TVALID;
input   m_axis_V_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    s_axis_V_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln41_fu_2309_p2;
reg    m_axis_V_TDATA_blk_n;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state12;
wire   [9:0] add_ln41_fu_2303_p2;
reg    ap_block_state2;
reg   [23:0] gap_buf_V_0_reg_2706;
wire    ap_CS_fsm_state10;
reg   [23:0] gap_buf_V_1_reg_2711;
reg   [23:0] gap_buf_V_2_reg_2716;
reg   [23:0] gap_buf_V_3_reg_2721;
reg   [23:0] gap_buf_V_4_reg_2726;
reg   [23:0] gap_buf_V_5_reg_2731;
reg   [23:0] gap_buf_V_6_reg_2736;
reg   [23:0] gap_buf_V_7_reg_2741;
reg   [23:0] gap_buf_V_8_reg_2746;
reg   [23:0] gap_buf_V_9_reg_2751;
reg   [23:0] gap_buf_V_10_reg_2756;
reg   [23:0] gap_buf_V_11_reg_2761;
reg   [23:0] gap_buf_V_12_reg_2766;
reg   [23:0] gap_buf_V_13_reg_2771;
reg   [23:0] gap_buf_V_14_reg_2776;
reg   [23:0] gap_buf_V_15_reg_2781;
reg   [23:0] gap_buf_V_16_reg_2786;
reg   [23:0] gap_buf_V_17_reg_2791;
reg   [23:0] gap_buf_V_18_reg_2796;
reg   [23:0] gap_buf_V_19_reg_2801;
reg   [23:0] gap_buf_V_20_reg_2806;
reg   [23:0] gap_buf_V_21_reg_2811;
reg   [23:0] gap_buf_V_22_reg_2816;
reg   [23:0] gap_buf_V_23_reg_2821;
reg   [23:0] gap_buf_V_24_reg_2826;
reg   [23:0] gap_buf_V_25_reg_2831;
reg   [23:0] gap_buf_V_26_reg_2836;
reg   [23:0] gap_buf_V_27_reg_2841;
reg   [23:0] gap_buf_V_28_reg_2846;
reg   [23:0] gap_buf_V_29_reg_2851;
reg   [23:0] gap_buf_V_30_reg_2856;
reg   [23:0] gap_buf_V_31_reg_2861;
reg   [23:0] gap_buf_V_32_reg_2866;
reg   [23:0] gap_buf_V_33_reg_2871;
reg   [23:0] gap_buf_V_34_reg_2876;
reg   [23:0] gap_buf_V_35_reg_2881;
reg   [23:0] gap_buf_V_36_reg_2886;
reg   [23:0] gap_buf_V_37_reg_2891;
reg   [23:0] gap_buf_V_38_reg_2896;
reg   [23:0] gap_buf_V_39_reg_2901;
reg   [23:0] gap_buf_V_40_reg_2906;
reg   [23:0] gap_buf_V_41_reg_2911;
reg   [23:0] gap_buf_V_42_reg_2916;
reg   [23:0] gap_buf_V_43_reg_2921;
reg   [23:0] gap_buf_V_44_reg_2926;
reg   [23:0] gap_buf_V_45_reg_2931;
reg   [23:0] gap_buf_V_46_reg_2936;
reg   [23:0] gap_buf_V_47_reg_2941;
reg   [23:0] gap_buf_V_48_reg_2946;
reg   [23:0] gap_buf_V_49_reg_2951;
reg   [23:0] gap_buf_V_50_reg_2956;
reg   [23:0] gap_buf_V_51_reg_2961;
reg   [23:0] gap_buf_V_52_reg_2966;
reg   [23:0] gap_buf_V_53_reg_2971;
reg   [23:0] gap_buf_V_54_reg_2976;
reg   [23:0] gap_buf_V_55_reg_2981;
reg   [23:0] gap_buf_V_56_reg_2986;
reg   [23:0] gap_buf_V_57_reg_2991;
reg   [23:0] gap_buf_V_58_reg_2996;
reg   [23:0] gap_buf_V_59_reg_3001;
reg   [23:0] gap_buf_V_60_reg_3006;
reg   [23:0] gap_buf_V_61_reg_3011;
reg   [23:0] gap_buf_V_62_reg_3016;
reg   [23:0] gap_buf_V_63_reg_3021;
reg   [9:0] in_buf_V_0_address0;
reg    in_buf_V_0_ce0;
reg    in_buf_V_0_we0;
wire   [7:0] in_buf_V_0_d0;
wire   [7:0] in_buf_V_0_q0;
reg   [9:0] c1_buf_V_0_address0;
reg    c1_buf_V_0_ce0;
reg    c1_buf_V_0_we0;
wire   [6:0] c1_buf_V_0_q0;
reg   [9:0] c1_buf_V_1_address0;
reg    c1_buf_V_1_ce0;
reg    c1_buf_V_1_we0;
wire   [6:0] c1_buf_V_1_q0;
reg   [9:0] c1_buf_V_2_address0;
reg    c1_buf_V_2_ce0;
reg    c1_buf_V_2_we0;
wire   [6:0] c1_buf_V_2_q0;
reg   [9:0] c1_buf_V_3_address0;
reg    c1_buf_V_3_ce0;
reg    c1_buf_V_3_we0;
wire   [6:0] c1_buf_V_3_q0;
reg   [9:0] c1_buf_V_4_address0;
reg    c1_buf_V_4_ce0;
reg    c1_buf_V_4_we0;
wire   [6:0] c1_buf_V_4_q0;
reg   [9:0] c1_buf_V_5_address0;
reg    c1_buf_V_5_ce0;
reg    c1_buf_V_5_we0;
wire   [6:0] c1_buf_V_5_q0;
reg   [9:0] c1_buf_V_6_address0;
reg    c1_buf_V_6_ce0;
reg    c1_buf_V_6_we0;
wire   [6:0] c1_buf_V_6_q0;
reg   [9:0] c1_buf_V_7_address0;
reg    c1_buf_V_7_ce0;
reg    c1_buf_V_7_we0;
wire   [6:0] c1_buf_V_7_q0;
reg   [9:0] c1_buf_V_8_address0;
reg    c1_buf_V_8_ce0;
reg    c1_buf_V_8_we0;
wire   [6:0] c1_buf_V_8_q0;
reg   [9:0] c1_buf_V_9_address0;
reg    c1_buf_V_9_ce0;
reg    c1_buf_V_9_we0;
wire   [6:0] c1_buf_V_9_q0;
reg   [9:0] c1_buf_V_10_address0;
reg    c1_buf_V_10_ce0;
reg    c1_buf_V_10_we0;
wire   [6:0] c1_buf_V_10_q0;
reg   [9:0] c1_buf_V_11_address0;
reg    c1_buf_V_11_ce0;
reg    c1_buf_V_11_we0;
wire   [6:0] c1_buf_V_11_q0;
reg   [9:0] c1_buf_V_12_address0;
reg    c1_buf_V_12_ce0;
reg    c1_buf_V_12_we0;
wire   [6:0] c1_buf_V_12_q0;
reg   [9:0] c1_buf_V_13_address0;
reg    c1_buf_V_13_ce0;
reg    c1_buf_V_13_we0;
wire   [6:0] c1_buf_V_13_q0;
reg   [9:0] c1_buf_V_14_address0;
reg    c1_buf_V_14_ce0;
reg    c1_buf_V_14_we0;
wire   [6:0] c1_buf_V_14_q0;
reg   [9:0] c1_buf_V_15_address0;
reg    c1_buf_V_15_ce0;
reg    c1_buf_V_15_we0;
wire   [6:0] c1_buf_V_15_q0;
reg   [9:0] c2_buf_V_0_address0;
reg    c2_buf_V_0_ce0;
reg    c2_buf_V_0_we0;
wire   [6:0] c2_buf_V_0_q0;
reg   [9:0] c2_buf_V_1_address0;
reg    c2_buf_V_1_ce0;
reg    c2_buf_V_1_we0;
wire   [6:0] c2_buf_V_1_q0;
reg   [9:0] c2_buf_V_2_address0;
reg    c2_buf_V_2_ce0;
reg    c2_buf_V_2_we0;
wire   [6:0] c2_buf_V_2_q0;
reg   [9:0] c2_buf_V_3_address0;
reg    c2_buf_V_3_ce0;
reg    c2_buf_V_3_we0;
wire   [6:0] c2_buf_V_3_q0;
reg   [9:0] c2_buf_V_4_address0;
reg    c2_buf_V_4_ce0;
reg    c2_buf_V_4_we0;
wire   [6:0] c2_buf_V_4_q0;
reg   [9:0] c2_buf_V_5_address0;
reg    c2_buf_V_5_ce0;
reg    c2_buf_V_5_we0;
wire   [6:0] c2_buf_V_5_q0;
reg   [9:0] c2_buf_V_6_address0;
reg    c2_buf_V_6_ce0;
reg    c2_buf_V_6_we0;
wire   [6:0] c2_buf_V_6_q0;
reg   [9:0] c2_buf_V_7_address0;
reg    c2_buf_V_7_ce0;
reg    c2_buf_V_7_we0;
wire   [6:0] c2_buf_V_7_q0;
reg   [9:0] c2_buf_V_8_address0;
reg    c2_buf_V_8_ce0;
reg    c2_buf_V_8_we0;
wire   [6:0] c2_buf_V_8_q0;
reg   [9:0] c2_buf_V_9_address0;
reg    c2_buf_V_9_ce0;
reg    c2_buf_V_9_we0;
wire   [6:0] c2_buf_V_9_q0;
reg   [9:0] c2_buf_V_10_address0;
reg    c2_buf_V_10_ce0;
reg    c2_buf_V_10_we0;
wire   [6:0] c2_buf_V_10_q0;
reg   [9:0] c2_buf_V_11_address0;
reg    c2_buf_V_11_ce0;
reg    c2_buf_V_11_we0;
wire   [6:0] c2_buf_V_11_q0;
reg   [9:0] c2_buf_V_12_address0;
reg    c2_buf_V_12_ce0;
reg    c2_buf_V_12_we0;
wire   [6:0] c2_buf_V_12_q0;
reg   [9:0] c2_buf_V_13_address0;
reg    c2_buf_V_13_ce0;
reg    c2_buf_V_13_we0;
wire   [6:0] c2_buf_V_13_q0;
reg   [9:0] c2_buf_V_14_address0;
reg    c2_buf_V_14_ce0;
reg    c2_buf_V_14_we0;
wire   [6:0] c2_buf_V_14_q0;
reg   [9:0] c2_buf_V_15_address0;
reg    c2_buf_V_15_ce0;
reg    c2_buf_V_15_we0;
wire   [6:0] c2_buf_V_15_q0;
reg   [9:0] c2_buf_V_16_address0;
reg    c2_buf_V_16_ce0;
reg    c2_buf_V_16_we0;
wire   [6:0] c2_buf_V_16_q0;
reg   [9:0] c2_buf_V_17_address0;
reg    c2_buf_V_17_ce0;
reg    c2_buf_V_17_we0;
wire   [6:0] c2_buf_V_17_q0;
reg   [9:0] c2_buf_V_18_address0;
reg    c2_buf_V_18_ce0;
reg    c2_buf_V_18_we0;
wire   [6:0] c2_buf_V_18_q0;
reg   [9:0] c2_buf_V_19_address0;
reg    c2_buf_V_19_ce0;
reg    c2_buf_V_19_we0;
wire   [6:0] c2_buf_V_19_q0;
reg   [9:0] c2_buf_V_20_address0;
reg    c2_buf_V_20_ce0;
reg    c2_buf_V_20_we0;
wire   [6:0] c2_buf_V_20_q0;
reg   [9:0] c2_buf_V_21_address0;
reg    c2_buf_V_21_ce0;
reg    c2_buf_V_21_we0;
wire   [6:0] c2_buf_V_21_q0;
reg   [9:0] c2_buf_V_22_address0;
reg    c2_buf_V_22_ce0;
reg    c2_buf_V_22_we0;
wire   [6:0] c2_buf_V_22_q0;
reg   [9:0] c2_buf_V_23_address0;
reg    c2_buf_V_23_ce0;
reg    c2_buf_V_23_we0;
wire   [6:0] c2_buf_V_23_q0;
reg   [9:0] c2_buf_V_24_address0;
reg    c2_buf_V_24_ce0;
reg    c2_buf_V_24_we0;
wire   [6:0] c2_buf_V_24_q0;
reg   [9:0] c2_buf_V_25_address0;
reg    c2_buf_V_25_ce0;
reg    c2_buf_V_25_we0;
wire   [6:0] c2_buf_V_25_q0;
reg   [9:0] c2_buf_V_26_address0;
reg    c2_buf_V_26_ce0;
reg    c2_buf_V_26_we0;
wire   [6:0] c2_buf_V_26_q0;
reg   [9:0] c2_buf_V_27_address0;
reg    c2_buf_V_27_ce0;
reg    c2_buf_V_27_we0;
wire   [6:0] c2_buf_V_27_q0;
reg   [9:0] c2_buf_V_28_address0;
reg    c2_buf_V_28_ce0;
reg    c2_buf_V_28_we0;
wire   [6:0] c2_buf_V_28_q0;
reg   [9:0] c2_buf_V_29_address0;
reg    c2_buf_V_29_ce0;
reg    c2_buf_V_29_we0;
wire   [6:0] c2_buf_V_29_q0;
reg   [9:0] c2_buf_V_30_address0;
reg    c2_buf_V_30_ce0;
reg    c2_buf_V_30_we0;
wire   [6:0] c2_buf_V_30_q0;
reg   [9:0] c2_buf_V_31_address0;
reg    c2_buf_V_31_ce0;
reg    c2_buf_V_31_we0;
wire   [6:0] c2_buf_V_31_q0;
reg   [9:0] c3_buf_V_0_address0;
reg    c3_buf_V_0_ce0;
reg    c3_buf_V_0_we0;
wire   [6:0] c3_buf_V_0_q0;
reg   [9:0] c3_buf_V_1_address0;
reg    c3_buf_V_1_ce0;
reg    c3_buf_V_1_we0;
wire   [6:0] c3_buf_V_1_q0;
reg   [9:0] c3_buf_V_2_address0;
reg    c3_buf_V_2_ce0;
reg    c3_buf_V_2_we0;
wire   [6:0] c3_buf_V_2_q0;
reg   [9:0] c3_buf_V_3_address0;
reg    c3_buf_V_3_ce0;
reg    c3_buf_V_3_we0;
wire   [6:0] c3_buf_V_3_q0;
reg   [9:0] c3_buf_V_4_address0;
reg    c3_buf_V_4_ce0;
reg    c3_buf_V_4_we0;
wire   [6:0] c3_buf_V_4_q0;
reg   [9:0] c3_buf_V_5_address0;
reg    c3_buf_V_5_ce0;
reg    c3_buf_V_5_we0;
wire   [6:0] c3_buf_V_5_q0;
reg   [9:0] c3_buf_V_6_address0;
reg    c3_buf_V_6_ce0;
reg    c3_buf_V_6_we0;
wire   [6:0] c3_buf_V_6_q0;
reg   [9:0] c3_buf_V_7_address0;
reg    c3_buf_V_7_ce0;
reg    c3_buf_V_7_we0;
wire   [6:0] c3_buf_V_7_q0;
reg   [9:0] c3_buf_V_8_address0;
reg    c3_buf_V_8_ce0;
reg    c3_buf_V_8_we0;
wire   [6:0] c3_buf_V_8_q0;
reg   [9:0] c3_buf_V_9_address0;
reg    c3_buf_V_9_ce0;
reg    c3_buf_V_9_we0;
wire   [6:0] c3_buf_V_9_q0;
reg   [9:0] c3_buf_V_10_address0;
reg    c3_buf_V_10_ce0;
reg    c3_buf_V_10_we0;
wire   [6:0] c3_buf_V_10_q0;
reg   [9:0] c3_buf_V_11_address0;
reg    c3_buf_V_11_ce0;
reg    c3_buf_V_11_we0;
wire   [6:0] c3_buf_V_11_q0;
reg   [9:0] c3_buf_V_12_address0;
reg    c3_buf_V_12_ce0;
reg    c3_buf_V_12_we0;
wire   [6:0] c3_buf_V_12_q0;
reg   [9:0] c3_buf_V_13_address0;
reg    c3_buf_V_13_ce0;
reg    c3_buf_V_13_we0;
wire   [6:0] c3_buf_V_13_q0;
reg   [9:0] c3_buf_V_14_address0;
reg    c3_buf_V_14_ce0;
reg    c3_buf_V_14_we0;
wire   [6:0] c3_buf_V_14_q0;
reg   [9:0] c3_buf_V_15_address0;
reg    c3_buf_V_15_ce0;
reg    c3_buf_V_15_we0;
wire   [6:0] c3_buf_V_15_q0;
reg   [9:0] c3_buf_V_16_address0;
reg    c3_buf_V_16_ce0;
reg    c3_buf_V_16_we0;
wire   [6:0] c3_buf_V_16_q0;
reg   [9:0] c3_buf_V_17_address0;
reg    c3_buf_V_17_ce0;
reg    c3_buf_V_17_we0;
wire   [6:0] c3_buf_V_17_q0;
reg   [9:0] c3_buf_V_18_address0;
reg    c3_buf_V_18_ce0;
reg    c3_buf_V_18_we0;
wire   [6:0] c3_buf_V_18_q0;
reg   [9:0] c3_buf_V_19_address0;
reg    c3_buf_V_19_ce0;
reg    c3_buf_V_19_we0;
wire   [6:0] c3_buf_V_19_q0;
reg   [9:0] c3_buf_V_20_address0;
reg    c3_buf_V_20_ce0;
reg    c3_buf_V_20_we0;
wire   [6:0] c3_buf_V_20_q0;
reg   [9:0] c3_buf_V_21_address0;
reg    c3_buf_V_21_ce0;
reg    c3_buf_V_21_we0;
wire   [6:0] c3_buf_V_21_q0;
reg   [9:0] c3_buf_V_22_address0;
reg    c3_buf_V_22_ce0;
reg    c3_buf_V_22_we0;
wire   [6:0] c3_buf_V_22_q0;
reg   [9:0] c3_buf_V_23_address0;
reg    c3_buf_V_23_ce0;
reg    c3_buf_V_23_we0;
wire   [6:0] c3_buf_V_23_q0;
reg   [9:0] c3_buf_V_24_address0;
reg    c3_buf_V_24_ce0;
reg    c3_buf_V_24_we0;
wire   [6:0] c3_buf_V_24_q0;
reg   [9:0] c3_buf_V_25_address0;
reg    c3_buf_V_25_ce0;
reg    c3_buf_V_25_we0;
wire   [6:0] c3_buf_V_25_q0;
reg   [9:0] c3_buf_V_26_address0;
reg    c3_buf_V_26_ce0;
reg    c3_buf_V_26_we0;
wire   [6:0] c3_buf_V_26_q0;
reg   [9:0] c3_buf_V_27_address0;
reg    c3_buf_V_27_ce0;
reg    c3_buf_V_27_we0;
wire   [6:0] c3_buf_V_27_q0;
reg   [9:0] c3_buf_V_28_address0;
reg    c3_buf_V_28_ce0;
reg    c3_buf_V_28_we0;
wire   [6:0] c3_buf_V_28_q0;
reg   [9:0] c3_buf_V_29_address0;
reg    c3_buf_V_29_ce0;
reg    c3_buf_V_29_we0;
wire   [6:0] c3_buf_V_29_q0;
reg   [9:0] c3_buf_V_30_address0;
reg    c3_buf_V_30_ce0;
reg    c3_buf_V_30_we0;
wire   [6:0] c3_buf_V_30_q0;
reg   [9:0] c3_buf_V_31_address0;
reg    c3_buf_V_31_ce0;
reg    c3_buf_V_31_we0;
wire   [6:0] c3_buf_V_31_q0;
reg   [9:0] c3_buf_V_32_address0;
reg    c3_buf_V_32_ce0;
reg    c3_buf_V_32_we0;
wire   [6:0] c3_buf_V_32_q0;
reg   [9:0] c3_buf_V_33_address0;
reg    c3_buf_V_33_ce0;
reg    c3_buf_V_33_we0;
wire   [6:0] c3_buf_V_33_q0;
reg   [9:0] c3_buf_V_34_address0;
reg    c3_buf_V_34_ce0;
reg    c3_buf_V_34_we0;
wire   [6:0] c3_buf_V_34_q0;
reg   [9:0] c3_buf_V_35_address0;
reg    c3_buf_V_35_ce0;
reg    c3_buf_V_35_we0;
wire   [6:0] c3_buf_V_35_q0;
reg   [9:0] c3_buf_V_36_address0;
reg    c3_buf_V_36_ce0;
reg    c3_buf_V_36_we0;
wire   [6:0] c3_buf_V_36_q0;
reg   [9:0] c3_buf_V_37_address0;
reg    c3_buf_V_37_ce0;
reg    c3_buf_V_37_we0;
wire   [6:0] c3_buf_V_37_q0;
reg   [9:0] c3_buf_V_38_address0;
reg    c3_buf_V_38_ce0;
reg    c3_buf_V_38_we0;
wire   [6:0] c3_buf_V_38_q0;
reg   [9:0] c3_buf_V_39_address0;
reg    c3_buf_V_39_ce0;
reg    c3_buf_V_39_we0;
wire   [6:0] c3_buf_V_39_q0;
reg   [9:0] c3_buf_V_40_address0;
reg    c3_buf_V_40_ce0;
reg    c3_buf_V_40_we0;
wire   [6:0] c3_buf_V_40_q0;
reg   [9:0] c3_buf_V_41_address0;
reg    c3_buf_V_41_ce0;
reg    c3_buf_V_41_we0;
wire   [6:0] c3_buf_V_41_q0;
reg   [9:0] c3_buf_V_42_address0;
reg    c3_buf_V_42_ce0;
reg    c3_buf_V_42_we0;
wire   [6:0] c3_buf_V_42_q0;
reg   [9:0] c3_buf_V_43_address0;
reg    c3_buf_V_43_ce0;
reg    c3_buf_V_43_we0;
wire   [6:0] c3_buf_V_43_q0;
reg   [9:0] c3_buf_V_44_address0;
reg    c3_buf_V_44_ce0;
reg    c3_buf_V_44_we0;
wire   [6:0] c3_buf_V_44_q0;
reg   [9:0] c3_buf_V_45_address0;
reg    c3_buf_V_45_ce0;
reg    c3_buf_V_45_we0;
wire   [6:0] c3_buf_V_45_q0;
reg   [9:0] c3_buf_V_46_address0;
reg    c3_buf_V_46_ce0;
reg    c3_buf_V_46_we0;
wire   [6:0] c3_buf_V_46_q0;
reg   [9:0] c3_buf_V_47_address0;
reg    c3_buf_V_47_ce0;
reg    c3_buf_V_47_we0;
wire   [6:0] c3_buf_V_47_q0;
reg   [9:0] c3_buf_V_48_address0;
reg    c3_buf_V_48_ce0;
reg    c3_buf_V_48_we0;
wire   [6:0] c3_buf_V_48_q0;
reg   [9:0] c3_buf_V_49_address0;
reg    c3_buf_V_49_ce0;
reg    c3_buf_V_49_we0;
wire   [6:0] c3_buf_V_49_q0;
reg   [9:0] c3_buf_V_50_address0;
reg    c3_buf_V_50_ce0;
reg    c3_buf_V_50_we0;
wire   [6:0] c3_buf_V_50_q0;
reg   [9:0] c3_buf_V_51_address0;
reg    c3_buf_V_51_ce0;
reg    c3_buf_V_51_we0;
wire   [6:0] c3_buf_V_51_q0;
reg   [9:0] c3_buf_V_52_address0;
reg    c3_buf_V_52_ce0;
reg    c3_buf_V_52_we0;
wire   [6:0] c3_buf_V_52_q0;
reg   [9:0] c3_buf_V_53_address0;
reg    c3_buf_V_53_ce0;
reg    c3_buf_V_53_we0;
wire   [6:0] c3_buf_V_53_q0;
reg   [9:0] c3_buf_V_54_address0;
reg    c3_buf_V_54_ce0;
reg    c3_buf_V_54_we0;
wire   [6:0] c3_buf_V_54_q0;
reg   [9:0] c3_buf_V_55_address0;
reg    c3_buf_V_55_ce0;
reg    c3_buf_V_55_we0;
wire   [6:0] c3_buf_V_55_q0;
reg   [9:0] c3_buf_V_56_address0;
reg    c3_buf_V_56_ce0;
reg    c3_buf_V_56_we0;
wire   [6:0] c3_buf_V_56_q0;
reg   [9:0] c3_buf_V_57_address0;
reg    c3_buf_V_57_ce0;
reg    c3_buf_V_57_we0;
wire   [6:0] c3_buf_V_57_q0;
reg   [9:0] c3_buf_V_58_address0;
reg    c3_buf_V_58_ce0;
reg    c3_buf_V_58_we0;
wire   [6:0] c3_buf_V_58_q0;
reg   [9:0] c3_buf_V_59_address0;
reg    c3_buf_V_59_ce0;
reg    c3_buf_V_59_we0;
wire   [6:0] c3_buf_V_59_q0;
reg   [9:0] c3_buf_V_60_address0;
reg    c3_buf_V_60_ce0;
reg    c3_buf_V_60_we0;
wire   [6:0] c3_buf_V_60_q0;
reg   [9:0] c3_buf_V_61_address0;
reg    c3_buf_V_61_ce0;
reg    c3_buf_V_61_we0;
wire   [6:0] c3_buf_V_61_q0;
reg   [9:0] c3_buf_V_62_address0;
reg    c3_buf_V_62_ce0;
reg    c3_buf_V_62_we0;
wire   [6:0] c3_buf_V_62_q0;
reg   [9:0] c3_buf_V_63_address0;
reg    c3_buf_V_63_ce0;
reg    c3_buf_V_63_we0;
wire   [6:0] c3_buf_V_63_q0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_start;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_done;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_idle;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_ready;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input_r_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input_r_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input1_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input1_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input2_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input2_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input3_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input3_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input4_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input4_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input5_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input5_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input6_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input6_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input7_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input7_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input8_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input8_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input9_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input9_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input10_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input10_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input11_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input11_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input12_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input12_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input13_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input13_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input14_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input14_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input15_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input15_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input16_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input16_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input17_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input17_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input18_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input18_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input19_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input19_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input20_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input20_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input21_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input21_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input22_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input22_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input23_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input23_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input24_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input24_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input25_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input25_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input26_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input26_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input27_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input27_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input28_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input28_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input29_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input29_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input30_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input30_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input31_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input31_ce0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output_r_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output_r_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output_r_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output_r_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output32_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output32_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output32_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output32_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output33_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output33_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output33_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output33_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output34_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output34_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output34_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output34_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output35_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output35_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output35_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output35_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output36_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output36_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output36_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output36_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output37_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output37_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output37_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output37_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output38_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output38_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output38_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output38_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output39_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output39_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output39_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output39_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output40_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output40_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output40_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output40_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output41_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output41_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output41_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output41_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output42_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output42_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output42_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output42_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output43_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output43_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output43_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output43_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output44_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output44_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output44_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output44_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output45_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output45_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output45_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output45_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output46_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output46_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output46_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output46_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output47_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output47_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output47_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output47_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output48_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output48_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output48_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output48_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output49_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output49_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output49_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output49_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output50_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output50_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output50_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output50_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output51_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output51_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output51_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output51_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output52_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output52_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output52_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output52_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output53_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output53_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output53_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output53_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output54_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output54_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output54_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output54_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output55_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output55_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output55_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output55_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output56_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output56_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output56_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output56_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output57_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output57_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output57_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output57_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output58_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output58_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output58_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output58_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output59_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output59_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output59_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output59_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output60_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output60_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output60_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output60_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output61_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output61_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output61_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output61_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output62_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output62_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output62_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output62_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output63_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output63_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output63_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output63_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output64_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output64_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output64_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output64_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output65_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output65_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output65_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output65_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output66_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output66_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output66_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output66_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output67_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output67_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output67_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output67_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output68_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output68_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output68_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output68_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output69_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output69_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output69_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output69_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output70_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output70_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output70_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output70_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output71_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output71_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output71_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output71_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output72_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output72_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output72_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output72_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output73_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output73_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output73_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output73_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output74_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output74_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output74_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output74_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output75_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output75_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output75_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output75_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output76_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output76_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output76_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output76_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output77_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output77_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output77_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output77_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output78_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output78_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output78_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output78_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output79_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output79_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output79_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output79_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output80_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output80_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output80_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output80_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output81_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output81_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output81_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output81_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output82_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output82_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output82_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output82_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output83_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output83_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output83_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output83_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output84_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output84_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output84_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output84_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output85_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output85_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output85_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output85_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output86_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output86_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output86_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output86_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output87_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output87_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output87_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output87_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output88_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output88_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output88_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output88_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output89_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output89_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output89_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output89_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output90_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output90_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output90_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output90_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output91_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output91_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output91_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output91_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output92_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output92_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output92_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output92_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output93_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output93_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output93_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output93_d0;
wire   [9:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output94_address0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output94_ce0;
wire    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output94_we0;
wire   [6:0] grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output94_d0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_start;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_done;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_idle;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_ready;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input_r_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input_r_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input1_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input1_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input2_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input2_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input3_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input3_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input4_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input4_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input5_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input5_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input6_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input6_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input7_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input7_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input8_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input8_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input9_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input9_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input10_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input10_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input11_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input11_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input12_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input12_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input13_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input13_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input14_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input14_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input15_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input15_ce0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output_r_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output_r_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output_r_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output_r_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output16_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output16_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output16_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output16_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output17_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output17_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output17_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output17_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output18_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output18_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output18_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output18_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output19_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output19_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output19_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output19_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output20_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output20_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output20_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output20_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output21_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output21_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output21_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output21_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output22_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output22_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output22_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output22_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output23_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output23_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output23_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output23_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output24_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output24_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output24_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output24_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output25_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output25_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output25_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output25_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output26_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output26_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output26_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output26_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output27_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output27_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output27_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output27_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output28_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output28_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output28_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output28_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output29_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output29_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output29_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output29_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output30_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output30_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output30_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output30_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output31_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output31_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output31_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output31_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output32_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output32_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output32_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output32_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output33_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output33_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output33_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output33_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output34_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output34_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output34_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output34_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output35_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output35_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output35_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output35_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output36_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output36_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output36_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output36_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output37_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output37_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output37_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output37_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output38_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output38_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output38_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output38_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output39_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output39_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output39_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output39_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output40_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output40_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output40_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output40_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output41_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output41_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output41_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output41_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output42_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output42_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output42_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output42_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output43_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output43_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output43_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output43_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output44_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output44_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output44_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output44_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output45_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output45_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output45_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output45_d0;
wire   [9:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output46_address0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output46_ce0;
wire    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output46_we0;
wire   [6:0] grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output46_d0;
wire    grp_global_avgpool_64_800_s_fu_2130_ap_start;
wire    grp_global_avgpool_64_800_s_fu_2130_ap_done;
wire    grp_global_avgpool_64_800_s_fu_2130_ap_idle;
wire    grp_global_avgpool_64_800_s_fu_2130_ap_ready;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input_r_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input_r_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input1_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input1_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input2_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input2_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input3_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input3_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input4_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input4_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input5_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input5_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input6_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input6_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input7_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input7_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input8_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input8_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input9_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input9_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input10_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input10_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input11_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input11_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input12_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input12_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input13_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input13_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input14_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input14_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input15_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input15_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input16_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input16_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input17_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input17_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input18_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input18_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input19_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input19_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input20_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input20_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input21_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input21_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input22_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input22_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input23_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input23_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input24_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input24_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input25_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input25_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input26_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input26_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input27_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input27_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input28_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input28_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input29_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input29_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input30_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input30_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input31_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input31_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input32_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input32_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input33_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input33_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input34_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input34_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input35_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input35_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input36_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input36_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input37_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input37_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input38_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input38_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input39_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input39_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input40_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input40_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input41_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input41_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input42_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input42_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input43_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input43_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input44_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input44_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input45_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input45_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input46_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input46_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input47_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input47_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input48_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input48_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input49_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input49_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input50_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input50_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input51_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input51_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input52_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input52_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input53_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input53_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input54_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input54_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input55_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input55_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input56_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input56_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input57_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input57_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input58_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input58_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input59_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input59_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input60_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input60_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input61_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input61_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input62_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input62_ce0;
wire   [9:0] grp_global_avgpool_64_800_s_fu_2130_input63_address0;
wire    grp_global_avgpool_64_800_s_fu_2130_input63_ce0;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_0;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_1;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_2;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_3;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_4;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_5;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_6;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_7;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_8;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_9;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_10;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_11;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_12;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_13;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_14;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_15;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_16;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_17;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_18;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_19;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_20;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_21;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_22;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_23;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_24;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_25;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_26;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_27;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_28;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_29;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_30;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_31;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_32;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_33;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_34;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_35;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_36;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_37;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_38;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_39;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_40;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_41;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_42;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_43;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_44;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_45;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_46;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_47;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_48;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_49;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_50;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_51;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_52;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_53;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_54;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_55;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_56;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_57;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_58;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_59;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_60;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_61;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_62;
wire   [23:0] grp_global_avgpool_64_800_s_fu_2130_ap_return_63;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_start;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_done;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_idle;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_ready;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_input_r_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_input_r_ce0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output_r_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output_r_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output_r_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output_r_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output1_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output1_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output1_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output1_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output2_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output2_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output2_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output2_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output3_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output3_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output3_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output3_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output4_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output4_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output4_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output4_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output5_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output5_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output5_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output5_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output6_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output6_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output6_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output6_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output7_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output7_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output7_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output7_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output8_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output8_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output8_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output8_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output9_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output9_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output9_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output9_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output10_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output10_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output10_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output10_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output11_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output11_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output11_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output11_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output12_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output12_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output12_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output12_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output13_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output13_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output13_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output13_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output14_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output14_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output14_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output14_d0;
wire   [9:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output15_address0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output15_ce0;
wire    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output15_we0;
wire   [6:0] grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output15_d0;
wire    grp_fc_layer_64_2_s_fu_2219_ap_start;
wire    grp_fc_layer_64_2_s_fu_2219_ap_done;
wire    grp_fc_layer_64_2_s_fu_2219_ap_idle;
wire    grp_fc_layer_64_2_s_fu_2219_ap_ready;
wire   [23:0] grp_fc_layer_64_2_s_fu_2219_ap_return_0;
wire   [23:0] grp_fc_layer_64_2_s_fu_2219_ap_return_1;
reg   [9:0] i_reg_1263;
reg    grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
reg    grp_global_avgpool_64_800_s_fu_2130_ap_start_reg;
wire    ap_CS_fsm_state9;
reg    grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    grp_fc_layer_64_2_s_fu_2219_ap_start_reg;
wire   [63:0] zext_ln41_fu_2315_p1;
wire   [23:0] r_fu_2659_p2;
wire   [0:0] icmp_ln886_fu_2653_p2;
wire   [23:0] ret_fu_2665_p2;
wire   [23:0] r_1_fu_2671_p2;
wire   [23:0] result_data_V_2_fu_2677_p3;
wire   [32:0] or_ln_fu_2685_p3;
wire    regslice_both_m_axis_V_U_apdone_blk;
reg    ap_block_state12;
reg   [11:0] ap_NS_fsm;
wire    regslice_both_s_axis_V_U_apdone_blk;
wire   [15:0] s_axis_V_TDATA_int_regslice;
wire    s_axis_V_TVALID_int_regslice;
reg    s_axis_V_TREADY_int_regslice;
wire    regslice_both_s_axis_V_U_ack_in;
wire   [63:0] m_axis_V_TDATA_int_regslice;
reg    m_axis_V_TVALID_int_regslice;
wire    m_axis_V_TREADY_int_regslice;
wire    regslice_both_m_axis_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
#0 grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_start_reg = 1'b0;
#0 grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_start_reg = 1'b0;
#0 grp_global_avgpool_64_800_s_fu_2130_ap_start_reg = 1'b0;
#0 grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_start_reg = 1'b0;
#0 grp_fc_layer_64_2_s_fu_2219_ap_start_reg = 1'b0;
end

cnn_top_in_buf_V_0 #(
    .DataWidth( 8 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
in_buf_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(in_buf_V_0_address0),
    .ce0(in_buf_V_0_ce0),
    .we0(in_buf_V_0_we0),
    .d0(in_buf_V_0_d0),
    .q0(in_buf_V_0_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_0_address0),
    .ce0(c1_buf_V_0_ce0),
    .we0(c1_buf_V_0_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output_r_d0),
    .q0(c1_buf_V_0_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_1_address0),
    .ce0(c1_buf_V_1_ce0),
    .we0(c1_buf_V_1_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output1_d0),
    .q0(c1_buf_V_1_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_2_address0),
    .ce0(c1_buf_V_2_ce0),
    .we0(c1_buf_V_2_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output2_d0),
    .q0(c1_buf_V_2_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_3_address0),
    .ce0(c1_buf_V_3_ce0),
    .we0(c1_buf_V_3_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output3_d0),
    .q0(c1_buf_V_3_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_4_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_4_address0),
    .ce0(c1_buf_V_4_ce0),
    .we0(c1_buf_V_4_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output4_d0),
    .q0(c1_buf_V_4_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_5_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_5_address0),
    .ce0(c1_buf_V_5_ce0),
    .we0(c1_buf_V_5_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output5_d0),
    .q0(c1_buf_V_5_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_6_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_6_address0),
    .ce0(c1_buf_V_6_ce0),
    .we0(c1_buf_V_6_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output6_d0),
    .q0(c1_buf_V_6_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_7_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_7_address0),
    .ce0(c1_buf_V_7_ce0),
    .we0(c1_buf_V_7_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output7_d0),
    .q0(c1_buf_V_7_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_8_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_8_address0),
    .ce0(c1_buf_V_8_ce0),
    .we0(c1_buf_V_8_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output8_d0),
    .q0(c1_buf_V_8_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_9_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_9_address0),
    .ce0(c1_buf_V_9_ce0),
    .we0(c1_buf_V_9_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output9_d0),
    .q0(c1_buf_V_9_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_10_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_10_address0),
    .ce0(c1_buf_V_10_ce0),
    .we0(c1_buf_V_10_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output10_d0),
    .q0(c1_buf_V_10_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_11_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_11_address0),
    .ce0(c1_buf_V_11_ce0),
    .we0(c1_buf_V_11_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output11_d0),
    .q0(c1_buf_V_11_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_12_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_12_address0),
    .ce0(c1_buf_V_12_ce0),
    .we0(c1_buf_V_12_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output12_d0),
    .q0(c1_buf_V_12_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_13_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_13_address0),
    .ce0(c1_buf_V_13_ce0),
    .we0(c1_buf_V_13_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output13_d0),
    .q0(c1_buf_V_13_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_14_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_14_address0),
    .ce0(c1_buf_V_14_ce0),
    .we0(c1_buf_V_14_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output14_d0),
    .q0(c1_buf_V_14_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c1_buf_V_15_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c1_buf_V_15_address0),
    .ce0(c1_buf_V_15_ce0),
    .we0(c1_buf_V_15_we0),
    .d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output15_d0),
    .q0(c1_buf_V_15_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_0_address0),
    .ce0(c2_buf_V_0_ce0),
    .we0(c2_buf_V_0_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output_r_d0),
    .q0(c2_buf_V_0_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_1_address0),
    .ce0(c2_buf_V_1_ce0),
    .we0(c2_buf_V_1_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output16_d0),
    .q0(c2_buf_V_1_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_2_address0),
    .ce0(c2_buf_V_2_ce0),
    .we0(c2_buf_V_2_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output17_d0),
    .q0(c2_buf_V_2_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_3_address0),
    .ce0(c2_buf_V_3_ce0),
    .we0(c2_buf_V_3_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output18_d0),
    .q0(c2_buf_V_3_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_4_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_4_address0),
    .ce0(c2_buf_V_4_ce0),
    .we0(c2_buf_V_4_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output19_d0),
    .q0(c2_buf_V_4_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_5_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_5_address0),
    .ce0(c2_buf_V_5_ce0),
    .we0(c2_buf_V_5_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output20_d0),
    .q0(c2_buf_V_5_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_6_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_6_address0),
    .ce0(c2_buf_V_6_ce0),
    .we0(c2_buf_V_6_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output21_d0),
    .q0(c2_buf_V_6_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_7_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_7_address0),
    .ce0(c2_buf_V_7_ce0),
    .we0(c2_buf_V_7_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output22_d0),
    .q0(c2_buf_V_7_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_8_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_8_address0),
    .ce0(c2_buf_V_8_ce0),
    .we0(c2_buf_V_8_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output23_d0),
    .q0(c2_buf_V_8_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_9_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_9_address0),
    .ce0(c2_buf_V_9_ce0),
    .we0(c2_buf_V_9_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output24_d0),
    .q0(c2_buf_V_9_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_10_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_10_address0),
    .ce0(c2_buf_V_10_ce0),
    .we0(c2_buf_V_10_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output25_d0),
    .q0(c2_buf_V_10_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_11_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_11_address0),
    .ce0(c2_buf_V_11_ce0),
    .we0(c2_buf_V_11_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output26_d0),
    .q0(c2_buf_V_11_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_12_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_12_address0),
    .ce0(c2_buf_V_12_ce0),
    .we0(c2_buf_V_12_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output27_d0),
    .q0(c2_buf_V_12_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_13_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_13_address0),
    .ce0(c2_buf_V_13_ce0),
    .we0(c2_buf_V_13_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output28_d0),
    .q0(c2_buf_V_13_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_14_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_14_address0),
    .ce0(c2_buf_V_14_ce0),
    .we0(c2_buf_V_14_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output29_d0),
    .q0(c2_buf_V_14_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_15_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_15_address0),
    .ce0(c2_buf_V_15_ce0),
    .we0(c2_buf_V_15_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output30_d0),
    .q0(c2_buf_V_15_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_16_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_16_address0),
    .ce0(c2_buf_V_16_ce0),
    .we0(c2_buf_V_16_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output31_d0),
    .q0(c2_buf_V_16_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_17_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_17_address0),
    .ce0(c2_buf_V_17_ce0),
    .we0(c2_buf_V_17_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output32_d0),
    .q0(c2_buf_V_17_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_18_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_18_address0),
    .ce0(c2_buf_V_18_ce0),
    .we0(c2_buf_V_18_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output33_d0),
    .q0(c2_buf_V_18_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_19_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_19_address0),
    .ce0(c2_buf_V_19_ce0),
    .we0(c2_buf_V_19_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output34_d0),
    .q0(c2_buf_V_19_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_20_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_20_address0),
    .ce0(c2_buf_V_20_ce0),
    .we0(c2_buf_V_20_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output35_d0),
    .q0(c2_buf_V_20_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_21_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_21_address0),
    .ce0(c2_buf_V_21_ce0),
    .we0(c2_buf_V_21_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output36_d0),
    .q0(c2_buf_V_21_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_22_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_22_address0),
    .ce0(c2_buf_V_22_ce0),
    .we0(c2_buf_V_22_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output37_d0),
    .q0(c2_buf_V_22_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_23_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_23_address0),
    .ce0(c2_buf_V_23_ce0),
    .we0(c2_buf_V_23_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output38_d0),
    .q0(c2_buf_V_23_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_24_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_24_address0),
    .ce0(c2_buf_V_24_ce0),
    .we0(c2_buf_V_24_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output39_d0),
    .q0(c2_buf_V_24_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_25_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_25_address0),
    .ce0(c2_buf_V_25_ce0),
    .we0(c2_buf_V_25_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output40_d0),
    .q0(c2_buf_V_25_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_26_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_26_address0),
    .ce0(c2_buf_V_26_ce0),
    .we0(c2_buf_V_26_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output41_d0),
    .q0(c2_buf_V_26_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_27_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_27_address0),
    .ce0(c2_buf_V_27_ce0),
    .we0(c2_buf_V_27_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output42_d0),
    .q0(c2_buf_V_27_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_28_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_28_address0),
    .ce0(c2_buf_V_28_ce0),
    .we0(c2_buf_V_28_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output43_d0),
    .q0(c2_buf_V_28_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_29_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_29_address0),
    .ce0(c2_buf_V_29_ce0),
    .we0(c2_buf_V_29_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output44_d0),
    .q0(c2_buf_V_29_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_30_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_30_address0),
    .ce0(c2_buf_V_30_ce0),
    .we0(c2_buf_V_30_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output45_d0),
    .q0(c2_buf_V_30_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c2_buf_V_31_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c2_buf_V_31_address0),
    .ce0(c2_buf_V_31_ce0),
    .we0(c2_buf_V_31_we0),
    .d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output46_d0),
    .q0(c2_buf_V_31_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_0_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_0_address0),
    .ce0(c3_buf_V_0_ce0),
    .we0(c3_buf_V_0_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output_r_d0),
    .q0(c3_buf_V_0_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_1_address0),
    .ce0(c3_buf_V_1_ce0),
    .we0(c3_buf_V_1_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output32_d0),
    .q0(c3_buf_V_1_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_2_address0),
    .ce0(c3_buf_V_2_ce0),
    .we0(c3_buf_V_2_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output33_d0),
    .q0(c3_buf_V_2_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_3_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_3_address0),
    .ce0(c3_buf_V_3_ce0),
    .we0(c3_buf_V_3_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output34_d0),
    .q0(c3_buf_V_3_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_4_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_4_address0),
    .ce0(c3_buf_V_4_ce0),
    .we0(c3_buf_V_4_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output35_d0),
    .q0(c3_buf_V_4_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_5_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_5_address0),
    .ce0(c3_buf_V_5_ce0),
    .we0(c3_buf_V_5_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output36_d0),
    .q0(c3_buf_V_5_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_6_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_6_address0),
    .ce0(c3_buf_V_6_ce0),
    .we0(c3_buf_V_6_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output37_d0),
    .q0(c3_buf_V_6_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_7_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_7_address0),
    .ce0(c3_buf_V_7_ce0),
    .we0(c3_buf_V_7_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output38_d0),
    .q0(c3_buf_V_7_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_8_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_8_address0),
    .ce0(c3_buf_V_8_ce0),
    .we0(c3_buf_V_8_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output39_d0),
    .q0(c3_buf_V_8_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_9_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_9_address0),
    .ce0(c3_buf_V_9_ce0),
    .we0(c3_buf_V_9_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output40_d0),
    .q0(c3_buf_V_9_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_10_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_10_address0),
    .ce0(c3_buf_V_10_ce0),
    .we0(c3_buf_V_10_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output41_d0),
    .q0(c3_buf_V_10_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_11_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_11_address0),
    .ce0(c3_buf_V_11_ce0),
    .we0(c3_buf_V_11_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output42_d0),
    .q0(c3_buf_V_11_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_12_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_12_address0),
    .ce0(c3_buf_V_12_ce0),
    .we0(c3_buf_V_12_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output43_d0),
    .q0(c3_buf_V_12_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_13_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_13_address0),
    .ce0(c3_buf_V_13_ce0),
    .we0(c3_buf_V_13_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output44_d0),
    .q0(c3_buf_V_13_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_14_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_14_address0),
    .ce0(c3_buf_V_14_ce0),
    .we0(c3_buf_V_14_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output45_d0),
    .q0(c3_buf_V_14_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_15_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_15_address0),
    .ce0(c3_buf_V_15_ce0),
    .we0(c3_buf_V_15_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output46_d0),
    .q0(c3_buf_V_15_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_16_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_16_address0),
    .ce0(c3_buf_V_16_ce0),
    .we0(c3_buf_V_16_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output47_d0),
    .q0(c3_buf_V_16_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_17_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_17_address0),
    .ce0(c3_buf_V_17_ce0),
    .we0(c3_buf_V_17_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output48_d0),
    .q0(c3_buf_V_17_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_18_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_18_address0),
    .ce0(c3_buf_V_18_ce0),
    .we0(c3_buf_V_18_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output49_d0),
    .q0(c3_buf_V_18_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_19_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_19_address0),
    .ce0(c3_buf_V_19_ce0),
    .we0(c3_buf_V_19_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output50_d0),
    .q0(c3_buf_V_19_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_20_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_20_address0),
    .ce0(c3_buf_V_20_ce0),
    .we0(c3_buf_V_20_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output51_d0),
    .q0(c3_buf_V_20_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_21_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_21_address0),
    .ce0(c3_buf_V_21_ce0),
    .we0(c3_buf_V_21_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output52_d0),
    .q0(c3_buf_V_21_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_22_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_22_address0),
    .ce0(c3_buf_V_22_ce0),
    .we0(c3_buf_V_22_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output53_d0),
    .q0(c3_buf_V_22_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_23_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_23_address0),
    .ce0(c3_buf_V_23_ce0),
    .we0(c3_buf_V_23_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output54_d0),
    .q0(c3_buf_V_23_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_24_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_24_address0),
    .ce0(c3_buf_V_24_ce0),
    .we0(c3_buf_V_24_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output55_d0),
    .q0(c3_buf_V_24_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_25_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_25_address0),
    .ce0(c3_buf_V_25_ce0),
    .we0(c3_buf_V_25_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output56_d0),
    .q0(c3_buf_V_25_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_26_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_26_address0),
    .ce0(c3_buf_V_26_ce0),
    .we0(c3_buf_V_26_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output57_d0),
    .q0(c3_buf_V_26_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_27_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_27_address0),
    .ce0(c3_buf_V_27_ce0),
    .we0(c3_buf_V_27_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output58_d0),
    .q0(c3_buf_V_27_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_28_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_28_address0),
    .ce0(c3_buf_V_28_ce0),
    .we0(c3_buf_V_28_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output59_d0),
    .q0(c3_buf_V_28_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_29_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_29_address0),
    .ce0(c3_buf_V_29_ce0),
    .we0(c3_buf_V_29_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output60_d0),
    .q0(c3_buf_V_29_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_30_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_30_address0),
    .ce0(c3_buf_V_30_ce0),
    .we0(c3_buf_V_30_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output61_d0),
    .q0(c3_buf_V_30_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_31_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_31_address0),
    .ce0(c3_buf_V_31_ce0),
    .we0(c3_buf_V_31_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output62_d0),
    .q0(c3_buf_V_31_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_32_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_32_address0),
    .ce0(c3_buf_V_32_ce0),
    .we0(c3_buf_V_32_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output63_d0),
    .q0(c3_buf_V_32_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_33_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_33_address0),
    .ce0(c3_buf_V_33_ce0),
    .we0(c3_buf_V_33_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output64_d0),
    .q0(c3_buf_V_33_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_34_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_34_address0),
    .ce0(c3_buf_V_34_ce0),
    .we0(c3_buf_V_34_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output65_d0),
    .q0(c3_buf_V_34_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_35_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_35_address0),
    .ce0(c3_buf_V_35_ce0),
    .we0(c3_buf_V_35_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output66_d0),
    .q0(c3_buf_V_35_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_36_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_36_address0),
    .ce0(c3_buf_V_36_ce0),
    .we0(c3_buf_V_36_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output67_d0),
    .q0(c3_buf_V_36_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_37_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_37_address0),
    .ce0(c3_buf_V_37_ce0),
    .we0(c3_buf_V_37_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output68_d0),
    .q0(c3_buf_V_37_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_38_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_38_address0),
    .ce0(c3_buf_V_38_ce0),
    .we0(c3_buf_V_38_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output69_d0),
    .q0(c3_buf_V_38_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_39_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_39_address0),
    .ce0(c3_buf_V_39_ce0),
    .we0(c3_buf_V_39_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output70_d0),
    .q0(c3_buf_V_39_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_40_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_40_address0),
    .ce0(c3_buf_V_40_ce0),
    .we0(c3_buf_V_40_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output71_d0),
    .q0(c3_buf_V_40_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_41_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_41_address0),
    .ce0(c3_buf_V_41_ce0),
    .we0(c3_buf_V_41_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output72_d0),
    .q0(c3_buf_V_41_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_42_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_42_address0),
    .ce0(c3_buf_V_42_ce0),
    .we0(c3_buf_V_42_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output73_d0),
    .q0(c3_buf_V_42_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_43_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_43_address0),
    .ce0(c3_buf_V_43_ce0),
    .we0(c3_buf_V_43_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output74_d0),
    .q0(c3_buf_V_43_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_44_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_44_address0),
    .ce0(c3_buf_V_44_ce0),
    .we0(c3_buf_V_44_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output75_d0),
    .q0(c3_buf_V_44_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_45_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_45_address0),
    .ce0(c3_buf_V_45_ce0),
    .we0(c3_buf_V_45_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output76_d0),
    .q0(c3_buf_V_45_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_46_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_46_address0),
    .ce0(c3_buf_V_46_ce0),
    .we0(c3_buf_V_46_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output77_d0),
    .q0(c3_buf_V_46_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_47_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_47_address0),
    .ce0(c3_buf_V_47_ce0),
    .we0(c3_buf_V_47_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output78_d0),
    .q0(c3_buf_V_47_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_48_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_48_address0),
    .ce0(c3_buf_V_48_ce0),
    .we0(c3_buf_V_48_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output79_d0),
    .q0(c3_buf_V_48_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_49_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_49_address0),
    .ce0(c3_buf_V_49_ce0),
    .we0(c3_buf_V_49_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output80_d0),
    .q0(c3_buf_V_49_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_50_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_50_address0),
    .ce0(c3_buf_V_50_ce0),
    .we0(c3_buf_V_50_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output81_d0),
    .q0(c3_buf_V_50_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_51_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_51_address0),
    .ce0(c3_buf_V_51_ce0),
    .we0(c3_buf_V_51_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output82_d0),
    .q0(c3_buf_V_51_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_52_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_52_address0),
    .ce0(c3_buf_V_52_ce0),
    .we0(c3_buf_V_52_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output83_d0),
    .q0(c3_buf_V_52_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_53_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_53_address0),
    .ce0(c3_buf_V_53_ce0),
    .we0(c3_buf_V_53_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output84_d0),
    .q0(c3_buf_V_53_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_54_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_54_address0),
    .ce0(c3_buf_V_54_ce0),
    .we0(c3_buf_V_54_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output85_d0),
    .q0(c3_buf_V_54_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_55_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_55_address0),
    .ce0(c3_buf_V_55_ce0),
    .we0(c3_buf_V_55_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output86_d0),
    .q0(c3_buf_V_55_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_56_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_56_address0),
    .ce0(c3_buf_V_56_ce0),
    .we0(c3_buf_V_56_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output87_d0),
    .q0(c3_buf_V_56_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_57_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_57_address0),
    .ce0(c3_buf_V_57_ce0),
    .we0(c3_buf_V_57_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output88_d0),
    .q0(c3_buf_V_57_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_58_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_58_address0),
    .ce0(c3_buf_V_58_ce0),
    .we0(c3_buf_V_58_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output89_d0),
    .q0(c3_buf_V_58_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_59_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_59_address0),
    .ce0(c3_buf_V_59_ce0),
    .we0(c3_buf_V_59_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output90_d0),
    .q0(c3_buf_V_59_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_60_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_60_address0),
    .ce0(c3_buf_V_60_ce0),
    .we0(c3_buf_V_60_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output91_d0),
    .q0(c3_buf_V_60_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_61_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_61_address0),
    .ce0(c3_buf_V_61_ce0),
    .we0(c3_buf_V_61_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output92_d0),
    .q0(c3_buf_V_61_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_62_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_62_address0),
    .ce0(c3_buf_V_62_ce0),
    .we0(c3_buf_V_62_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output93_d0),
    .q0(c3_buf_V_62_q0)
);

cnn_top_c1_buf_V_0 #(
    .DataWidth( 7 ),
    .AddressRange( 800 ),
    .AddressWidth( 10 ))
c3_buf_V_63_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .address0(c3_buf_V_63_address0),
    .ce0(c3_buf_V_63_ce0),
    .we0(c3_buf_V_63_we0),
    .d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output94_d0),
    .q0(c3_buf_V_63_q0)
);

cnn_top_conv1d_same_relu_32_64_3_1_800_s grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_start),
    .ap_done(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_done),
    .ap_idle(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_idle),
    .ap_ready(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_ready),
    .input_r_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input_r_address0),
    .input_r_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input_r_ce0),
    .input_r_q0(c2_buf_V_0_q0),
    .input1_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input1_address0),
    .input1_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input1_ce0),
    .input1_q0(c2_buf_V_1_q0),
    .input2_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input2_address0),
    .input2_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input2_ce0),
    .input2_q0(c2_buf_V_2_q0),
    .input3_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input3_address0),
    .input3_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input3_ce0),
    .input3_q0(c2_buf_V_3_q0),
    .input4_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input4_address0),
    .input4_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input4_ce0),
    .input4_q0(c2_buf_V_4_q0),
    .input5_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input5_address0),
    .input5_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input5_ce0),
    .input5_q0(c2_buf_V_5_q0),
    .input6_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input6_address0),
    .input6_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input6_ce0),
    .input6_q0(c2_buf_V_6_q0),
    .input7_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input7_address0),
    .input7_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input7_ce0),
    .input7_q0(c2_buf_V_7_q0),
    .input8_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input8_address0),
    .input8_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input8_ce0),
    .input8_q0(c2_buf_V_8_q0),
    .input9_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input9_address0),
    .input9_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input9_ce0),
    .input9_q0(c2_buf_V_9_q0),
    .input10_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input10_address0),
    .input10_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input10_ce0),
    .input10_q0(c2_buf_V_10_q0),
    .input11_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input11_address0),
    .input11_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input11_ce0),
    .input11_q0(c2_buf_V_11_q0),
    .input12_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input12_address0),
    .input12_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input12_ce0),
    .input12_q0(c2_buf_V_12_q0),
    .input13_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input13_address0),
    .input13_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input13_ce0),
    .input13_q0(c2_buf_V_13_q0),
    .input14_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input14_address0),
    .input14_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input14_ce0),
    .input14_q0(c2_buf_V_14_q0),
    .input15_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input15_address0),
    .input15_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input15_ce0),
    .input15_q0(c2_buf_V_15_q0),
    .input16_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input16_address0),
    .input16_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input16_ce0),
    .input16_q0(c2_buf_V_16_q0),
    .input17_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input17_address0),
    .input17_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input17_ce0),
    .input17_q0(c2_buf_V_17_q0),
    .input18_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input18_address0),
    .input18_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input18_ce0),
    .input18_q0(c2_buf_V_18_q0),
    .input19_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input19_address0),
    .input19_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input19_ce0),
    .input19_q0(c2_buf_V_19_q0),
    .input20_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input20_address0),
    .input20_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input20_ce0),
    .input20_q0(c2_buf_V_20_q0),
    .input21_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input21_address0),
    .input21_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input21_ce0),
    .input21_q0(c2_buf_V_21_q0),
    .input22_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input22_address0),
    .input22_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input22_ce0),
    .input22_q0(c2_buf_V_22_q0),
    .input23_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input23_address0),
    .input23_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input23_ce0),
    .input23_q0(c2_buf_V_23_q0),
    .input24_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input24_address0),
    .input24_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input24_ce0),
    .input24_q0(c2_buf_V_24_q0),
    .input25_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input25_address0),
    .input25_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input25_ce0),
    .input25_q0(c2_buf_V_25_q0),
    .input26_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input26_address0),
    .input26_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input26_ce0),
    .input26_q0(c2_buf_V_26_q0),
    .input27_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input27_address0),
    .input27_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input27_ce0),
    .input27_q0(c2_buf_V_27_q0),
    .input28_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input28_address0),
    .input28_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input28_ce0),
    .input28_q0(c2_buf_V_28_q0),
    .input29_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input29_address0),
    .input29_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input29_ce0),
    .input29_q0(c2_buf_V_29_q0),
    .input30_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input30_address0),
    .input30_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input30_ce0),
    .input30_q0(c2_buf_V_30_q0),
    .input31_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input31_address0),
    .input31_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input31_ce0),
    .input31_q0(c2_buf_V_31_q0),
    .output_r_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output_r_address0),
    .output_r_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output_r_ce0),
    .output_r_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output_r_we0),
    .output_r_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output_r_d0),
    .output32_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output32_address0),
    .output32_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output32_ce0),
    .output32_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output32_we0),
    .output32_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output32_d0),
    .output33_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output33_address0),
    .output33_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output33_ce0),
    .output33_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output33_we0),
    .output33_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output33_d0),
    .output34_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output34_address0),
    .output34_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output34_ce0),
    .output34_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output34_we0),
    .output34_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output34_d0),
    .output35_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output35_address0),
    .output35_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output35_ce0),
    .output35_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output35_we0),
    .output35_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output35_d0),
    .output36_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output36_address0),
    .output36_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output36_ce0),
    .output36_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output36_we0),
    .output36_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output36_d0),
    .output37_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output37_address0),
    .output37_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output37_ce0),
    .output37_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output37_we0),
    .output37_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output37_d0),
    .output38_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output38_address0),
    .output38_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output38_ce0),
    .output38_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output38_we0),
    .output38_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output38_d0),
    .output39_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output39_address0),
    .output39_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output39_ce0),
    .output39_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output39_we0),
    .output39_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output39_d0),
    .output40_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output40_address0),
    .output40_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output40_ce0),
    .output40_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output40_we0),
    .output40_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output40_d0),
    .output41_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output41_address0),
    .output41_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output41_ce0),
    .output41_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output41_we0),
    .output41_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output41_d0),
    .output42_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output42_address0),
    .output42_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output42_ce0),
    .output42_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output42_we0),
    .output42_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output42_d0),
    .output43_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output43_address0),
    .output43_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output43_ce0),
    .output43_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output43_we0),
    .output43_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output43_d0),
    .output44_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output44_address0),
    .output44_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output44_ce0),
    .output44_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output44_we0),
    .output44_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output44_d0),
    .output45_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output45_address0),
    .output45_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output45_ce0),
    .output45_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output45_we0),
    .output45_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output45_d0),
    .output46_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output46_address0),
    .output46_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output46_ce0),
    .output46_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output46_we0),
    .output46_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output46_d0),
    .output47_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output47_address0),
    .output47_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output47_ce0),
    .output47_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output47_we0),
    .output47_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output47_d0),
    .output48_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output48_address0),
    .output48_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output48_ce0),
    .output48_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output48_we0),
    .output48_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output48_d0),
    .output49_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output49_address0),
    .output49_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output49_ce0),
    .output49_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output49_we0),
    .output49_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output49_d0),
    .output50_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output50_address0),
    .output50_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output50_ce0),
    .output50_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output50_we0),
    .output50_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output50_d0),
    .output51_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output51_address0),
    .output51_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output51_ce0),
    .output51_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output51_we0),
    .output51_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output51_d0),
    .output52_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output52_address0),
    .output52_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output52_ce0),
    .output52_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output52_we0),
    .output52_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output52_d0),
    .output53_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output53_address0),
    .output53_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output53_ce0),
    .output53_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output53_we0),
    .output53_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output53_d0),
    .output54_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output54_address0),
    .output54_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output54_ce0),
    .output54_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output54_we0),
    .output54_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output54_d0),
    .output55_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output55_address0),
    .output55_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output55_ce0),
    .output55_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output55_we0),
    .output55_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output55_d0),
    .output56_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output56_address0),
    .output56_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output56_ce0),
    .output56_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output56_we0),
    .output56_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output56_d0),
    .output57_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output57_address0),
    .output57_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output57_ce0),
    .output57_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output57_we0),
    .output57_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output57_d0),
    .output58_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output58_address0),
    .output58_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output58_ce0),
    .output58_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output58_we0),
    .output58_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output58_d0),
    .output59_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output59_address0),
    .output59_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output59_ce0),
    .output59_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output59_we0),
    .output59_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output59_d0),
    .output60_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output60_address0),
    .output60_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output60_ce0),
    .output60_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output60_we0),
    .output60_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output60_d0),
    .output61_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output61_address0),
    .output61_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output61_ce0),
    .output61_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output61_we0),
    .output61_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output61_d0),
    .output62_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output62_address0),
    .output62_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output62_ce0),
    .output62_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output62_we0),
    .output62_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output62_d0),
    .output63_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output63_address0),
    .output63_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output63_ce0),
    .output63_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output63_we0),
    .output63_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output63_d0),
    .output64_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output64_address0),
    .output64_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output64_ce0),
    .output64_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output64_we0),
    .output64_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output64_d0),
    .output65_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output65_address0),
    .output65_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output65_ce0),
    .output65_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output65_we0),
    .output65_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output65_d0),
    .output66_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output66_address0),
    .output66_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output66_ce0),
    .output66_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output66_we0),
    .output66_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output66_d0),
    .output67_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output67_address0),
    .output67_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output67_ce0),
    .output67_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output67_we0),
    .output67_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output67_d0),
    .output68_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output68_address0),
    .output68_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output68_ce0),
    .output68_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output68_we0),
    .output68_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output68_d0),
    .output69_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output69_address0),
    .output69_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output69_ce0),
    .output69_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output69_we0),
    .output69_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output69_d0),
    .output70_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output70_address0),
    .output70_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output70_ce0),
    .output70_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output70_we0),
    .output70_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output70_d0),
    .output71_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output71_address0),
    .output71_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output71_ce0),
    .output71_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output71_we0),
    .output71_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output71_d0),
    .output72_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output72_address0),
    .output72_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output72_ce0),
    .output72_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output72_we0),
    .output72_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output72_d0),
    .output73_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output73_address0),
    .output73_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output73_ce0),
    .output73_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output73_we0),
    .output73_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output73_d0),
    .output74_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output74_address0),
    .output74_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output74_ce0),
    .output74_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output74_we0),
    .output74_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output74_d0),
    .output75_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output75_address0),
    .output75_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output75_ce0),
    .output75_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output75_we0),
    .output75_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output75_d0),
    .output76_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output76_address0),
    .output76_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output76_ce0),
    .output76_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output76_we0),
    .output76_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output76_d0),
    .output77_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output77_address0),
    .output77_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output77_ce0),
    .output77_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output77_we0),
    .output77_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output77_d0),
    .output78_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output78_address0),
    .output78_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output78_ce0),
    .output78_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output78_we0),
    .output78_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output78_d0),
    .output79_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output79_address0),
    .output79_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output79_ce0),
    .output79_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output79_we0),
    .output79_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output79_d0),
    .output80_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output80_address0),
    .output80_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output80_ce0),
    .output80_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output80_we0),
    .output80_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output80_d0),
    .output81_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output81_address0),
    .output81_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output81_ce0),
    .output81_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output81_we0),
    .output81_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output81_d0),
    .output82_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output82_address0),
    .output82_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output82_ce0),
    .output82_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output82_we0),
    .output82_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output82_d0),
    .output83_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output83_address0),
    .output83_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output83_ce0),
    .output83_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output83_we0),
    .output83_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output83_d0),
    .output84_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output84_address0),
    .output84_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output84_ce0),
    .output84_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output84_we0),
    .output84_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output84_d0),
    .output85_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output85_address0),
    .output85_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output85_ce0),
    .output85_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output85_we0),
    .output85_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output85_d0),
    .output86_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output86_address0),
    .output86_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output86_ce0),
    .output86_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output86_we0),
    .output86_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output86_d0),
    .output87_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output87_address0),
    .output87_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output87_ce0),
    .output87_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output87_we0),
    .output87_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output87_d0),
    .output88_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output88_address0),
    .output88_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output88_ce0),
    .output88_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output88_we0),
    .output88_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output88_d0),
    .output89_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output89_address0),
    .output89_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output89_ce0),
    .output89_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output89_we0),
    .output89_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output89_d0),
    .output90_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output90_address0),
    .output90_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output90_ce0),
    .output90_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output90_we0),
    .output90_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output90_d0),
    .output91_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output91_address0),
    .output91_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output91_ce0),
    .output91_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output91_we0),
    .output91_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output91_d0),
    .output92_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output92_address0),
    .output92_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output92_ce0),
    .output92_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output92_we0),
    .output92_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output92_d0),
    .output93_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output93_address0),
    .output93_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output93_ce0),
    .output93_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output93_we0),
    .output93_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output93_d0),
    .output94_address0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output94_address0),
    .output94_ce0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output94_ce0),
    .output94_we0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output94_we0),
    .output94_d0(grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output94_d0)
);

cnn_top_conv1d_same_relu_16_32_5_2_800_s grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_start),
    .ap_done(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_done),
    .ap_idle(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_idle),
    .ap_ready(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_ready),
    .input_r_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input_r_address0),
    .input_r_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input_r_ce0),
    .input_r_q0(c1_buf_V_0_q0),
    .input1_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input1_address0),
    .input1_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input1_ce0),
    .input1_q0(c1_buf_V_1_q0),
    .input2_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input2_address0),
    .input2_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input2_ce0),
    .input2_q0(c1_buf_V_2_q0),
    .input3_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input3_address0),
    .input3_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input3_ce0),
    .input3_q0(c1_buf_V_3_q0),
    .input4_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input4_address0),
    .input4_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input4_ce0),
    .input4_q0(c1_buf_V_4_q0),
    .input5_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input5_address0),
    .input5_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input5_ce0),
    .input5_q0(c1_buf_V_5_q0),
    .input6_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input6_address0),
    .input6_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input6_ce0),
    .input6_q0(c1_buf_V_6_q0),
    .input7_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input7_address0),
    .input7_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input7_ce0),
    .input7_q0(c1_buf_V_7_q0),
    .input8_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input8_address0),
    .input8_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input8_ce0),
    .input8_q0(c1_buf_V_8_q0),
    .input9_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input9_address0),
    .input9_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input9_ce0),
    .input9_q0(c1_buf_V_9_q0),
    .input10_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input10_address0),
    .input10_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input10_ce0),
    .input10_q0(c1_buf_V_10_q0),
    .input11_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input11_address0),
    .input11_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input11_ce0),
    .input11_q0(c1_buf_V_11_q0),
    .input12_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input12_address0),
    .input12_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input12_ce0),
    .input12_q0(c1_buf_V_12_q0),
    .input13_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input13_address0),
    .input13_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input13_ce0),
    .input13_q0(c1_buf_V_13_q0),
    .input14_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input14_address0),
    .input14_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input14_ce0),
    .input14_q0(c1_buf_V_14_q0),
    .input15_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input15_address0),
    .input15_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input15_ce0),
    .input15_q0(c1_buf_V_15_q0),
    .output_r_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output_r_address0),
    .output_r_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output_r_ce0),
    .output_r_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output_r_we0),
    .output_r_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output_r_d0),
    .output16_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output16_address0),
    .output16_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output16_ce0),
    .output16_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output16_we0),
    .output16_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output16_d0),
    .output17_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output17_address0),
    .output17_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output17_ce0),
    .output17_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output17_we0),
    .output17_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output17_d0),
    .output18_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output18_address0),
    .output18_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output18_ce0),
    .output18_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output18_we0),
    .output18_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output18_d0),
    .output19_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output19_address0),
    .output19_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output19_ce0),
    .output19_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output19_we0),
    .output19_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output19_d0),
    .output20_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output20_address0),
    .output20_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output20_ce0),
    .output20_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output20_we0),
    .output20_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output20_d0),
    .output21_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output21_address0),
    .output21_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output21_ce0),
    .output21_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output21_we0),
    .output21_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output21_d0),
    .output22_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output22_address0),
    .output22_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output22_ce0),
    .output22_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output22_we0),
    .output22_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output22_d0),
    .output23_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output23_address0),
    .output23_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output23_ce0),
    .output23_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output23_we0),
    .output23_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output23_d0),
    .output24_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output24_address0),
    .output24_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output24_ce0),
    .output24_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output24_we0),
    .output24_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output24_d0),
    .output25_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output25_address0),
    .output25_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output25_ce0),
    .output25_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output25_we0),
    .output25_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output25_d0),
    .output26_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output26_address0),
    .output26_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output26_ce0),
    .output26_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output26_we0),
    .output26_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output26_d0),
    .output27_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output27_address0),
    .output27_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output27_ce0),
    .output27_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output27_we0),
    .output27_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output27_d0),
    .output28_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output28_address0),
    .output28_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output28_ce0),
    .output28_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output28_we0),
    .output28_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output28_d0),
    .output29_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output29_address0),
    .output29_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output29_ce0),
    .output29_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output29_we0),
    .output29_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output29_d0),
    .output30_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output30_address0),
    .output30_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output30_ce0),
    .output30_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output30_we0),
    .output30_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output30_d0),
    .output31_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output31_address0),
    .output31_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output31_ce0),
    .output31_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output31_we0),
    .output31_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output31_d0),
    .output32_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output32_address0),
    .output32_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output32_ce0),
    .output32_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output32_we0),
    .output32_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output32_d0),
    .output33_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output33_address0),
    .output33_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output33_ce0),
    .output33_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output33_we0),
    .output33_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output33_d0),
    .output34_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output34_address0),
    .output34_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output34_ce0),
    .output34_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output34_we0),
    .output34_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output34_d0),
    .output35_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output35_address0),
    .output35_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output35_ce0),
    .output35_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output35_we0),
    .output35_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output35_d0),
    .output36_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output36_address0),
    .output36_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output36_ce0),
    .output36_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output36_we0),
    .output36_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output36_d0),
    .output37_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output37_address0),
    .output37_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output37_ce0),
    .output37_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output37_we0),
    .output37_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output37_d0),
    .output38_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output38_address0),
    .output38_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output38_ce0),
    .output38_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output38_we0),
    .output38_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output38_d0),
    .output39_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output39_address0),
    .output39_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output39_ce0),
    .output39_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output39_we0),
    .output39_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output39_d0),
    .output40_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output40_address0),
    .output40_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output40_ce0),
    .output40_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output40_we0),
    .output40_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output40_d0),
    .output41_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output41_address0),
    .output41_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output41_ce0),
    .output41_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output41_we0),
    .output41_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output41_d0),
    .output42_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output42_address0),
    .output42_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output42_ce0),
    .output42_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output42_we0),
    .output42_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output42_d0),
    .output43_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output43_address0),
    .output43_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output43_ce0),
    .output43_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output43_we0),
    .output43_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output43_d0),
    .output44_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output44_address0),
    .output44_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output44_ce0),
    .output44_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output44_we0),
    .output44_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output44_d0),
    .output45_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output45_address0),
    .output45_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output45_ce0),
    .output45_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output45_we0),
    .output45_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output45_d0),
    .output46_address0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output46_address0),
    .output46_ce0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output46_ce0),
    .output46_we0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output46_we0),
    .output46_d0(grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output46_d0)
);

cnn_top_global_avgpool_64_800_s grp_global_avgpool_64_800_s_fu_2130(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_global_avgpool_64_800_s_fu_2130_ap_start),
    .ap_done(grp_global_avgpool_64_800_s_fu_2130_ap_done),
    .ap_idle(grp_global_avgpool_64_800_s_fu_2130_ap_idle),
    .ap_ready(grp_global_avgpool_64_800_s_fu_2130_ap_ready),
    .input_r_address0(grp_global_avgpool_64_800_s_fu_2130_input_r_address0),
    .input_r_ce0(grp_global_avgpool_64_800_s_fu_2130_input_r_ce0),
    .input_r_q0(c3_buf_V_0_q0),
    .input1_address0(grp_global_avgpool_64_800_s_fu_2130_input1_address0),
    .input1_ce0(grp_global_avgpool_64_800_s_fu_2130_input1_ce0),
    .input1_q0(c3_buf_V_1_q0),
    .input2_address0(grp_global_avgpool_64_800_s_fu_2130_input2_address0),
    .input2_ce0(grp_global_avgpool_64_800_s_fu_2130_input2_ce0),
    .input2_q0(c3_buf_V_2_q0),
    .input3_address0(grp_global_avgpool_64_800_s_fu_2130_input3_address0),
    .input3_ce0(grp_global_avgpool_64_800_s_fu_2130_input3_ce0),
    .input3_q0(c3_buf_V_3_q0),
    .input4_address0(grp_global_avgpool_64_800_s_fu_2130_input4_address0),
    .input4_ce0(grp_global_avgpool_64_800_s_fu_2130_input4_ce0),
    .input4_q0(c3_buf_V_4_q0),
    .input5_address0(grp_global_avgpool_64_800_s_fu_2130_input5_address0),
    .input5_ce0(grp_global_avgpool_64_800_s_fu_2130_input5_ce0),
    .input5_q0(c3_buf_V_5_q0),
    .input6_address0(grp_global_avgpool_64_800_s_fu_2130_input6_address0),
    .input6_ce0(grp_global_avgpool_64_800_s_fu_2130_input6_ce0),
    .input6_q0(c3_buf_V_6_q0),
    .input7_address0(grp_global_avgpool_64_800_s_fu_2130_input7_address0),
    .input7_ce0(grp_global_avgpool_64_800_s_fu_2130_input7_ce0),
    .input7_q0(c3_buf_V_7_q0),
    .input8_address0(grp_global_avgpool_64_800_s_fu_2130_input8_address0),
    .input8_ce0(grp_global_avgpool_64_800_s_fu_2130_input8_ce0),
    .input8_q0(c3_buf_V_8_q0),
    .input9_address0(grp_global_avgpool_64_800_s_fu_2130_input9_address0),
    .input9_ce0(grp_global_avgpool_64_800_s_fu_2130_input9_ce0),
    .input9_q0(c3_buf_V_9_q0),
    .input10_address0(grp_global_avgpool_64_800_s_fu_2130_input10_address0),
    .input10_ce0(grp_global_avgpool_64_800_s_fu_2130_input10_ce0),
    .input10_q0(c3_buf_V_10_q0),
    .input11_address0(grp_global_avgpool_64_800_s_fu_2130_input11_address0),
    .input11_ce0(grp_global_avgpool_64_800_s_fu_2130_input11_ce0),
    .input11_q0(c3_buf_V_11_q0),
    .input12_address0(grp_global_avgpool_64_800_s_fu_2130_input12_address0),
    .input12_ce0(grp_global_avgpool_64_800_s_fu_2130_input12_ce0),
    .input12_q0(c3_buf_V_12_q0),
    .input13_address0(grp_global_avgpool_64_800_s_fu_2130_input13_address0),
    .input13_ce0(grp_global_avgpool_64_800_s_fu_2130_input13_ce0),
    .input13_q0(c3_buf_V_13_q0),
    .input14_address0(grp_global_avgpool_64_800_s_fu_2130_input14_address0),
    .input14_ce0(grp_global_avgpool_64_800_s_fu_2130_input14_ce0),
    .input14_q0(c3_buf_V_14_q0),
    .input15_address0(grp_global_avgpool_64_800_s_fu_2130_input15_address0),
    .input15_ce0(grp_global_avgpool_64_800_s_fu_2130_input15_ce0),
    .input15_q0(c3_buf_V_15_q0),
    .input16_address0(grp_global_avgpool_64_800_s_fu_2130_input16_address0),
    .input16_ce0(grp_global_avgpool_64_800_s_fu_2130_input16_ce0),
    .input16_q0(c3_buf_V_16_q0),
    .input17_address0(grp_global_avgpool_64_800_s_fu_2130_input17_address0),
    .input17_ce0(grp_global_avgpool_64_800_s_fu_2130_input17_ce0),
    .input17_q0(c3_buf_V_17_q0),
    .input18_address0(grp_global_avgpool_64_800_s_fu_2130_input18_address0),
    .input18_ce0(grp_global_avgpool_64_800_s_fu_2130_input18_ce0),
    .input18_q0(c3_buf_V_18_q0),
    .input19_address0(grp_global_avgpool_64_800_s_fu_2130_input19_address0),
    .input19_ce0(grp_global_avgpool_64_800_s_fu_2130_input19_ce0),
    .input19_q0(c3_buf_V_19_q0),
    .input20_address0(grp_global_avgpool_64_800_s_fu_2130_input20_address0),
    .input20_ce0(grp_global_avgpool_64_800_s_fu_2130_input20_ce0),
    .input20_q0(c3_buf_V_20_q0),
    .input21_address0(grp_global_avgpool_64_800_s_fu_2130_input21_address0),
    .input21_ce0(grp_global_avgpool_64_800_s_fu_2130_input21_ce0),
    .input21_q0(c3_buf_V_21_q0),
    .input22_address0(grp_global_avgpool_64_800_s_fu_2130_input22_address0),
    .input22_ce0(grp_global_avgpool_64_800_s_fu_2130_input22_ce0),
    .input22_q0(c3_buf_V_22_q0),
    .input23_address0(grp_global_avgpool_64_800_s_fu_2130_input23_address0),
    .input23_ce0(grp_global_avgpool_64_800_s_fu_2130_input23_ce0),
    .input23_q0(c3_buf_V_23_q0),
    .input24_address0(grp_global_avgpool_64_800_s_fu_2130_input24_address0),
    .input24_ce0(grp_global_avgpool_64_800_s_fu_2130_input24_ce0),
    .input24_q0(c3_buf_V_24_q0),
    .input25_address0(grp_global_avgpool_64_800_s_fu_2130_input25_address0),
    .input25_ce0(grp_global_avgpool_64_800_s_fu_2130_input25_ce0),
    .input25_q0(c3_buf_V_25_q0),
    .input26_address0(grp_global_avgpool_64_800_s_fu_2130_input26_address0),
    .input26_ce0(grp_global_avgpool_64_800_s_fu_2130_input26_ce0),
    .input26_q0(c3_buf_V_26_q0),
    .input27_address0(grp_global_avgpool_64_800_s_fu_2130_input27_address0),
    .input27_ce0(grp_global_avgpool_64_800_s_fu_2130_input27_ce0),
    .input27_q0(c3_buf_V_27_q0),
    .input28_address0(grp_global_avgpool_64_800_s_fu_2130_input28_address0),
    .input28_ce0(grp_global_avgpool_64_800_s_fu_2130_input28_ce0),
    .input28_q0(c3_buf_V_28_q0),
    .input29_address0(grp_global_avgpool_64_800_s_fu_2130_input29_address0),
    .input29_ce0(grp_global_avgpool_64_800_s_fu_2130_input29_ce0),
    .input29_q0(c3_buf_V_29_q0),
    .input30_address0(grp_global_avgpool_64_800_s_fu_2130_input30_address0),
    .input30_ce0(grp_global_avgpool_64_800_s_fu_2130_input30_ce0),
    .input30_q0(c3_buf_V_30_q0),
    .input31_address0(grp_global_avgpool_64_800_s_fu_2130_input31_address0),
    .input31_ce0(grp_global_avgpool_64_800_s_fu_2130_input31_ce0),
    .input31_q0(c3_buf_V_31_q0),
    .input32_address0(grp_global_avgpool_64_800_s_fu_2130_input32_address0),
    .input32_ce0(grp_global_avgpool_64_800_s_fu_2130_input32_ce0),
    .input32_q0(c3_buf_V_32_q0),
    .input33_address0(grp_global_avgpool_64_800_s_fu_2130_input33_address0),
    .input33_ce0(grp_global_avgpool_64_800_s_fu_2130_input33_ce0),
    .input33_q0(c3_buf_V_33_q0),
    .input34_address0(grp_global_avgpool_64_800_s_fu_2130_input34_address0),
    .input34_ce0(grp_global_avgpool_64_800_s_fu_2130_input34_ce0),
    .input34_q0(c3_buf_V_34_q0),
    .input35_address0(grp_global_avgpool_64_800_s_fu_2130_input35_address0),
    .input35_ce0(grp_global_avgpool_64_800_s_fu_2130_input35_ce0),
    .input35_q0(c3_buf_V_35_q0),
    .input36_address0(grp_global_avgpool_64_800_s_fu_2130_input36_address0),
    .input36_ce0(grp_global_avgpool_64_800_s_fu_2130_input36_ce0),
    .input36_q0(c3_buf_V_36_q0),
    .input37_address0(grp_global_avgpool_64_800_s_fu_2130_input37_address0),
    .input37_ce0(grp_global_avgpool_64_800_s_fu_2130_input37_ce0),
    .input37_q0(c3_buf_V_37_q0),
    .input38_address0(grp_global_avgpool_64_800_s_fu_2130_input38_address0),
    .input38_ce0(grp_global_avgpool_64_800_s_fu_2130_input38_ce0),
    .input38_q0(c3_buf_V_38_q0),
    .input39_address0(grp_global_avgpool_64_800_s_fu_2130_input39_address0),
    .input39_ce0(grp_global_avgpool_64_800_s_fu_2130_input39_ce0),
    .input39_q0(c3_buf_V_39_q0),
    .input40_address0(grp_global_avgpool_64_800_s_fu_2130_input40_address0),
    .input40_ce0(grp_global_avgpool_64_800_s_fu_2130_input40_ce0),
    .input40_q0(c3_buf_V_40_q0),
    .input41_address0(grp_global_avgpool_64_800_s_fu_2130_input41_address0),
    .input41_ce0(grp_global_avgpool_64_800_s_fu_2130_input41_ce0),
    .input41_q0(c3_buf_V_41_q0),
    .input42_address0(grp_global_avgpool_64_800_s_fu_2130_input42_address0),
    .input42_ce0(grp_global_avgpool_64_800_s_fu_2130_input42_ce0),
    .input42_q0(c3_buf_V_42_q0),
    .input43_address0(grp_global_avgpool_64_800_s_fu_2130_input43_address0),
    .input43_ce0(grp_global_avgpool_64_800_s_fu_2130_input43_ce0),
    .input43_q0(c3_buf_V_43_q0),
    .input44_address0(grp_global_avgpool_64_800_s_fu_2130_input44_address0),
    .input44_ce0(grp_global_avgpool_64_800_s_fu_2130_input44_ce0),
    .input44_q0(c3_buf_V_44_q0),
    .input45_address0(grp_global_avgpool_64_800_s_fu_2130_input45_address0),
    .input45_ce0(grp_global_avgpool_64_800_s_fu_2130_input45_ce0),
    .input45_q0(c3_buf_V_45_q0),
    .input46_address0(grp_global_avgpool_64_800_s_fu_2130_input46_address0),
    .input46_ce0(grp_global_avgpool_64_800_s_fu_2130_input46_ce0),
    .input46_q0(c3_buf_V_46_q0),
    .input47_address0(grp_global_avgpool_64_800_s_fu_2130_input47_address0),
    .input47_ce0(grp_global_avgpool_64_800_s_fu_2130_input47_ce0),
    .input47_q0(c3_buf_V_47_q0),
    .input48_address0(grp_global_avgpool_64_800_s_fu_2130_input48_address0),
    .input48_ce0(grp_global_avgpool_64_800_s_fu_2130_input48_ce0),
    .input48_q0(c3_buf_V_48_q0),
    .input49_address0(grp_global_avgpool_64_800_s_fu_2130_input49_address0),
    .input49_ce0(grp_global_avgpool_64_800_s_fu_2130_input49_ce0),
    .input49_q0(c3_buf_V_49_q0),
    .input50_address0(grp_global_avgpool_64_800_s_fu_2130_input50_address0),
    .input50_ce0(grp_global_avgpool_64_800_s_fu_2130_input50_ce0),
    .input50_q0(c3_buf_V_50_q0),
    .input51_address0(grp_global_avgpool_64_800_s_fu_2130_input51_address0),
    .input51_ce0(grp_global_avgpool_64_800_s_fu_2130_input51_ce0),
    .input51_q0(c3_buf_V_51_q0),
    .input52_address0(grp_global_avgpool_64_800_s_fu_2130_input52_address0),
    .input52_ce0(grp_global_avgpool_64_800_s_fu_2130_input52_ce0),
    .input52_q0(c3_buf_V_52_q0),
    .input53_address0(grp_global_avgpool_64_800_s_fu_2130_input53_address0),
    .input53_ce0(grp_global_avgpool_64_800_s_fu_2130_input53_ce0),
    .input53_q0(c3_buf_V_53_q0),
    .input54_address0(grp_global_avgpool_64_800_s_fu_2130_input54_address0),
    .input54_ce0(grp_global_avgpool_64_800_s_fu_2130_input54_ce0),
    .input54_q0(c3_buf_V_54_q0),
    .input55_address0(grp_global_avgpool_64_800_s_fu_2130_input55_address0),
    .input55_ce0(grp_global_avgpool_64_800_s_fu_2130_input55_ce0),
    .input55_q0(c3_buf_V_55_q0),
    .input56_address0(grp_global_avgpool_64_800_s_fu_2130_input56_address0),
    .input56_ce0(grp_global_avgpool_64_800_s_fu_2130_input56_ce0),
    .input56_q0(c3_buf_V_56_q0),
    .input57_address0(grp_global_avgpool_64_800_s_fu_2130_input57_address0),
    .input57_ce0(grp_global_avgpool_64_800_s_fu_2130_input57_ce0),
    .input57_q0(c3_buf_V_57_q0),
    .input58_address0(grp_global_avgpool_64_800_s_fu_2130_input58_address0),
    .input58_ce0(grp_global_avgpool_64_800_s_fu_2130_input58_ce0),
    .input58_q0(c3_buf_V_58_q0),
    .input59_address0(grp_global_avgpool_64_800_s_fu_2130_input59_address0),
    .input59_ce0(grp_global_avgpool_64_800_s_fu_2130_input59_ce0),
    .input59_q0(c3_buf_V_59_q0),
    .input60_address0(grp_global_avgpool_64_800_s_fu_2130_input60_address0),
    .input60_ce0(grp_global_avgpool_64_800_s_fu_2130_input60_ce0),
    .input60_q0(c3_buf_V_60_q0),
    .input61_address0(grp_global_avgpool_64_800_s_fu_2130_input61_address0),
    .input61_ce0(grp_global_avgpool_64_800_s_fu_2130_input61_ce0),
    .input61_q0(c3_buf_V_61_q0),
    .input62_address0(grp_global_avgpool_64_800_s_fu_2130_input62_address0),
    .input62_ce0(grp_global_avgpool_64_800_s_fu_2130_input62_ce0),
    .input62_q0(c3_buf_V_62_q0),
    .input63_address0(grp_global_avgpool_64_800_s_fu_2130_input63_address0),
    .input63_ce0(grp_global_avgpool_64_800_s_fu_2130_input63_ce0),
    .input63_q0(c3_buf_V_63_q0),
    .ap_return_0(grp_global_avgpool_64_800_s_fu_2130_ap_return_0),
    .ap_return_1(grp_global_avgpool_64_800_s_fu_2130_ap_return_1),
    .ap_return_2(grp_global_avgpool_64_800_s_fu_2130_ap_return_2),
    .ap_return_3(grp_global_avgpool_64_800_s_fu_2130_ap_return_3),
    .ap_return_4(grp_global_avgpool_64_800_s_fu_2130_ap_return_4),
    .ap_return_5(grp_global_avgpool_64_800_s_fu_2130_ap_return_5),
    .ap_return_6(grp_global_avgpool_64_800_s_fu_2130_ap_return_6),
    .ap_return_7(grp_global_avgpool_64_800_s_fu_2130_ap_return_7),
    .ap_return_8(grp_global_avgpool_64_800_s_fu_2130_ap_return_8),
    .ap_return_9(grp_global_avgpool_64_800_s_fu_2130_ap_return_9),
    .ap_return_10(grp_global_avgpool_64_800_s_fu_2130_ap_return_10),
    .ap_return_11(grp_global_avgpool_64_800_s_fu_2130_ap_return_11),
    .ap_return_12(grp_global_avgpool_64_800_s_fu_2130_ap_return_12),
    .ap_return_13(grp_global_avgpool_64_800_s_fu_2130_ap_return_13),
    .ap_return_14(grp_global_avgpool_64_800_s_fu_2130_ap_return_14),
    .ap_return_15(grp_global_avgpool_64_800_s_fu_2130_ap_return_15),
    .ap_return_16(grp_global_avgpool_64_800_s_fu_2130_ap_return_16),
    .ap_return_17(grp_global_avgpool_64_800_s_fu_2130_ap_return_17),
    .ap_return_18(grp_global_avgpool_64_800_s_fu_2130_ap_return_18),
    .ap_return_19(grp_global_avgpool_64_800_s_fu_2130_ap_return_19),
    .ap_return_20(grp_global_avgpool_64_800_s_fu_2130_ap_return_20),
    .ap_return_21(grp_global_avgpool_64_800_s_fu_2130_ap_return_21),
    .ap_return_22(grp_global_avgpool_64_800_s_fu_2130_ap_return_22),
    .ap_return_23(grp_global_avgpool_64_800_s_fu_2130_ap_return_23),
    .ap_return_24(grp_global_avgpool_64_800_s_fu_2130_ap_return_24),
    .ap_return_25(grp_global_avgpool_64_800_s_fu_2130_ap_return_25),
    .ap_return_26(grp_global_avgpool_64_800_s_fu_2130_ap_return_26),
    .ap_return_27(grp_global_avgpool_64_800_s_fu_2130_ap_return_27),
    .ap_return_28(grp_global_avgpool_64_800_s_fu_2130_ap_return_28),
    .ap_return_29(grp_global_avgpool_64_800_s_fu_2130_ap_return_29),
    .ap_return_30(grp_global_avgpool_64_800_s_fu_2130_ap_return_30),
    .ap_return_31(grp_global_avgpool_64_800_s_fu_2130_ap_return_31),
    .ap_return_32(grp_global_avgpool_64_800_s_fu_2130_ap_return_32),
    .ap_return_33(grp_global_avgpool_64_800_s_fu_2130_ap_return_33),
    .ap_return_34(grp_global_avgpool_64_800_s_fu_2130_ap_return_34),
    .ap_return_35(grp_global_avgpool_64_800_s_fu_2130_ap_return_35),
    .ap_return_36(grp_global_avgpool_64_800_s_fu_2130_ap_return_36),
    .ap_return_37(grp_global_avgpool_64_800_s_fu_2130_ap_return_37),
    .ap_return_38(grp_global_avgpool_64_800_s_fu_2130_ap_return_38),
    .ap_return_39(grp_global_avgpool_64_800_s_fu_2130_ap_return_39),
    .ap_return_40(grp_global_avgpool_64_800_s_fu_2130_ap_return_40),
    .ap_return_41(grp_global_avgpool_64_800_s_fu_2130_ap_return_41),
    .ap_return_42(grp_global_avgpool_64_800_s_fu_2130_ap_return_42),
    .ap_return_43(grp_global_avgpool_64_800_s_fu_2130_ap_return_43),
    .ap_return_44(grp_global_avgpool_64_800_s_fu_2130_ap_return_44),
    .ap_return_45(grp_global_avgpool_64_800_s_fu_2130_ap_return_45),
    .ap_return_46(grp_global_avgpool_64_800_s_fu_2130_ap_return_46),
    .ap_return_47(grp_global_avgpool_64_800_s_fu_2130_ap_return_47),
    .ap_return_48(grp_global_avgpool_64_800_s_fu_2130_ap_return_48),
    .ap_return_49(grp_global_avgpool_64_800_s_fu_2130_ap_return_49),
    .ap_return_50(grp_global_avgpool_64_800_s_fu_2130_ap_return_50),
    .ap_return_51(grp_global_avgpool_64_800_s_fu_2130_ap_return_51),
    .ap_return_52(grp_global_avgpool_64_800_s_fu_2130_ap_return_52),
    .ap_return_53(grp_global_avgpool_64_800_s_fu_2130_ap_return_53),
    .ap_return_54(grp_global_avgpool_64_800_s_fu_2130_ap_return_54),
    .ap_return_55(grp_global_avgpool_64_800_s_fu_2130_ap_return_55),
    .ap_return_56(grp_global_avgpool_64_800_s_fu_2130_ap_return_56),
    .ap_return_57(grp_global_avgpool_64_800_s_fu_2130_ap_return_57),
    .ap_return_58(grp_global_avgpool_64_800_s_fu_2130_ap_return_58),
    .ap_return_59(grp_global_avgpool_64_800_s_fu_2130_ap_return_59),
    .ap_return_60(grp_global_avgpool_64_800_s_fu_2130_ap_return_60),
    .ap_return_61(grp_global_avgpool_64_800_s_fu_2130_ap_return_61),
    .ap_return_62(grp_global_avgpool_64_800_s_fu_2130_ap_return_62),
    .ap_return_63(grp_global_avgpool_64_800_s_fu_2130_ap_return_63)
);

cnn_top_conv1d_same_relu_1_16_7_3_800_s grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_start),
    .ap_done(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_done),
    .ap_idle(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_idle),
    .ap_ready(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_ready),
    .input_r_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_input_r_address0),
    .input_r_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_input_r_ce0),
    .input_r_q0(in_buf_V_0_q0),
    .output_r_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output_r_address0),
    .output_r_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output_r_ce0),
    .output_r_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output_r_we0),
    .output_r_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output_r_d0),
    .output1_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output1_address0),
    .output1_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output1_ce0),
    .output1_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output1_we0),
    .output1_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output1_d0),
    .output2_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output2_address0),
    .output2_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output2_ce0),
    .output2_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output2_we0),
    .output2_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output2_d0),
    .output3_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output3_address0),
    .output3_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output3_ce0),
    .output3_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output3_we0),
    .output3_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output3_d0),
    .output4_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output4_address0),
    .output4_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output4_ce0),
    .output4_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output4_we0),
    .output4_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output4_d0),
    .output5_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output5_address0),
    .output5_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output5_ce0),
    .output5_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output5_we0),
    .output5_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output5_d0),
    .output6_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output6_address0),
    .output6_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output6_ce0),
    .output6_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output6_we0),
    .output6_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output6_d0),
    .output7_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output7_address0),
    .output7_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output7_ce0),
    .output7_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output7_we0),
    .output7_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output7_d0),
    .output8_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output8_address0),
    .output8_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output8_ce0),
    .output8_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output8_we0),
    .output8_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output8_d0),
    .output9_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output9_address0),
    .output9_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output9_ce0),
    .output9_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output9_we0),
    .output9_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output9_d0),
    .output10_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output10_address0),
    .output10_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output10_ce0),
    .output10_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output10_we0),
    .output10_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output10_d0),
    .output11_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output11_address0),
    .output11_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output11_ce0),
    .output11_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output11_we0),
    .output11_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output11_d0),
    .output12_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output12_address0),
    .output12_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output12_ce0),
    .output12_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output12_we0),
    .output12_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output12_d0),
    .output13_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output13_address0),
    .output13_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output13_ce0),
    .output13_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output13_we0),
    .output13_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output13_d0),
    .output14_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output14_address0),
    .output14_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output14_ce0),
    .output14_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output14_we0),
    .output14_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output14_d0),
    .output15_address0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output15_address0),
    .output15_ce0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output15_ce0),
    .output15_we0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output15_we0),
    .output15_d0(grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output15_d0)
);

cnn_top_fc_layer_64_2_s grp_fc_layer_64_2_s_fu_2219(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_fc_layer_64_2_s_fu_2219_ap_start),
    .ap_done(grp_fc_layer_64_2_s_fu_2219_ap_done),
    .ap_idle(grp_fc_layer_64_2_s_fu_2219_ap_idle),
    .ap_ready(grp_fc_layer_64_2_s_fu_2219_ap_ready),
    .p_read(gap_buf_V_0_reg_2706),
    .p_read1(gap_buf_V_1_reg_2711),
    .p_read2(gap_buf_V_2_reg_2716),
    .p_read3(gap_buf_V_3_reg_2721),
    .p_read4(gap_buf_V_4_reg_2726),
    .p_read5(gap_buf_V_5_reg_2731),
    .p_read6(gap_buf_V_6_reg_2736),
    .p_read7(gap_buf_V_7_reg_2741),
    .p_read8(gap_buf_V_8_reg_2746),
    .p_read9(gap_buf_V_9_reg_2751),
    .p_read10(gap_buf_V_10_reg_2756),
    .p_read11(gap_buf_V_11_reg_2761),
    .p_read12(gap_buf_V_12_reg_2766),
    .p_read13(gap_buf_V_13_reg_2771),
    .p_read14(gap_buf_V_14_reg_2776),
    .p_read15(gap_buf_V_15_reg_2781),
    .p_read16(gap_buf_V_16_reg_2786),
    .p_read17(gap_buf_V_17_reg_2791),
    .p_read18(gap_buf_V_18_reg_2796),
    .p_read19(gap_buf_V_19_reg_2801),
    .p_read20(gap_buf_V_20_reg_2806),
    .p_read21(gap_buf_V_21_reg_2811),
    .p_read22(gap_buf_V_22_reg_2816),
    .p_read23(gap_buf_V_23_reg_2821),
    .p_read24(gap_buf_V_24_reg_2826),
    .p_read25(gap_buf_V_25_reg_2831),
    .p_read26(gap_buf_V_26_reg_2836),
    .p_read27(gap_buf_V_27_reg_2841),
    .p_read28(gap_buf_V_28_reg_2846),
    .p_read29(gap_buf_V_29_reg_2851),
    .p_read30(gap_buf_V_30_reg_2856),
    .p_read31(gap_buf_V_31_reg_2861),
    .p_read32(gap_buf_V_32_reg_2866),
    .p_read33(gap_buf_V_33_reg_2871),
    .p_read34(gap_buf_V_34_reg_2876),
    .p_read35(gap_buf_V_35_reg_2881),
    .p_read36(gap_buf_V_36_reg_2886),
    .p_read37(gap_buf_V_37_reg_2891),
    .p_read38(gap_buf_V_38_reg_2896),
    .p_read39(gap_buf_V_39_reg_2901),
    .p_read40(gap_buf_V_40_reg_2906),
    .p_read41(gap_buf_V_41_reg_2911),
    .p_read42(gap_buf_V_42_reg_2916),
    .p_read43(gap_buf_V_43_reg_2921),
    .p_read44(gap_buf_V_44_reg_2926),
    .p_read45(gap_buf_V_45_reg_2931),
    .p_read46(gap_buf_V_46_reg_2936),
    .p_read47(gap_buf_V_47_reg_2941),
    .p_read48(gap_buf_V_48_reg_2946),
    .p_read49(gap_buf_V_49_reg_2951),
    .p_read50(gap_buf_V_50_reg_2956),
    .p_read51(gap_buf_V_51_reg_2961),
    .p_read52(gap_buf_V_52_reg_2966),
    .p_read53(gap_buf_V_53_reg_2971),
    .p_read54(gap_buf_V_54_reg_2976),
    .p_read55(gap_buf_V_55_reg_2981),
    .p_read56(gap_buf_V_56_reg_2986),
    .p_read57(gap_buf_V_57_reg_2991),
    .p_read58(gap_buf_V_58_reg_2996),
    .p_read59(gap_buf_V_59_reg_3001),
    .p_read60(gap_buf_V_60_reg_3006),
    .p_read61(gap_buf_V_61_reg_3011),
    .p_read62(gap_buf_V_62_reg_3016),
    .p_read63(gap_buf_V_63_reg_3021),
    .ap_return_0(grp_fc_layer_64_2_s_fu_2219_ap_return_0),
    .ap_return_1(grp_fc_layer_64_2_s_fu_2219_ap_return_1)
);

cnn_top_regslice_both #(
    .DataWidth( 16 ))
regslice_both_s_axis_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(s_axis_V_TDATA),
    .vld_in(s_axis_V_TVALID),
    .ack_in(regslice_both_s_axis_V_U_ack_in),
    .data_out(s_axis_V_TDATA_int_regslice),
    .vld_out(s_axis_V_TVALID_int_regslice),
    .ack_out(s_axis_V_TREADY_int_regslice),
    .apdone_blk(regslice_both_s_axis_V_U_apdone_blk)
);

cnn_top_regslice_both #(
    .DataWidth( 64 ))
regslice_both_m_axis_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(m_axis_V_TDATA_int_regslice),
    .vld_in(m_axis_V_TVALID_int_regslice),
    .ack_in(m_axis_V_TREADY_int_regslice),
    .data_out(m_axis_V_TDATA),
    .vld_out(regslice_both_m_axis_V_U_vld_out),
    .ack_out(m_axis_V_TREADY),
    .apdone_blk(regslice_both_m_axis_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_start_reg <= 1'b1;
        end else if ((grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_ready == 1'b1)) begin
            grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_start_reg <= 1'b1;
        end else if ((grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_ready == 1'b1)) begin
            grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_start_reg <= 1'b1;
        end else if ((grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_ready == 1'b1)) begin
            grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_fc_layer_64_2_s_fu_2219_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state10) & (grp_global_avgpool_64_800_s_fu_2130_ap_done == 1'b1))) begin
            grp_fc_layer_64_2_s_fu_2219_ap_start_reg <= 1'b1;
        end else if ((grp_fc_layer_64_2_s_fu_2219_ap_ready == 1'b1)) begin
            grp_fc_layer_64_2_s_fu_2219_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_global_avgpool_64_800_s_fu_2130_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_global_avgpool_64_800_s_fu_2130_ap_start_reg <= 1'b1;
        end else if ((grp_global_avgpool_64_800_s_fu_2130_ap_ready == 1'b1)) begin
            grp_global_avgpool_64_800_s_fu_2130_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_1263 <= 10'd0;
    end else if ((~((s_axis_V_TVALID_int_regslice == 1'b0) & (icmp_ln41_fu_2309_p2 == 1'd0)) & (icmp_ln41_fu_2309_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_reg_1263 <= add_ln41_fu_2303_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        gap_buf_V_0_reg_2706 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_0;
        gap_buf_V_10_reg_2756 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_10;
        gap_buf_V_11_reg_2761 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_11;
        gap_buf_V_12_reg_2766 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_12;
        gap_buf_V_13_reg_2771 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_13;
        gap_buf_V_14_reg_2776 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_14;
        gap_buf_V_15_reg_2781 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_15;
        gap_buf_V_16_reg_2786 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_16;
        gap_buf_V_17_reg_2791 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_17;
        gap_buf_V_18_reg_2796 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_18;
        gap_buf_V_19_reg_2801 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_19;
        gap_buf_V_1_reg_2711 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_1;
        gap_buf_V_20_reg_2806 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_20;
        gap_buf_V_21_reg_2811 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_21;
        gap_buf_V_22_reg_2816 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_22;
        gap_buf_V_23_reg_2821 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_23;
        gap_buf_V_24_reg_2826 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_24;
        gap_buf_V_25_reg_2831 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_25;
        gap_buf_V_26_reg_2836 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_26;
        gap_buf_V_27_reg_2841 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_27;
        gap_buf_V_28_reg_2846 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_28;
        gap_buf_V_29_reg_2851 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_29;
        gap_buf_V_2_reg_2716 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_2;
        gap_buf_V_30_reg_2856 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_30;
        gap_buf_V_31_reg_2861 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_31;
        gap_buf_V_32_reg_2866 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_32;
        gap_buf_V_33_reg_2871 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_33;
        gap_buf_V_34_reg_2876 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_34;
        gap_buf_V_35_reg_2881 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_35;
        gap_buf_V_36_reg_2886 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_36;
        gap_buf_V_37_reg_2891 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_37;
        gap_buf_V_38_reg_2896 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_38;
        gap_buf_V_39_reg_2901 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_39;
        gap_buf_V_3_reg_2721 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_3;
        gap_buf_V_40_reg_2906 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_40;
        gap_buf_V_41_reg_2911 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_41;
        gap_buf_V_42_reg_2916 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_42;
        gap_buf_V_43_reg_2921 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_43;
        gap_buf_V_44_reg_2926 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_44;
        gap_buf_V_45_reg_2931 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_45;
        gap_buf_V_46_reg_2936 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_46;
        gap_buf_V_47_reg_2941 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_47;
        gap_buf_V_48_reg_2946 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_48;
        gap_buf_V_49_reg_2951 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_49;
        gap_buf_V_4_reg_2726 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_4;
        gap_buf_V_50_reg_2956 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_50;
        gap_buf_V_51_reg_2961 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_51;
        gap_buf_V_52_reg_2966 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_52;
        gap_buf_V_53_reg_2971 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_53;
        gap_buf_V_54_reg_2976 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_54;
        gap_buf_V_55_reg_2981 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_55;
        gap_buf_V_56_reg_2986 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_56;
        gap_buf_V_57_reg_2991 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_57;
        gap_buf_V_58_reg_2996 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_58;
        gap_buf_V_59_reg_3001 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_59;
        gap_buf_V_5_reg_2731 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_5;
        gap_buf_V_60_reg_3006 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_60;
        gap_buf_V_61_reg_3011 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_61;
        gap_buf_V_62_reg_3016 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_62;
        gap_buf_V_63_reg_3021 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_63;
        gap_buf_V_6_reg_2736 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_6;
        gap_buf_V_7_reg_2741 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_7;
        gap_buf_V_8_reg_2746 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_8;
        gap_buf_V_9_reg_2751 <= grp_global_avgpool_64_800_s_fu_2130_ap_return_9;
    end
end

always @ (*) begin
    if ((~((m_axis_V_TREADY_int_regslice == 1'b0) | (regslice_both_m_axis_V_U_apdone_blk == 1'b1)) & (1'b1 == ap_CS_fsm_state12))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((m_axis_V_TREADY_int_regslice == 1'b0) | (regslice_both_m_axis_V_U_apdone_blk == 1'b1)) & (1'b1 == ap_CS_fsm_state12))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_0_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_0_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input_r_address0;
    end else begin
        c1_buf_V_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_0_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_0_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input_r_ce0;
    end else begin
        c1_buf_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_0_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output_r_we0;
    end else begin
        c1_buf_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_10_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output10_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_10_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input10_address0;
    end else begin
        c1_buf_V_10_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_10_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_10_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input10_ce0;
    end else begin
        c1_buf_V_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_10_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output10_we0;
    end else begin
        c1_buf_V_10_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_11_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output11_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_11_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input11_address0;
    end else begin
        c1_buf_V_11_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_11_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_11_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input11_ce0;
    end else begin
        c1_buf_V_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_11_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output11_we0;
    end else begin
        c1_buf_V_11_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_12_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output12_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_12_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input12_address0;
    end else begin
        c1_buf_V_12_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_12_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_12_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input12_ce0;
    end else begin
        c1_buf_V_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_12_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output12_we0;
    end else begin
        c1_buf_V_12_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_13_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output13_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_13_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input13_address0;
    end else begin
        c1_buf_V_13_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_13_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_13_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input13_ce0;
    end else begin
        c1_buf_V_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_13_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output13_we0;
    end else begin
        c1_buf_V_13_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_14_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output14_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_14_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input14_address0;
    end else begin
        c1_buf_V_14_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_14_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_14_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input14_ce0;
    end else begin
        c1_buf_V_14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_14_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output14_we0;
    end else begin
        c1_buf_V_14_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_15_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output15_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_15_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input15_address0;
    end else begin
        c1_buf_V_15_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_15_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_15_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input15_ce0;
    end else begin
        c1_buf_V_15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_15_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output15_we0;
    end else begin
        c1_buf_V_15_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_1_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_1_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input1_address0;
    end else begin
        c1_buf_V_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_1_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_1_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input1_ce0;
    end else begin
        c1_buf_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_1_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output1_we0;
    end else begin
        c1_buf_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_2_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output2_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_2_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input2_address0;
    end else begin
        c1_buf_V_2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_2_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_2_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input2_ce0;
    end else begin
        c1_buf_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_2_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output2_we0;
    end else begin
        c1_buf_V_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_3_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output3_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_3_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input3_address0;
    end else begin
        c1_buf_V_3_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_3_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_3_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input3_ce0;
    end else begin
        c1_buf_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_3_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output3_we0;
    end else begin
        c1_buf_V_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_4_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output4_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_4_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input4_address0;
    end else begin
        c1_buf_V_4_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_4_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_4_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input4_ce0;
    end else begin
        c1_buf_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_4_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output4_we0;
    end else begin
        c1_buf_V_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_5_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output5_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_5_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input5_address0;
    end else begin
        c1_buf_V_5_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_5_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_5_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input5_ce0;
    end else begin
        c1_buf_V_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_5_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output5_we0;
    end else begin
        c1_buf_V_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_6_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output6_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_6_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input6_address0;
    end else begin
        c1_buf_V_6_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_6_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_6_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input6_ce0;
    end else begin
        c1_buf_V_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_6_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output6_we0;
    end else begin
        c1_buf_V_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_7_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output7_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_7_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input7_address0;
    end else begin
        c1_buf_V_7_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_7_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_7_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input7_ce0;
    end else begin
        c1_buf_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_7_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output7_we0;
    end else begin
        c1_buf_V_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_8_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output8_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_8_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input8_address0;
    end else begin
        c1_buf_V_8_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_8_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_8_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input8_ce0;
    end else begin
        c1_buf_V_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_8_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output8_we0;
    end else begin
        c1_buf_V_8_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_9_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output9_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_9_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input9_address0;
    end else begin
        c1_buf_V_9_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_9_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        c1_buf_V_9_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_input9_ce0;
    end else begin
        c1_buf_V_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        c1_buf_V_9_we0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_output9_we0;
    end else begin
        c1_buf_V_9_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_0_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_0_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input_r_address0;
    end else begin
        c2_buf_V_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_0_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_0_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input_r_ce0;
    end else begin
        c2_buf_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_0_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output_r_we0;
    end else begin
        c2_buf_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_10_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output25_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_10_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input10_address0;
    end else begin
        c2_buf_V_10_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_10_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_10_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input10_ce0;
    end else begin
        c2_buf_V_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_10_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output25_we0;
    end else begin
        c2_buf_V_10_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_11_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output26_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_11_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input11_address0;
    end else begin
        c2_buf_V_11_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_11_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_11_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input11_ce0;
    end else begin
        c2_buf_V_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_11_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output26_we0;
    end else begin
        c2_buf_V_11_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_12_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output27_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_12_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input12_address0;
    end else begin
        c2_buf_V_12_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_12_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_12_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input12_ce0;
    end else begin
        c2_buf_V_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_12_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output27_we0;
    end else begin
        c2_buf_V_12_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_13_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output28_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_13_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input13_address0;
    end else begin
        c2_buf_V_13_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_13_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_13_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input13_ce0;
    end else begin
        c2_buf_V_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_13_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output28_we0;
    end else begin
        c2_buf_V_13_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_14_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output29_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_14_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input14_address0;
    end else begin
        c2_buf_V_14_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_14_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_14_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input14_ce0;
    end else begin
        c2_buf_V_14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_14_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output29_we0;
    end else begin
        c2_buf_V_14_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_15_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output30_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_15_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input15_address0;
    end else begin
        c2_buf_V_15_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_15_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_15_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input15_ce0;
    end else begin
        c2_buf_V_15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_15_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output30_we0;
    end else begin
        c2_buf_V_15_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_16_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output31_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_16_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input16_address0;
    end else begin
        c2_buf_V_16_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_16_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_16_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input16_ce0;
    end else begin
        c2_buf_V_16_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_16_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output31_we0;
    end else begin
        c2_buf_V_16_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_17_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output32_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_17_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input17_address0;
    end else begin
        c2_buf_V_17_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_17_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output32_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_17_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input17_ce0;
    end else begin
        c2_buf_V_17_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_17_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output32_we0;
    end else begin
        c2_buf_V_17_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_18_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output33_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_18_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input18_address0;
    end else begin
        c2_buf_V_18_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_18_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output33_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_18_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input18_ce0;
    end else begin
        c2_buf_V_18_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_18_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output33_we0;
    end else begin
        c2_buf_V_18_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_19_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output34_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_19_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input19_address0;
    end else begin
        c2_buf_V_19_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_19_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output34_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_19_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input19_ce0;
    end else begin
        c2_buf_V_19_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_19_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output34_we0;
    end else begin
        c2_buf_V_19_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_1_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output16_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_1_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input1_address0;
    end else begin
        c2_buf_V_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_1_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_1_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input1_ce0;
    end else begin
        c2_buf_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_1_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output16_we0;
    end else begin
        c2_buf_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_20_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output35_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_20_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input20_address0;
    end else begin
        c2_buf_V_20_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_20_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output35_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_20_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input20_ce0;
    end else begin
        c2_buf_V_20_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_20_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output35_we0;
    end else begin
        c2_buf_V_20_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_21_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output36_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_21_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input21_address0;
    end else begin
        c2_buf_V_21_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_21_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output36_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_21_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input21_ce0;
    end else begin
        c2_buf_V_21_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_21_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output36_we0;
    end else begin
        c2_buf_V_21_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_22_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output37_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_22_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input22_address0;
    end else begin
        c2_buf_V_22_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_22_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output37_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_22_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input22_ce0;
    end else begin
        c2_buf_V_22_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_22_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output37_we0;
    end else begin
        c2_buf_V_22_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_23_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output38_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_23_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input23_address0;
    end else begin
        c2_buf_V_23_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_23_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output38_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_23_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input23_ce0;
    end else begin
        c2_buf_V_23_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_23_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output38_we0;
    end else begin
        c2_buf_V_23_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_24_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output39_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_24_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input24_address0;
    end else begin
        c2_buf_V_24_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_24_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output39_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_24_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input24_ce0;
    end else begin
        c2_buf_V_24_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_24_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output39_we0;
    end else begin
        c2_buf_V_24_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_25_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output40_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_25_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input25_address0;
    end else begin
        c2_buf_V_25_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_25_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output40_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_25_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input25_ce0;
    end else begin
        c2_buf_V_25_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_25_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output40_we0;
    end else begin
        c2_buf_V_25_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_26_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output41_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_26_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input26_address0;
    end else begin
        c2_buf_V_26_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_26_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output41_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_26_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input26_ce0;
    end else begin
        c2_buf_V_26_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_26_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output41_we0;
    end else begin
        c2_buf_V_26_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_27_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output42_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_27_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input27_address0;
    end else begin
        c2_buf_V_27_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_27_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output42_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_27_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input27_ce0;
    end else begin
        c2_buf_V_27_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_27_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output42_we0;
    end else begin
        c2_buf_V_27_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_28_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output43_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_28_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input28_address0;
    end else begin
        c2_buf_V_28_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_28_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output43_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_28_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input28_ce0;
    end else begin
        c2_buf_V_28_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_28_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output43_we0;
    end else begin
        c2_buf_V_28_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_29_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output44_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_29_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input29_address0;
    end else begin
        c2_buf_V_29_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_29_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output44_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_29_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input29_ce0;
    end else begin
        c2_buf_V_29_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_29_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output44_we0;
    end else begin
        c2_buf_V_29_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_2_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output17_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_2_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input2_address0;
    end else begin
        c2_buf_V_2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_2_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_2_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input2_ce0;
    end else begin
        c2_buf_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_2_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output17_we0;
    end else begin
        c2_buf_V_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_30_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output45_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_30_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input30_address0;
    end else begin
        c2_buf_V_30_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_30_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output45_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_30_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input30_ce0;
    end else begin
        c2_buf_V_30_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_30_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output45_we0;
    end else begin
        c2_buf_V_30_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_31_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output46_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_31_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input31_address0;
    end else begin
        c2_buf_V_31_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_31_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output46_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_31_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input31_ce0;
    end else begin
        c2_buf_V_31_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_31_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output46_we0;
    end else begin
        c2_buf_V_31_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_3_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output18_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_3_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input3_address0;
    end else begin
        c2_buf_V_3_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_3_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_3_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input3_ce0;
    end else begin
        c2_buf_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_3_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output18_we0;
    end else begin
        c2_buf_V_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_4_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output19_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_4_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input4_address0;
    end else begin
        c2_buf_V_4_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_4_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_4_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input4_ce0;
    end else begin
        c2_buf_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_4_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output19_we0;
    end else begin
        c2_buf_V_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_5_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output20_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_5_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input5_address0;
    end else begin
        c2_buf_V_5_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_5_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_5_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input5_ce0;
    end else begin
        c2_buf_V_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_5_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output20_we0;
    end else begin
        c2_buf_V_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_6_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output21_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_6_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input6_address0;
    end else begin
        c2_buf_V_6_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_6_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_6_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input6_ce0;
    end else begin
        c2_buf_V_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_6_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output21_we0;
    end else begin
        c2_buf_V_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_7_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output22_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_7_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input7_address0;
    end else begin
        c2_buf_V_7_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_7_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_7_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input7_ce0;
    end else begin
        c2_buf_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_7_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output22_we0;
    end else begin
        c2_buf_V_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_8_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output23_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_8_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input8_address0;
    end else begin
        c2_buf_V_8_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_8_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_8_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input8_ce0;
    end else begin
        c2_buf_V_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_8_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output23_we0;
    end else begin
        c2_buf_V_8_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_9_address0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output24_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_9_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input9_address0;
    end else begin
        c2_buf_V_9_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_9_ce0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c2_buf_V_9_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_input9_ce0;
    end else begin
        c2_buf_V_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        c2_buf_V_9_we0 = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_output24_we0;
    end else begin
        c2_buf_V_9_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_0_address0 = grp_global_avgpool_64_800_s_fu_2130_input_r_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_0_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output_r_address0;
    end else begin
        c3_buf_V_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_0_ce0 = grp_global_avgpool_64_800_s_fu_2130_input_r_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_0_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output_r_ce0;
    end else begin
        c3_buf_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_0_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output_r_we0;
    end else begin
        c3_buf_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_10_address0 = grp_global_avgpool_64_800_s_fu_2130_input10_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_10_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output41_address0;
    end else begin
        c3_buf_V_10_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_10_ce0 = grp_global_avgpool_64_800_s_fu_2130_input10_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_10_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output41_ce0;
    end else begin
        c3_buf_V_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_10_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output41_we0;
    end else begin
        c3_buf_V_10_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_11_address0 = grp_global_avgpool_64_800_s_fu_2130_input11_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_11_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output42_address0;
    end else begin
        c3_buf_V_11_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_11_ce0 = grp_global_avgpool_64_800_s_fu_2130_input11_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_11_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output42_ce0;
    end else begin
        c3_buf_V_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_11_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output42_we0;
    end else begin
        c3_buf_V_11_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_12_address0 = grp_global_avgpool_64_800_s_fu_2130_input12_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_12_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output43_address0;
    end else begin
        c3_buf_V_12_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_12_ce0 = grp_global_avgpool_64_800_s_fu_2130_input12_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_12_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output43_ce0;
    end else begin
        c3_buf_V_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_12_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output43_we0;
    end else begin
        c3_buf_V_12_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_13_address0 = grp_global_avgpool_64_800_s_fu_2130_input13_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_13_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output44_address0;
    end else begin
        c3_buf_V_13_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_13_ce0 = grp_global_avgpool_64_800_s_fu_2130_input13_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_13_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output44_ce0;
    end else begin
        c3_buf_V_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_13_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output44_we0;
    end else begin
        c3_buf_V_13_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_14_address0 = grp_global_avgpool_64_800_s_fu_2130_input14_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_14_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output45_address0;
    end else begin
        c3_buf_V_14_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_14_ce0 = grp_global_avgpool_64_800_s_fu_2130_input14_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_14_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output45_ce0;
    end else begin
        c3_buf_V_14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_14_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output45_we0;
    end else begin
        c3_buf_V_14_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_15_address0 = grp_global_avgpool_64_800_s_fu_2130_input15_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_15_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output46_address0;
    end else begin
        c3_buf_V_15_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_15_ce0 = grp_global_avgpool_64_800_s_fu_2130_input15_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_15_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output46_ce0;
    end else begin
        c3_buf_V_15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_15_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output46_we0;
    end else begin
        c3_buf_V_15_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_16_address0 = grp_global_avgpool_64_800_s_fu_2130_input16_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_16_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output47_address0;
    end else begin
        c3_buf_V_16_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_16_ce0 = grp_global_avgpool_64_800_s_fu_2130_input16_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_16_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output47_ce0;
    end else begin
        c3_buf_V_16_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_16_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output47_we0;
    end else begin
        c3_buf_V_16_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_17_address0 = grp_global_avgpool_64_800_s_fu_2130_input17_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_17_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output48_address0;
    end else begin
        c3_buf_V_17_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_17_ce0 = grp_global_avgpool_64_800_s_fu_2130_input17_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_17_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output48_ce0;
    end else begin
        c3_buf_V_17_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_17_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output48_we0;
    end else begin
        c3_buf_V_17_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_18_address0 = grp_global_avgpool_64_800_s_fu_2130_input18_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_18_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output49_address0;
    end else begin
        c3_buf_V_18_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_18_ce0 = grp_global_avgpool_64_800_s_fu_2130_input18_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_18_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output49_ce0;
    end else begin
        c3_buf_V_18_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_18_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output49_we0;
    end else begin
        c3_buf_V_18_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_19_address0 = grp_global_avgpool_64_800_s_fu_2130_input19_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_19_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output50_address0;
    end else begin
        c3_buf_V_19_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_19_ce0 = grp_global_avgpool_64_800_s_fu_2130_input19_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_19_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output50_ce0;
    end else begin
        c3_buf_V_19_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_19_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output50_we0;
    end else begin
        c3_buf_V_19_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_1_address0 = grp_global_avgpool_64_800_s_fu_2130_input1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_1_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output32_address0;
    end else begin
        c3_buf_V_1_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_1_ce0 = grp_global_avgpool_64_800_s_fu_2130_input1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_1_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output32_ce0;
    end else begin
        c3_buf_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_1_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output32_we0;
    end else begin
        c3_buf_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_20_address0 = grp_global_avgpool_64_800_s_fu_2130_input20_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_20_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output51_address0;
    end else begin
        c3_buf_V_20_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_20_ce0 = grp_global_avgpool_64_800_s_fu_2130_input20_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_20_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output51_ce0;
    end else begin
        c3_buf_V_20_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_20_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output51_we0;
    end else begin
        c3_buf_V_20_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_21_address0 = grp_global_avgpool_64_800_s_fu_2130_input21_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_21_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output52_address0;
    end else begin
        c3_buf_V_21_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_21_ce0 = grp_global_avgpool_64_800_s_fu_2130_input21_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_21_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output52_ce0;
    end else begin
        c3_buf_V_21_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_21_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output52_we0;
    end else begin
        c3_buf_V_21_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_22_address0 = grp_global_avgpool_64_800_s_fu_2130_input22_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_22_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output53_address0;
    end else begin
        c3_buf_V_22_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_22_ce0 = grp_global_avgpool_64_800_s_fu_2130_input22_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_22_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output53_ce0;
    end else begin
        c3_buf_V_22_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_22_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output53_we0;
    end else begin
        c3_buf_V_22_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_23_address0 = grp_global_avgpool_64_800_s_fu_2130_input23_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_23_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output54_address0;
    end else begin
        c3_buf_V_23_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_23_ce0 = grp_global_avgpool_64_800_s_fu_2130_input23_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_23_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output54_ce0;
    end else begin
        c3_buf_V_23_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_23_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output54_we0;
    end else begin
        c3_buf_V_23_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_24_address0 = grp_global_avgpool_64_800_s_fu_2130_input24_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_24_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output55_address0;
    end else begin
        c3_buf_V_24_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_24_ce0 = grp_global_avgpool_64_800_s_fu_2130_input24_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_24_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output55_ce0;
    end else begin
        c3_buf_V_24_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_24_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output55_we0;
    end else begin
        c3_buf_V_24_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_25_address0 = grp_global_avgpool_64_800_s_fu_2130_input25_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_25_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output56_address0;
    end else begin
        c3_buf_V_25_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_25_ce0 = grp_global_avgpool_64_800_s_fu_2130_input25_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_25_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output56_ce0;
    end else begin
        c3_buf_V_25_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_25_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output56_we0;
    end else begin
        c3_buf_V_25_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_26_address0 = grp_global_avgpool_64_800_s_fu_2130_input26_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_26_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output57_address0;
    end else begin
        c3_buf_V_26_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_26_ce0 = grp_global_avgpool_64_800_s_fu_2130_input26_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_26_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output57_ce0;
    end else begin
        c3_buf_V_26_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_26_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output57_we0;
    end else begin
        c3_buf_V_26_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_27_address0 = grp_global_avgpool_64_800_s_fu_2130_input27_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_27_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output58_address0;
    end else begin
        c3_buf_V_27_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_27_ce0 = grp_global_avgpool_64_800_s_fu_2130_input27_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_27_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output58_ce0;
    end else begin
        c3_buf_V_27_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_27_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output58_we0;
    end else begin
        c3_buf_V_27_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_28_address0 = grp_global_avgpool_64_800_s_fu_2130_input28_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_28_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output59_address0;
    end else begin
        c3_buf_V_28_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_28_ce0 = grp_global_avgpool_64_800_s_fu_2130_input28_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_28_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output59_ce0;
    end else begin
        c3_buf_V_28_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_28_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output59_we0;
    end else begin
        c3_buf_V_28_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_29_address0 = grp_global_avgpool_64_800_s_fu_2130_input29_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_29_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output60_address0;
    end else begin
        c3_buf_V_29_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_29_ce0 = grp_global_avgpool_64_800_s_fu_2130_input29_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_29_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output60_ce0;
    end else begin
        c3_buf_V_29_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_29_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output60_we0;
    end else begin
        c3_buf_V_29_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_2_address0 = grp_global_avgpool_64_800_s_fu_2130_input2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_2_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output33_address0;
    end else begin
        c3_buf_V_2_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_2_ce0 = grp_global_avgpool_64_800_s_fu_2130_input2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_2_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output33_ce0;
    end else begin
        c3_buf_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_2_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output33_we0;
    end else begin
        c3_buf_V_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_30_address0 = grp_global_avgpool_64_800_s_fu_2130_input30_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_30_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output61_address0;
    end else begin
        c3_buf_V_30_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_30_ce0 = grp_global_avgpool_64_800_s_fu_2130_input30_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_30_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output61_ce0;
    end else begin
        c3_buf_V_30_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_30_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output61_we0;
    end else begin
        c3_buf_V_30_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_31_address0 = grp_global_avgpool_64_800_s_fu_2130_input31_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_31_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output62_address0;
    end else begin
        c3_buf_V_31_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_31_ce0 = grp_global_avgpool_64_800_s_fu_2130_input31_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_31_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output62_ce0;
    end else begin
        c3_buf_V_31_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_31_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output62_we0;
    end else begin
        c3_buf_V_31_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_32_address0 = grp_global_avgpool_64_800_s_fu_2130_input32_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_32_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output63_address0;
    end else begin
        c3_buf_V_32_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_32_ce0 = grp_global_avgpool_64_800_s_fu_2130_input32_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_32_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output63_ce0;
    end else begin
        c3_buf_V_32_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_32_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output63_we0;
    end else begin
        c3_buf_V_32_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_33_address0 = grp_global_avgpool_64_800_s_fu_2130_input33_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_33_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output64_address0;
    end else begin
        c3_buf_V_33_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_33_ce0 = grp_global_avgpool_64_800_s_fu_2130_input33_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_33_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output64_ce0;
    end else begin
        c3_buf_V_33_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_33_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output64_we0;
    end else begin
        c3_buf_V_33_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_34_address0 = grp_global_avgpool_64_800_s_fu_2130_input34_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_34_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output65_address0;
    end else begin
        c3_buf_V_34_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_34_ce0 = grp_global_avgpool_64_800_s_fu_2130_input34_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_34_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output65_ce0;
    end else begin
        c3_buf_V_34_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_34_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output65_we0;
    end else begin
        c3_buf_V_34_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_35_address0 = grp_global_avgpool_64_800_s_fu_2130_input35_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_35_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output66_address0;
    end else begin
        c3_buf_V_35_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_35_ce0 = grp_global_avgpool_64_800_s_fu_2130_input35_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_35_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output66_ce0;
    end else begin
        c3_buf_V_35_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_35_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output66_we0;
    end else begin
        c3_buf_V_35_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_36_address0 = grp_global_avgpool_64_800_s_fu_2130_input36_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_36_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output67_address0;
    end else begin
        c3_buf_V_36_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_36_ce0 = grp_global_avgpool_64_800_s_fu_2130_input36_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_36_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output67_ce0;
    end else begin
        c3_buf_V_36_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_36_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output67_we0;
    end else begin
        c3_buf_V_36_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_37_address0 = grp_global_avgpool_64_800_s_fu_2130_input37_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_37_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output68_address0;
    end else begin
        c3_buf_V_37_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_37_ce0 = grp_global_avgpool_64_800_s_fu_2130_input37_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_37_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output68_ce0;
    end else begin
        c3_buf_V_37_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_37_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output68_we0;
    end else begin
        c3_buf_V_37_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_38_address0 = grp_global_avgpool_64_800_s_fu_2130_input38_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_38_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output69_address0;
    end else begin
        c3_buf_V_38_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_38_ce0 = grp_global_avgpool_64_800_s_fu_2130_input38_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_38_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output69_ce0;
    end else begin
        c3_buf_V_38_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_38_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output69_we0;
    end else begin
        c3_buf_V_38_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_39_address0 = grp_global_avgpool_64_800_s_fu_2130_input39_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_39_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output70_address0;
    end else begin
        c3_buf_V_39_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_39_ce0 = grp_global_avgpool_64_800_s_fu_2130_input39_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_39_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output70_ce0;
    end else begin
        c3_buf_V_39_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_39_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output70_we0;
    end else begin
        c3_buf_V_39_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_3_address0 = grp_global_avgpool_64_800_s_fu_2130_input3_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_3_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output34_address0;
    end else begin
        c3_buf_V_3_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_3_ce0 = grp_global_avgpool_64_800_s_fu_2130_input3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_3_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output34_ce0;
    end else begin
        c3_buf_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_3_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output34_we0;
    end else begin
        c3_buf_V_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_40_address0 = grp_global_avgpool_64_800_s_fu_2130_input40_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_40_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output71_address0;
    end else begin
        c3_buf_V_40_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_40_ce0 = grp_global_avgpool_64_800_s_fu_2130_input40_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_40_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output71_ce0;
    end else begin
        c3_buf_V_40_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_40_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output71_we0;
    end else begin
        c3_buf_V_40_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_41_address0 = grp_global_avgpool_64_800_s_fu_2130_input41_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_41_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output72_address0;
    end else begin
        c3_buf_V_41_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_41_ce0 = grp_global_avgpool_64_800_s_fu_2130_input41_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_41_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output72_ce0;
    end else begin
        c3_buf_V_41_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_41_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output72_we0;
    end else begin
        c3_buf_V_41_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_42_address0 = grp_global_avgpool_64_800_s_fu_2130_input42_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_42_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output73_address0;
    end else begin
        c3_buf_V_42_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_42_ce0 = grp_global_avgpool_64_800_s_fu_2130_input42_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_42_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output73_ce0;
    end else begin
        c3_buf_V_42_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_42_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output73_we0;
    end else begin
        c3_buf_V_42_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_43_address0 = grp_global_avgpool_64_800_s_fu_2130_input43_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_43_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output74_address0;
    end else begin
        c3_buf_V_43_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_43_ce0 = grp_global_avgpool_64_800_s_fu_2130_input43_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_43_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output74_ce0;
    end else begin
        c3_buf_V_43_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_43_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output74_we0;
    end else begin
        c3_buf_V_43_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_44_address0 = grp_global_avgpool_64_800_s_fu_2130_input44_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_44_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output75_address0;
    end else begin
        c3_buf_V_44_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_44_ce0 = grp_global_avgpool_64_800_s_fu_2130_input44_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_44_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output75_ce0;
    end else begin
        c3_buf_V_44_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_44_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output75_we0;
    end else begin
        c3_buf_V_44_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_45_address0 = grp_global_avgpool_64_800_s_fu_2130_input45_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_45_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output76_address0;
    end else begin
        c3_buf_V_45_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_45_ce0 = grp_global_avgpool_64_800_s_fu_2130_input45_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_45_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output76_ce0;
    end else begin
        c3_buf_V_45_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_45_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output76_we0;
    end else begin
        c3_buf_V_45_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_46_address0 = grp_global_avgpool_64_800_s_fu_2130_input46_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_46_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output77_address0;
    end else begin
        c3_buf_V_46_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_46_ce0 = grp_global_avgpool_64_800_s_fu_2130_input46_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_46_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output77_ce0;
    end else begin
        c3_buf_V_46_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_46_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output77_we0;
    end else begin
        c3_buf_V_46_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_47_address0 = grp_global_avgpool_64_800_s_fu_2130_input47_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_47_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output78_address0;
    end else begin
        c3_buf_V_47_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_47_ce0 = grp_global_avgpool_64_800_s_fu_2130_input47_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_47_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output78_ce0;
    end else begin
        c3_buf_V_47_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_47_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output78_we0;
    end else begin
        c3_buf_V_47_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_48_address0 = grp_global_avgpool_64_800_s_fu_2130_input48_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_48_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output79_address0;
    end else begin
        c3_buf_V_48_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_48_ce0 = grp_global_avgpool_64_800_s_fu_2130_input48_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_48_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output79_ce0;
    end else begin
        c3_buf_V_48_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_48_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output79_we0;
    end else begin
        c3_buf_V_48_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_49_address0 = grp_global_avgpool_64_800_s_fu_2130_input49_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_49_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output80_address0;
    end else begin
        c3_buf_V_49_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_49_ce0 = grp_global_avgpool_64_800_s_fu_2130_input49_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_49_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output80_ce0;
    end else begin
        c3_buf_V_49_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_49_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output80_we0;
    end else begin
        c3_buf_V_49_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_4_address0 = grp_global_avgpool_64_800_s_fu_2130_input4_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_4_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output35_address0;
    end else begin
        c3_buf_V_4_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_4_ce0 = grp_global_avgpool_64_800_s_fu_2130_input4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_4_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output35_ce0;
    end else begin
        c3_buf_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_4_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output35_we0;
    end else begin
        c3_buf_V_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_50_address0 = grp_global_avgpool_64_800_s_fu_2130_input50_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_50_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output81_address0;
    end else begin
        c3_buf_V_50_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_50_ce0 = grp_global_avgpool_64_800_s_fu_2130_input50_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_50_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output81_ce0;
    end else begin
        c3_buf_V_50_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_50_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output81_we0;
    end else begin
        c3_buf_V_50_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_51_address0 = grp_global_avgpool_64_800_s_fu_2130_input51_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_51_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output82_address0;
    end else begin
        c3_buf_V_51_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_51_ce0 = grp_global_avgpool_64_800_s_fu_2130_input51_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_51_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output82_ce0;
    end else begin
        c3_buf_V_51_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_51_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output82_we0;
    end else begin
        c3_buf_V_51_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_52_address0 = grp_global_avgpool_64_800_s_fu_2130_input52_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_52_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output83_address0;
    end else begin
        c3_buf_V_52_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_52_ce0 = grp_global_avgpool_64_800_s_fu_2130_input52_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_52_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output83_ce0;
    end else begin
        c3_buf_V_52_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_52_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output83_we0;
    end else begin
        c3_buf_V_52_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_53_address0 = grp_global_avgpool_64_800_s_fu_2130_input53_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_53_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output84_address0;
    end else begin
        c3_buf_V_53_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_53_ce0 = grp_global_avgpool_64_800_s_fu_2130_input53_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_53_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output84_ce0;
    end else begin
        c3_buf_V_53_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_53_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output84_we0;
    end else begin
        c3_buf_V_53_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_54_address0 = grp_global_avgpool_64_800_s_fu_2130_input54_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_54_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output85_address0;
    end else begin
        c3_buf_V_54_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_54_ce0 = grp_global_avgpool_64_800_s_fu_2130_input54_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_54_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output85_ce0;
    end else begin
        c3_buf_V_54_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_54_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output85_we0;
    end else begin
        c3_buf_V_54_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_55_address0 = grp_global_avgpool_64_800_s_fu_2130_input55_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_55_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output86_address0;
    end else begin
        c3_buf_V_55_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_55_ce0 = grp_global_avgpool_64_800_s_fu_2130_input55_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_55_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output86_ce0;
    end else begin
        c3_buf_V_55_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_55_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output86_we0;
    end else begin
        c3_buf_V_55_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_56_address0 = grp_global_avgpool_64_800_s_fu_2130_input56_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_56_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output87_address0;
    end else begin
        c3_buf_V_56_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_56_ce0 = grp_global_avgpool_64_800_s_fu_2130_input56_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_56_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output87_ce0;
    end else begin
        c3_buf_V_56_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_56_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output87_we0;
    end else begin
        c3_buf_V_56_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_57_address0 = grp_global_avgpool_64_800_s_fu_2130_input57_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_57_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output88_address0;
    end else begin
        c3_buf_V_57_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_57_ce0 = grp_global_avgpool_64_800_s_fu_2130_input57_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_57_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output88_ce0;
    end else begin
        c3_buf_V_57_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_57_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output88_we0;
    end else begin
        c3_buf_V_57_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_58_address0 = grp_global_avgpool_64_800_s_fu_2130_input58_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_58_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output89_address0;
    end else begin
        c3_buf_V_58_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_58_ce0 = grp_global_avgpool_64_800_s_fu_2130_input58_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_58_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output89_ce0;
    end else begin
        c3_buf_V_58_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_58_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output89_we0;
    end else begin
        c3_buf_V_58_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_59_address0 = grp_global_avgpool_64_800_s_fu_2130_input59_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_59_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output90_address0;
    end else begin
        c3_buf_V_59_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_59_ce0 = grp_global_avgpool_64_800_s_fu_2130_input59_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_59_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output90_ce0;
    end else begin
        c3_buf_V_59_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_59_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output90_we0;
    end else begin
        c3_buf_V_59_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_5_address0 = grp_global_avgpool_64_800_s_fu_2130_input5_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_5_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output36_address0;
    end else begin
        c3_buf_V_5_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_5_ce0 = grp_global_avgpool_64_800_s_fu_2130_input5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_5_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output36_ce0;
    end else begin
        c3_buf_V_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_5_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output36_we0;
    end else begin
        c3_buf_V_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_60_address0 = grp_global_avgpool_64_800_s_fu_2130_input60_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_60_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output91_address0;
    end else begin
        c3_buf_V_60_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_60_ce0 = grp_global_avgpool_64_800_s_fu_2130_input60_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_60_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output91_ce0;
    end else begin
        c3_buf_V_60_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_60_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output91_we0;
    end else begin
        c3_buf_V_60_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_61_address0 = grp_global_avgpool_64_800_s_fu_2130_input61_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_61_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output92_address0;
    end else begin
        c3_buf_V_61_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_61_ce0 = grp_global_avgpool_64_800_s_fu_2130_input61_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_61_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output92_ce0;
    end else begin
        c3_buf_V_61_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_61_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output92_we0;
    end else begin
        c3_buf_V_61_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_62_address0 = grp_global_avgpool_64_800_s_fu_2130_input62_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_62_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output93_address0;
    end else begin
        c3_buf_V_62_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_62_ce0 = grp_global_avgpool_64_800_s_fu_2130_input62_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_62_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output93_ce0;
    end else begin
        c3_buf_V_62_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_62_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output93_we0;
    end else begin
        c3_buf_V_62_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_63_address0 = grp_global_avgpool_64_800_s_fu_2130_input63_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_63_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output94_address0;
    end else begin
        c3_buf_V_63_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_63_ce0 = grp_global_avgpool_64_800_s_fu_2130_input63_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_63_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output94_ce0;
    end else begin
        c3_buf_V_63_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_63_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output94_we0;
    end else begin
        c3_buf_V_63_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_6_address0 = grp_global_avgpool_64_800_s_fu_2130_input6_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_6_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output37_address0;
    end else begin
        c3_buf_V_6_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_6_ce0 = grp_global_avgpool_64_800_s_fu_2130_input6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_6_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output37_ce0;
    end else begin
        c3_buf_V_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_6_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output37_we0;
    end else begin
        c3_buf_V_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_7_address0 = grp_global_avgpool_64_800_s_fu_2130_input7_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_7_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output38_address0;
    end else begin
        c3_buf_V_7_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_7_ce0 = grp_global_avgpool_64_800_s_fu_2130_input7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_7_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output38_ce0;
    end else begin
        c3_buf_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_7_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output38_we0;
    end else begin
        c3_buf_V_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_8_address0 = grp_global_avgpool_64_800_s_fu_2130_input8_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_8_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output39_address0;
    end else begin
        c3_buf_V_8_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_8_ce0 = grp_global_avgpool_64_800_s_fu_2130_input8_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_8_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output39_ce0;
    end else begin
        c3_buf_V_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_8_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output39_we0;
    end else begin
        c3_buf_V_8_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_9_address0 = grp_global_avgpool_64_800_s_fu_2130_input9_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_9_address0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output40_address0;
    end else begin
        c3_buf_V_9_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        c3_buf_V_9_ce0 = grp_global_avgpool_64_800_s_fu_2130_input9_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_9_ce0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output40_ce0;
    end else begin
        c3_buf_V_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        c3_buf_V_9_we0 = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_output40_we0;
    end else begin
        c3_buf_V_9_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        in_buf_V_0_address0 = zext_ln41_fu_2315_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        in_buf_V_0_address0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_input_r_address0;
    end else begin
        in_buf_V_0_address0 = 'bx;
    end
end

always @ (*) begin
    if ((~((s_axis_V_TVALID_int_regslice == 1'b0) & (icmp_ln41_fu_2309_p2 == 1'd0)) & (1'b1 == ap_CS_fsm_state2))) begin
        in_buf_V_0_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        in_buf_V_0_ce0 = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_input_r_ce0;
    end else begin
        in_buf_V_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((s_axis_V_TVALID_int_regslice == 1'b0) & (icmp_ln41_fu_2309_p2 == 1'd0)) & (icmp_ln41_fu_2309_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        in_buf_V_0_we0 = 1'b1;
    end else begin
        in_buf_V_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        m_axis_V_TDATA_blk_n = m_axis_V_TREADY_int_regslice;
    end else begin
        m_axis_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((m_axis_V_TREADY_int_regslice == 1'b0) | (grp_fc_layer_64_2_s_fu_2219_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
        m_axis_V_TVALID_int_regslice = 1'b1;
    end else begin
        m_axis_V_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln41_fu_2309_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        s_axis_V_TDATA_blk_n = s_axis_V_TVALID_int_regslice;
    end else begin
        s_axis_V_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((s_axis_V_TVALID_int_regslice == 1'b0) & (icmp_ln41_fu_2309_p2 == 1'd0)) & (icmp_ln41_fu_2309_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        s_axis_V_TREADY_int_regslice = 1'b1;
    end else begin
        s_axis_V_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((s_axis_V_TVALID_int_regslice == 1'b0) & (icmp_ln41_fu_2309_p2 == 1'd0)) & (icmp_ln41_fu_2309_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if ((~((s_axis_V_TVALID_int_regslice == 1'b0) & (icmp_ln41_fu_2309_p2 == 1'd0)) & (icmp_ln41_fu_2309_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (grp_global_avgpool_64_800_s_fu_2130_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if ((~((m_axis_V_TREADY_int_regslice == 1'b0) | (grp_fc_layer_64_2_s_fu_2219_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            if ((~((m_axis_V_TREADY_int_regslice == 1'b0) | (regslice_both_m_axis_V_U_apdone_blk == 1'b1)) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln41_fu_2303_p2 = (i_reg_1263 + 10'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state12 = ((m_axis_V_TREADY_int_regslice == 1'b0) | (regslice_both_m_axis_V_U_apdone_blk == 1'b1));
end

always @ (*) begin
    ap_block_state2 = ((s_axis_V_TVALID_int_regslice == 1'b0) & (icmp_ln41_fu_2309_p2 == 1'd0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_start = grp_conv1d_same_relu_16_32_5_2_800_s_fu_1758_ap_start_reg;

assign grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_start = grp_conv1d_same_relu_1_16_7_3_800_s_fu_2198_ap_start_reg;

assign grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_start = grp_conv1d_same_relu_32_64_3_1_800_s_fu_1274_ap_start_reg;

assign grp_fc_layer_64_2_s_fu_2219_ap_start = grp_fc_layer_64_2_s_fu_2219_ap_start_reg;

assign grp_global_avgpool_64_800_s_fu_2130_ap_start = grp_global_avgpool_64_800_s_fu_2130_ap_start_reg;

assign icmp_ln41_fu_2309_p2 = ((i_reg_1263 == 10'd800) ? 1'b1 : 1'b0);

assign icmp_ln886_fu_2653_p2 = (($signed(grp_fc_layer_64_2_s_fu_2219_ap_return_1) > $signed(grp_fc_layer_64_2_s_fu_2219_ap_return_0)) ? 1'b1 : 1'b0);

assign in_buf_V_0_d0 = s_axis_V_TDATA_int_regslice[7:0];

assign m_axis_V_TDATA_int_regslice = or_ln_fu_2685_p3;

assign m_axis_V_TVALID = regslice_both_m_axis_V_U_vld_out;

assign or_ln_fu_2685_p3 = {{9'd256}, {result_data_V_2_fu_2677_p3}};

assign r_1_fu_2671_p2 = grp_fc_layer_64_2_s_fu_2219_ap_return_0 << 24'd8;

assign r_fu_2659_p2 = grp_fc_layer_64_2_s_fu_2219_ap_return_1 << 24'd8;

assign result_data_V_2_fu_2677_p3 = ((icmp_ln886_fu_2653_p2[0:0] == 1'b1) ? ret_fu_2665_p2 : r_1_fu_2671_p2);

assign ret_fu_2665_p2 = (r_fu_2659_p2 | 24'd1);

assign s_axis_V_TREADY = regslice_both_s_axis_V_U_ack_in;

assign zext_ln41_fu_2315_p1 = i_reg_1263;

endmodule //cnn_top
