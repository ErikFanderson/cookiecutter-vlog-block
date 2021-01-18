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
// Description: Package for "{{cookiecutter.block}}"
// Naming conventions:
//    signals => snake_case
//    Parameters (aliasing signal values) => SNAKE_CASE with all caps
//    Parameters (not aliasing signal values) => CamelCase 
//==============================================================================

package {{cookiecutter.block}}_pkg;
    import uvm_pkg::*;
`include "uvm_macros.svh"
   
`include "base_tester.svh"
`include "env.svh"
`include "simple_tester.svh"
`include "simple_test.svh"

//include "command_monitor.svh"
//include "scoreboard.svh"

//// Structs
//struct {
//    
//} decision_data;

endpackage : {{cookiecutter.block}}_pkg
