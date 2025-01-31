// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module tcp_slowrttoe_pkgStitcher (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        txEng_tcpPkgBuffer2_V_dout,
        txEng_tcpPkgBuffer2_V_empty_n,
        txEng_tcpPkgBuffer2_V_read,
        txEng_tcpChecksumFifo_V_V_dout,
        txEng_tcpChecksumFifo_V_V_empty_n,
        txEng_tcpChecksumFifo_V_V_read,
        txEng_ipHeaderBuffer_V_dout,
        txEng_ipHeaderBuffer_V_empty_n,
        txEng_ipHeaderBuffer_V_read,
        ipTxDataOut_V_data_V_din,
        ipTxDataOut_V_data_V_full_n,
        ipTxDataOut_V_data_V_write,
        ipTxDataOut_V_keep_V_din,
        ipTxDataOut_V_keep_V_full_n,
        ipTxDataOut_V_keep_V_write,
        ipTxDataOut_V_last_V_din,
        ipTxDataOut_V_last_V_full_n,
        ipTxDataOut_V_last_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv3_3 = 3'b11;
parameter    ap_const_lv3_2 = 3'b10;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_const_lv32_40 = 32'b1000000;
parameter    ap_const_lv32_47 = 32'b1000111;
parameter    ap_const_lv32_48 = 32'b1001000;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_2F = 32'b101111;
parameter    ap_const_lv3_5 = 3'b101;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [72:0] txEng_tcpPkgBuffer2_V_dout;
input   txEng_tcpPkgBuffer2_V_empty_n;
output   txEng_tcpPkgBuffer2_V_read;
input  [15:0] txEng_tcpChecksumFifo_V_V_dout;
input   txEng_tcpChecksumFifo_V_V_empty_n;
output   txEng_tcpChecksumFifo_V_V_read;
input  [72:0] txEng_ipHeaderBuffer_V_dout;
input   txEng_ipHeaderBuffer_V_empty_n;
output   txEng_ipHeaderBuffer_V_read;
output  [63:0] ipTxDataOut_V_data_V_din;
input   ipTxDataOut_V_data_V_full_n;
output   ipTxDataOut_V_data_V_write;
output  [7:0] ipTxDataOut_V_keep_V_din;
input   ipTxDataOut_V_keep_V_full_n;
output   ipTxDataOut_V_keep_V_write;
output  [0:0] ipTxDataOut_V_last_V_din;
input   ipTxDataOut_V_last_V_full_n;
output   ipTxDataOut_V_last_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg txEng_tcpPkgBuffer2_V_read;
reg txEng_tcpChecksumFifo_V_V_read;
reg txEng_ipHeaderBuffer_V_read;
reg[63:0] ipTxDataOut_V_data_V_din;
reg[7:0] ipTxDataOut_V_keep_V_din;
reg[0:0] ipTxDataOut_V_last_V_din;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [0:0] grp_nbreadreq_fu_132_p3;
wire   [0:0] tmp_69_nbreadreq_fu_140_p3;
wire   [0:0] grp_nbreadreq_fu_160_p3;
reg    ap_sig_bdd_106;
wire    ipTxDataOut_V_data_V1_status;
reg   [2:0] ps_wordCount_V_1_load_reg_358;
reg   [0:0] tmp_67_reg_362;
reg   [0:0] tmp_69_reg_366;
reg   [0:0] tmp_66_reg_380;
reg   [0:0] tmp_65_reg_394;
reg   [0:0] tmp_68_reg_398;
reg   [0:0] tmp_64_reg_412;
reg   [0:0] tmp_reg_431;
reg    ap_sig_bdd_164;
reg   [2:0] ps_wordCount_V_1 = 3'b000;
reg   [7:0] reg_208;
wire   [0:0] grp_fu_200_p3;
reg   [0:0] sendWord_last_V_2_reg_370;
wire   [63:0] p_Result_26_fu_247_p5;
reg   [63:0] p_Result_26_reg_375;
wire   [63:0] sendWord_data_V_1_fu_273_p1;
reg   [63:0] sendWord_data_V_1_reg_384;
reg   [0:0] sendWord_last_V_1_reg_389;
wire   [31:0] tmp_346_fu_283_p1;
reg   [31:0] tmp_346_reg_402;
reg   [31:0] p_Result_s_reg_407;
wire   [63:0] sendWord_data_V_fu_303_p1;
reg   [63:0] sendWord_data_V_reg_416;
reg   [7:0] sendWord_keep_V_reg_421;
reg   [0:0] sendWord_last_V_reg_426;
wire   [63:0] sendWord_data_V_2_fu_341_p1;
reg   [63:0] sendWord_data_V_2_reg_435;
reg   [0:0] sendWord_last_V_3_reg_440;
reg    ipTxDataOut_V_data_V1_update;
wire   [63:0] p_Result_s_130_fu_351_p3;
wire   [2:0] p_tmp_s_fu_259_p3;
wire   [2:0] tmp_cast_fu_331_p1;
wire   [7:0] tmp_349_fu_235_p1;
wire   [7:0] p_Result_6_fu_225_p4;
wire   [63:0] p_Val2_18_fu_221_p1;
wire   [15:0] tmp_80_fu_239_p3;
wire   [1:0] tmp_339_fu_217_p1;
wire   [1:0] tmp_s_fu_325_p2;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_120;
reg    ap_sig_bdd_126;
reg    ap_sig_bdd_136;
reg    ap_sig_bdd_145;
reg    ap_sig_bdd_159;
reg    ap_sig_bdd_240;
reg    ap_sig_bdd_52;
reg    ap_sig_bdd_62;
reg    ap_sig_bdd_75;
reg    ap_sig_bdd_84;
reg    ap_sig_bdd_258;
reg    ap_sig_bdd_171;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (ap_sig_bdd_171) begin
        if (ap_sig_bdd_258) begin
            ps_wordCount_V_1 <= ap_const_lv3_0;
        end else if (ap_sig_bdd_84) begin
            ps_wordCount_V_1 <= tmp_cast_fu_331_p1;
        end else if (ap_sig_bdd_75) begin
            ps_wordCount_V_1 <= ap_const_lv3_3;
        end else if (ap_sig_bdd_62) begin
            ps_wordCount_V_1 <= ap_const_lv3_4;
        end else if (ap_sig_bdd_52) begin
            ps_wordCount_V_1 <= p_tmp_s_fu_259_p3;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_69_nbreadreq_fu_140_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        p_Result_26_reg_375 <= p_Result_26_fu_247_p5;
        sendWord_last_V_2_reg_370 <= txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_48];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        p_Result_s_reg_407 <= {{txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_3F : ap_const_lv32_20]}};
        tmp_346_reg_402 <= tmp_346_fu_283_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ps_wordCount_V_1_load_reg_358 <= ps_wordCount_V_1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_69_nbreadreq_fu_140_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        reg_208 <= {{txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_47 : ap_const_lv32_40]}};
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        sendWord_data_V_1_reg_384 <= sendWord_data_V_1_fu_273_p1;
        sendWord_last_V_1_reg_389 <= txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_48];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        sendWord_data_V_2_reg_435 <= sendWord_data_V_2_fu_341_p1;
        sendWord_last_V_3_reg_440 <= txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_48];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ((~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3) & (ps_wordCount_V_1 == ap_const_lv3_1)) | (~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3) & (ps_wordCount_V_1 == ap_const_lv3_0))) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        sendWord_data_V_reg_416 <= sendWord_data_V_fu_303_p1;
        sendWord_keep_V_reg_421 <= {{txEng_ipHeaderBuffer_V_dout[ap_const_lv32_47 : ap_const_lv32_40]}};
        sendWord_last_V_reg_426 <= txEng_ipHeaderBuffer_V_dout[ap_const_lv32_48];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))) & ((ps_wordCount_V_1 == ap_const_lv3_1) | (ps_wordCount_V_1 == ap_const_lv3_0)))) begin
        tmp_64_reg_412 <= grp_nbreadreq_fu_160_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_65_reg_394 <= grp_nbreadreq_fu_160_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_66_reg_380 <= grp_nbreadreq_fu_132_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_67_reg_362 <= grp_nbreadreq_fu_132_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_68_reg_398 <= grp_nbreadreq_fu_132_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_69_reg_366 <= tmp_69_nbreadreq_fu_140_p3;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_reg_431 <= grp_nbreadreq_fu_132_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_164)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_164)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// ipTxDataOut_V_data_V1_update assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ps_wordCount_V_1_load_reg_358 or tmp_67_reg_362 or tmp_69_reg_366 or tmp_66_reg_380 or tmp_65_reg_394 or tmp_68_reg_398 or tmp_64_reg_412 or tmp_reg_431 or ap_sig_bdd_164)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_4 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_67_reg_362) & ~(ap_const_lv1_0 == tmp_69_reg_366) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_3 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_66_reg_380) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_2 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_65_reg_394) & ~(ap_const_lv1_0 == tmp_68_reg_398) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (((ap_const_lv3_1 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_64_reg_412)) | (~(ap_const_lv1_0 == tmp_64_reg_412) & (ap_const_lv3_0 == ps_wordCount_V_1_load_reg_358))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv3_4 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_3 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_2 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_1 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_0 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_reg_431) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ipTxDataOut_V_data_V1_update = ap_const_logic_1;
    end else begin
        ipTxDataOut_V_data_V1_update = ap_const_logic_0;
    end
