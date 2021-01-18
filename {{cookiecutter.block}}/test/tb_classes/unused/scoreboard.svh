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

class scoreboard extends uvm_component;
    `uvm_component_utils(scoreboard);

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction : new

    // override build phase to get bfm from config_Db
    function void build_phase(uvm_phase phase);
        if(!uvm_config_Db #(virtual tx_thermal_tuner_bfm)::get(null, "*", "bfm", bfm))
            $fatal("Failed to get BFM");
    endfunction : build_phase

    // override run_phase for scoreboard
    task run_phase(uvm_phase phase);
    endtask

endclass
