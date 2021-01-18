//==============================================================================
// Copyright (c) 2016 Ayar Labs, Inc.
// All Rights Reserved.
//
// Notice: All information contained herein is, and remains the the property
// of Ayar Labs, Inc. 
//
// Dissemination of this information or reproduction of this material is
// strictly forbidden unless prior written permission is obtained from
// Ayar Labs, Inc. This notice shall be included in its entirety on all
// copies made from this file. 
// 
// Author: Erik Anderson 
// Email: erik@ayarlabs.com 
// Description: Top level testbench for "{{cookiecutter.block}}"
// Naming conventions:
//    signals => snake_case
//    Parameters (aliasing signal values) => SNAKE_CASE with all caps
//    Parameters (not aliasing signal values) => CamelCase 
//==============================================================================

module top;
//-----------------------------------------------------------------------------
// Imports and macros 
//-----------------------------------------------------------------------------
import uvm_pkg::*;
import {{cookiecutter.block}}_pkg::*;
`include "uvm_macros.svh"
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// Instances
//-----------------------------------------------------------------------------
// Instantiate Bus Functional Model (BFM) interface
{{cookiecutter.block}}_bfm bfm();
 
// Instantiate Device Under Test (DUT) 
{{cookiecutter.block}} dut (
    .i_clk(bfm.i_clk),
    .i_rst(bfm.i_rst),
    .o_heat_out(bfm.o_heat_out),
    .i_power_in(bfm.i_power_in),
    .i_decision_threshold(bfm.i_decision_threshold),
    .i_load_threshold(bfm.i_load_threshold),
    .o_decision_trigger(bfm.o_decision_trigger),
    .i_cmd(bfm.i_cmd),
    .i_req(bfm.i_req),
    .o_ack(bfm.o_ack),
    .i_adc_ifs_su(bfm.i_adc_ifs_su),
    .i_adc_ifs_sd(bfm.i_adc_ifs_sd),
    .i_adc_ifs_mpt(bfm.i_adc_ifs_mpt),
    .i_adc_ifs_lock(bfm.i_adc_ifs_lock),
    .o_adc_bias_sel(bfm.o_adc_bias_sel),
    .i_heat_step_scan(bfm.i_heat_step_scan),
    .i_heat_step_active(bfm.i_heat_step_active),
    .i_heat_min(bfm.i_heat_min),
    .i_heat_max(bfm.i_heat_max),
    .i_lock_target_power(bfm.i_lock_target_power),
    .i_lock_start_threshold(bfm.i_lock_start_threshold),
    .i_lock_stable_threshold(bfm.i_lock_stable_threshold),
    .i_lock_timeout_en(bfm.i_lock_timeout_en),
    .i_lock_timeout_value(bfm.i_lock_timeout_value),
    .i_lock_low_heat_en(bfm.i_lock_low_heat_en),
    .i_lock_low_heat(bfm.i_lock_low_heat),
    .i_lock_low_heat_power(bfm.i_lock_low_heat_power),
    .o_lock_timeout_ctr(bfm.o_lock_timeout_ctr),
    .o_cal_min_power(bfm.o_cal_min_power),
    .o_cal_max_power(bfm.o_cal_max_power),
    .i_su_begin_track_threshold(bfm.i_su_begin_track_threshold),
    .i_su_end_track_threshold(bfm.i_su_end_track_threshold),
    .o_su_total_tgt_ctr(bfm.o_su_total_tgt_ctr),
    .o_su_tgt_red_side_heat(bfm.o_su_tgt_red_side_heat),
    .i_sd_begin_track_threshold(bfm.i_sd_begin_track_threshold),
    .i_sd_end_track_threshold(bfm.i_sd_end_track_threshold),
    .i_sd_load_margin(bfm.i_sd_load_margin),
    .o_sd_tgt_valid(bfm.o_sd_tgt_valid),
    .o_sd_tgt_max_power_heat(bfm.o_sd_tgt_max_power_heat),
    .o_sd_tgt_max_power(bfm.o_sd_tgt_max_power),
    .i_mpt_heat_step_dither(bfm.i_mpt_heat_step_dither),
    .i_mpt_cnt_threshold(bfm.i_mpt_cnt_threshold),
    .i_mpt_noise_threshold(bfm.i_mpt_noise_threshold), 
    .i_mpt_initial_heat_en(bfm.i_mpt_initial_heat_en),
    .i_mpt_initial_heat(bfm.i_mpt_initial_heat),
    .i_invert_power(bfm.i_invert_power),
    .i_manual_byp(bfm.i_manual_byp),
    .i_manual_state(bfm.i_manual_state),
    .o_locked(bfm.o_locked),
    .o_error(bfm.o_error),
    .o_error_code(bfm.o_error_code),
    .o_current_state(bfm.o_current_state),
    .o_current_power(bfm.o_current_power)
);
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
// Execute test
//-----------------------------------------------------------------------------
//`ifdef CSVDATA
//int fd;
//always @(posedge bfm.i_clk) begin
//    if (bfm.o_decision_trigger) begin
//        bfm.dec_counter = bfm.dec_counter + 1;
//        $fdisplay(fd,"%d,%d,%d", bfm.dec_counter, bfm.o_heat_out, bfm.o_current_power);
//        //$display("Decision: %d", dec_counter);
//    end
//end
//`endif

initial begin
//`ifdef CSVDATA
//    // Open file for writing
//    fd = $fopen("data.csv", "w");
//    $fdisplay(fd, "decision,heat_code,power,ring_lambda");
//`endif
    // Add BFM to global database
    uvm_config_db #(virtual interface {{cookiecutter.block}}_bfm)::set(null, "*", "bfm", bfm);
    // Run test defined by UVM_TESTNAME on CLI call  
    run_test();
end
//-----------------------------------------------------------------------------

endmodule : top