end

/// ipTxDataOut_V_data_V_din assign process. ///
always @ (p_Result_26_reg_375 or sendWord_data_V_1_reg_384 or sendWord_data_V_reg_416 or sendWord_data_V_2_reg_435 or p_Result_s_130_fu_351_p3 or ap_sig_bdd_120 or ap_sig_bdd_126 or ap_sig_bdd_136 or ap_sig_bdd_145 or ap_sig_bdd_159 or ap_sig_bdd_240)
begin
    if (ap_sig_bdd_240) begin
        if (ap_sig_bdd_159) begin
            ipTxDataOut_V_data_V_din = sendWord_data_V_2_reg_435;
        end else if (ap_sig_bdd_145) begin
            ipTxDataOut_V_data_V_din = sendWord_data_V_reg_416;
        end else if (ap_sig_bdd_136) begin
            ipTxDataOut_V_data_V_din = p_Result_s_130_fu_351_p3;
        end else if (ap_sig_bdd_126) begin
            ipTxDataOut_V_data_V_din = sendWord_data_V_1_reg_384;
        end else if (ap_sig_bdd_120) begin
            ipTxDataOut_V_data_V_din = p_Result_26_reg_375;
        end else begin
            ipTxDataOut_V_data_V_din = 'bx;
        end
    end else begin
        ipTxDataOut_V_data_V_din = 'bx;
    end
