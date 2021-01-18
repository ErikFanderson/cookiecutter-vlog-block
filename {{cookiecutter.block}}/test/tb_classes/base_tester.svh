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
// Description: The base class for all tester classes 
// Naming conventions:
//    signals => snake_case
//    Parameters (aliasing signal values) => SNAKE_CASE with all caps
//    Parameters (not aliasing signal values) => CamelCase 
//==============================================================================

class base_tester extends uvm_component;
    // Register w/ factory
    `uvm_component_utils(base_tester)

    // Define members 
    virtual {{cookiecutter.block}}_bfm bfm;

    // Get global BFM for tester
    function void build_phase(uvm_phase phase);
        if(!uvm_config_db #(virtual {{cookiecutter.block}}_bfm)::get(null, "*", "bfm", bfm))
            `uvm_fatal("BUILDFATAL", "Failed to get BFM")
    endfunction : build_phase

    // Constructor 
    function new (string name, uvm_component parent);
        super.new(name, parent);
    endfunction : new

    // Define functions/tasks common to all testers!
    //// Run phase! Do testing...
    //task run_phase(uvm_phase phase);
    //
    //    // Begin test
    //    phase.raise_objection(this);
    //    
    //    // End test
    //    phase.drop_objection(this);
    //
    //endtask : run_phase

endclass
