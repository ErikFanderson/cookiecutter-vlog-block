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
// Description: {{cookiecutter.block}} 
// Naming conventions:
//    signals => snake_case
//    Parameters (aliasing signal values) => SNAKE_CASE with all caps
//    Parameters (not aliasing signal values) => CamelCase 
//==============================================================================

`timescale 1ns/1ps
`default_nettype none

// Simple windowed averager
module {{cookiecutter.block}} (
    i_clk, 
    i_rst, 
    i_in, 
    i_decimation_ratio, 
    o_valid, 
    o_out
);

//-----------------------------------------------------------------------------------
// Parameters 
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------
// Constants 
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------
// I/O 
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

//-----------------------------------------------------------------------------------
// Assigns 
//-----------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------

endmodule

`default_nettype wire 