end

/// ipTxDataOut_V_keep_V_din assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ps_wordCount_V_1_load_reg_358 or tmp_67_reg_362 or tmp_69_reg_366 or tmp_66_reg_380 or tmp_65_reg_394 or tmp_68_reg_398 or tmp_64_reg_412 or tmp_reg_431 or ap_sig_bdd_164 or reg_208 or sendWord_keep_V_reg_421)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (((ap_const_lv3_1 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_64_reg_412)) | (~(ap_const_lv1_0 == tmp_64_reg_412) & (ap_const_lv3_0 == ps_wordCount_V_1_load_reg_358))) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ipTxDataOut_V_keep_V_din = sendWord_keep_V_reg_421;
    end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_2 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_65_reg_394) & ~(ap_const_lv1_0 == tmp_68_reg_398) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ipTxDataOut_V_keep_V_din = ap_const_lv8_FF;
    end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_4 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_67_reg_362) & ~(ap_const_lv1_0 == tmp_69_reg_366) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_lv3_3 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_66_reg_380) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv3_4 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_3 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_2 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_1 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_0 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_reg_431) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ipTxDataOut_V_keep_V_din = reg_208;
    end else begin
        ipTxDataOut_V_keep_V_din = 'bx;
    end
end

/// ipTxDataOut_V_last_V_din assign process. ///
always @ (sendWord_last_V_2_reg_370 or sendWord_last_V_1_reg_389 or sendWord_last_V_reg_426 or sendWord_last_V_3_reg_440 or ap_sig_bdd_120 or ap_sig_bdd_126 or ap_sig_bdd_136 or ap_sig_bdd_145 or ap_sig_bdd_159 or ap_sig_bdd_240)
begin
    if (ap_sig_bdd_240) begin
        if (ap_sig_bdd_159) begin
            ipTxDataOut_V_last_V_din = sendWord_last_V_3_reg_440;
        end else if (ap_sig_bdd_145) begin
            ipTxDataOut_V_last_V_din = sendWord_last_V_reg_426;
        end else if (ap_sig_bdd_136) begin
            ipTxDataOut_V_last_V_din = ap_const_lv1_0;
        end else if (ap_sig_bdd_126) begin
            ipTxDataOut_V_last_V_din = sendWord_last_V_1_reg_389;
        end else if (ap_sig_bdd_120) begin
            ipTxDataOut_V_last_V_din = sendWord_last_V_2_reg_370;
        end else begin
            ipTxDataOut_V_last_V_din = 'bx;
        end
    end else begin
        ipTxDataOut_V_last_V_din = 'bx;
    end
