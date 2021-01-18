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
`timescale 1ns/1ps
`default_nettype none

interface {{cookiecutter.block}}_bfm;
//-----------------------------------------------------------------------------
// Imports and macros 
//-----------------------------------------------------------------------------
import uvm_pkg::*;
import {{cookiecutter.block}}_pkg::*;
`include "uvm_macros.svh"
//-----------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Parameters 
//------------------------------------------------------------------------------
// Interface/Simulation Parameters
parameter real ClockCycle = 1.0;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Constants (localparam) 
//------------------------------------------------------------------------------
// Interface/Simulation constants 
localparam real HalfClockCycle = ClockCycle/2.0;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Inputs/Outputs 
//------------------------------------------------------------------------------
logic i_clk;
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
// Initial stuff
//------------------------------------------------------------------------------
initial begin
    i_clk = 0;
    forever begin
        #(HalfClockCycle);
        i_clk = ~i_clk;
    end
end
//------------------------------------------------------------------------------
endinterface : {{cookiecutter.block}}_bfm 

`default_nettype wire 
