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
// Description: Basic UVM environment 
// Naming conventions:
//    signals => snake_case
//    Parameters (aliasing signal values) => SNAKE_CASE with all caps
//    Parameters (not aliasing signal values) => CamelCase 
//==============================================================================

class env extends uvm_env;
    // Register w/ factory
    `uvm_component_utils(env)

    // Define members 
    base_tester tester_h;
    //coverage coverage_h;
    //scoreboard scoreboard_h;
    //command_monitor command_monitor_h;

    // Build phase! - Use factory static methods to create uvm components
    function void build_phase(uvm_phase phase);
        tester_h = base_tester::type_id::create("tester_h", this); 
        //data_h = data_logger::type_id::create("data_logger", this);
        //coverage_h = coverage::type_id::create("coverage_h", this); 
        //scoreboard_h = scoreboard::type_id::create("scoreboard_h", this);
        //command_monitor_h = command_monitor::type_id::create("command_monitor_h", this);
    endfunction : build_phase
    
    //// Connect phase! - Connect analysis ports and subscribers
    //function void connect_phase(uvm_phase phase);
    //    command_monitor_h.ap.connect(scoreboard_h.analysis_export);
    //endfunction : build_phase

    // Constructor
    function new (string name, uvm_component parent);
        super.new(name, parent);
    endfunction : new

endclass