end

/// txEng_ipHeaderBuffer_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or grp_nbreadreq_fu_132_p3 or grp_nbreadreq_fu_160_p3 or ap_sig_bdd_106 or ap_sig_bdd_164 or ps_wordCount_V_1)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ((~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3) & (ps_wordCount_V_1 == ap_const_lv3_1)) | (~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3) & (ps_wordCount_V_1 == ap_const_lv3_0))) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        txEng_ipHeaderBuffer_V_read = ap_const_logic_1;
    end else begin
        txEng_ipHeaderBuffer_V_read = ap_const_logic_0;
    end
end

/// txEng_tcpChecksumFifo_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or grp_nbreadreq_fu_132_p3 or tmp_69_nbreadreq_fu_140_p3 or ap_sig_bdd_106 or ap_sig_bdd_164 or ps_wordCount_V_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_69_nbreadreq_fu_140_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        txEng_tcpChecksumFifo_V_V_read = ap_const_logic_1;
    end else begin
        txEng_tcpChecksumFifo_V_V_read = ap_const_logic_0;
    end
end

/// txEng_tcpPkgBuffer2_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or grp_nbreadreq_fu_132_p3 or tmp_69_nbreadreq_fu_140_p3 or grp_nbreadreq_fu_160_p3 or ap_sig_bdd_106 or ap_sig_bdd_164 or ps_wordCount_V_1)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_69_nbreadreq_fu_140_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        txEng_tcpPkgBuffer2_V_read = ap_const_logic_1;
    end else begin
        txEng_tcpPkgBuffer2_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_164 or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_106 assign process. ///
