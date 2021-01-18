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
// Description: <Insert Description Here> 
// Naming conventions:
//    signals => snake_case
//    Parameters (aliasing signal values) => SNAKE_CASE with all caps
//    Parameters (not aliasing signal values) => CamelCase 
//==============================================================================

class command_monitor extends uvm_component;
    `uvm_component_utils(command_monitor);

    // Analysis port for sending command info to scoreboard!
    uvm_analysis_port #(command_s) ap;

    // Basic constructor
    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction : new

    // Build phase: get bfm, assign this object to bfm monitor, instantiate analysis port 
    function void build_phase(uvm_phase phase);
        if(!uvm_config_Db #(virtual tx_thermal_tuner_bfm)::get(null, "*", "bfm", bfm))
            $fatal("Failed to get BFM");
        bfm.command_monitor_h = this;
        ap = new("ap", this);
    endfunction : build_phase

    // Write to monitor function that calls ap's write function (which calls subscribers write)
    function void write_to_monitor(logic [2:0] cmd);
        ap.write(cmd);
    endfunction : write_to_monitor

endclass