always @ (ap_start or ap_done_reg or txEng_tcpPkgBuffer2_V_empty_n or grp_nbreadreq_fu_132_p3 or tmp_69_nbreadreq_fu_140_p3 or txEng_tcpChecksumFifo_V_V_empty_n or txEng_ipHeaderBuffer_V_empty_n or grp_nbreadreq_fu_160_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_106 = (((txEng_tcpPkgBuffer2_V_empty_n == ap_const_logic_0) & (ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_69_nbreadreq_fu_140_p3)) | ((ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_69_nbreadreq_fu_140_p3) & (txEng_tcpChecksumFifo_V_V_empty_n == ap_const_logic_0)) | ((txEng_tcpPkgBuffer2_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3)) | (~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & (txEng_ipHeaderBuffer_V_empty_n == ap_const_logic_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3)) | ((txEng_tcpPkgBuffer2_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3)) | ((txEng_ipHeaderBuffer_V_empty_n == ap_const_logic_0) & ((~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3) & (ps_wordCount_V_1 == ap_const_lv3_1)) | (~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3) & (ps_wordCount_V_1 == ap_const_lv3_0)))) | ((txEng_tcpPkgBuffer2_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_120 assign process. ///
always @ (ps_wordCount_V_1_load_reg_358 or tmp_67_reg_362 or tmp_69_reg_366)
begin
    ap_sig_bdd_120 = ((ap_const_lv3_4 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_67_reg_362) & ~(ap_const_lv1_0 == tmp_69_reg_366));
end

/// ap_sig_bdd_126 assign process. ///
always @ (ps_wordCount_V_1_load_reg_358 or tmp_66_reg_380)
begin
    ap_sig_bdd_126 = ((ap_const_lv3_3 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_66_reg_380));
end

/// ap_sig_bdd_136 assign process. ///
always @ (ps_wordCount_V_1_load_reg_358 or tmp_65_reg_394 or tmp_68_reg_398)
begin
    ap_sig_bdd_136 = ((ap_const_lv3_2 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_65_reg_394) & ~(ap_const_lv1_0 == tmp_68_reg_398));
end

/// ap_sig_bdd_145 assign process. ///
always @ (ps_wordCount_V_1_load_reg_358 or tmp_64_reg_412)
begin
    ap_sig_bdd_145 = (((ap_const_lv3_1 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_64_reg_412)) | (~(ap_const_lv1_0 == tmp_64_reg_412) & (ap_const_lv3_0 == ps_wordCount_V_1_load_reg_358)));
end

/// ap_sig_bdd_159 assign process. ///
always @ (ps_wordCount_V_1_load_reg_358 or tmp_reg_431)
begin
    ap_sig_bdd_159 = (~(ap_const_lv3_4 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_3 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_2 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_1 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_0 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_reg_431));
end

/// ap_sig_bdd_164 assign process. ///
always @ (ipTxDataOut_V_data_V1_status or ps_wordCount_V_1_load_reg_358 or tmp_67_reg_362 or tmp_69_reg_366 or tmp_66_reg_380 or tmp_65_reg_394 or tmp_68_reg_398 or tmp_64_reg_412 or tmp_reg_431)
begin
    ap_sig_bdd_164 = (((ipTxDataOut_V_data_V1_status == ap_const_logic_0) & (ap_const_lv3_4 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_67_reg_362) & ~(ap_const_lv1_0 == tmp_69_reg_366)) | ((ipTxDataOut_V_data_V1_status == ap_const_logic_0) & (ap_const_lv3_3 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_66_reg_380)) | ((ipTxDataOut_V_data_V1_status == ap_const_logic_0) & (ap_const_lv3_2 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_65_reg_394) & ~(ap_const_lv1_0 == tmp_68_reg_398)) | ((ipTxDataOut_V_data_V1_status == ap_const_logic_0) & (((ap_const_lv3_1 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_64_reg_412)) | (~(ap_const_lv1_0 == tmp_64_reg_412) & (ap_const_lv3_0 == ps_wordCount_V_1_load_reg_358)))) | ((ipTxDataOut_V_data_V1_status == ap_const_logic_0) & ~(ap_const_lv3_4 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_3 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_2 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_1 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv3_0 == ps_wordCount_V_1_load_reg_358) & ~(ap_const_lv1_0 == tmp_reg_431)));
end

/// ap_sig_bdd_171 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_164)
begin
    ap_sig_bdd_171 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_240 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_106 or ap_sig_bdd_164)
begin
    ap_sig_bdd_240 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_106) | (ap_sig_bdd_164 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_258 assign process. ///
always @ (grp_nbreadreq_fu_132_p3 or ps_wordCount_V_1 or grp_fu_200_p3)
begin
    ap_sig_bdd_258 = (~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~(ps_wordCount_V_1 == ap_const_lv3_4) & ~(ps_wordCount_V_1 == ap_const_lv3_3) & ~(ps_wordCount_V_1 == ap_const_lv3_2) & ~(ps_wordCount_V_1 == ap_const_lv3_1) & ~(ps_wordCount_V_1 == ap_const_lv3_0) & ~(ap_const_lv1_0 == grp_fu_200_p3));
end

/// ap_sig_bdd_52 assign process. ///
always @ (grp_nbreadreq_fu_132_p3 or tmp_69_nbreadreq_fu_140_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_52 = ((ps_wordCount_V_1 == ap_const_lv3_4) & ~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_69_nbreadreq_fu_140_p3));
end

/// ap_sig_bdd_62 assign process. ///
always @ (grp_nbreadreq_fu_132_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_62 = (~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_3));
end

/// ap_sig_bdd_75 assign process. ///
always @ (grp_nbreadreq_fu_132_p3 or grp_nbreadreq_fu_160_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_75 = (~(grp_nbreadreq_fu_132_p3 == ap_const_lv1_0) & (ps_wordCount_V_1 == ap_const_lv3_2) & ~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3));
end

/// ap_sig_bdd_84 assign process. ///
always @ (grp_nbreadreq_fu_160_p3 or ps_wordCount_V_1)
begin
    ap_sig_bdd_84 = ((~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3) & (ps_wordCount_V_1 == ap_const_lv3_1)) | (~(ap_const_lv1_0 == grp_nbreadreq_fu_160_p3) & (ps_wordCount_V_1 == ap_const_lv3_0)));
end
assign grp_fu_200_p3 = txEng_tcpPkgBuffer2_V_dout[ap_const_lv32_48];
assign grp_nbreadreq_fu_132_p3 = txEng_tcpPkgBuffer2_V_empty_n;
assign grp_nbreadreq_fu_160_p3 = txEng_ipHeaderBuffer_V_empty_n;
assign ipTxDataOut_V_data_V1_status = (ipTxDataOut_V_data_V_full_n & ipTxDataOut_V_keep_V_full_n & ipTxDataOut_V_last_V_full_n);
assign ipTxDataOut_V_data_V_write = ipTxDataOut_V_data_V1_update;
assign ipTxDataOut_V_keep_V_write = ipTxDataOut_V_data_V1_update;
assign ipTxDataOut_V_last_V_write = ipTxDataOut_V_data_V1_update;
assign p_Result_26_fu_247_p5 = {{p_Val2_18_fu_221_p1[32'd63 : 32'd48]}, {tmp_80_fu_239_p3}, {p_Val2_18_fu_221_p1[32'd31 : 32'd0]}};
assign p_Result_6_fu_225_p4 = {{txEng_tcpChecksumFifo_V_V_dout[ap_const_lv32_F : ap_const_lv32_8]}};
assign p_Result_s_130_fu_351_p3 = {{p_Result_s_reg_407}, {tmp_346_reg_402}};
assign p_Val2_18_fu_221_p1 = txEng_tcpPkgBuffer2_V_dout[63:0];
assign p_tmp_s_fu_259_p3 = ((grp_fu_200_p3[0:0]===1'b1)? ap_const_lv3_0: ap_const_lv3_5);
assign sendWord_data_V_1_fu_273_p1 = txEng_tcpPkgBuffer2_V_dout[63:0];
assign sendWord_data_V_2_fu_341_p1 = txEng_tcpPkgBuffer2_V_dout[63:0];
assign sendWord_data_V_fu_303_p1 = txEng_ipHeaderBuffer_V_dout[63:0];
assign tmp_339_fu_217_p1 = ps_wordCount_V_1[1:0];
assign tmp_346_fu_283_p1 = txEng_ipHeaderBuffer_V_dout[31:0];
assign tmp_349_fu_235_p1 = txEng_tcpChecksumFifo_V_V_dout[7:0];
assign tmp_69_nbreadreq_fu_140_p3 = txEng_tcpChecksumFifo_V_V_empty_n;
assign tmp_80_fu_239_p3 = {{tmp_349_fu_235_p1}, {p_Result_6_fu_225_p4}};
assign tmp_cast_fu_331_p1 = tmp_s_fu_325_p2;
assign tmp_s_fu_325_p2 = (ap_const_lv2_1 + tmp_339_fu_217_p1);


endmodule //tcp_slowrttoe_pkgStitcher

