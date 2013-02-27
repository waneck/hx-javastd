package com.sun.java_cup.internal.runtime;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/**
* Defines the Symbol class, which is used to represent all terminals
* and nonterminals while parsing.  The lexer should pass CUP Symbols
* and CUP returns a Symbol.
*
* @author  Frank Flannery
*/
/* ****************************************************************
Class Symbol
what the parser expects to receive from the lexer.
the token is identified as follows:
sym:    the symbol type
parse_state: the parse state.
value:  is the lexical value of type Object
left :  is the left position in the original input file
right:  is the right position in the original input file
******************************************************************/
extern class Symbol
{
	/*******************************
	Constructor for l,r values
	*******************************/
	@:overload public function new(id : Int, l : Int, r : Int, o : Dynamic) : Void;
	
	/*******************************
	Constructor for no l,r values
********************************/
	@:overload public function new(id : Int, o : Dynamic) : Void;
	
	/*****************************
	Constructor for no value
	***************************/
	@:overload public function new(sym_num : Int, l : Int, r : Int) : Void;
	
	/***********************************
	Constructor for no value or l,r
***********************************/
	@:overload public function new(sym_num : Int) : Void;
	
	/***********************************
	Constructor to give a start state
***********************************/
	@:overload public function new(sym_num : Int, state : Int) : Void;
	
	/** The symbol number of the terminal or non terminal being represented */
	public var sym : Int;
	
	/** The parse state to be recorded on the parse stack with this symbol.
	*  This field is for the convenience of the parser and shouldn't be
	*  modified except by the parser.
	*/
	public var parse_state : Int;
	
	/*******************************
	The data passed to parser
	*******************************/
	public var left : Int;
	
	public var value : Dynamic;
	
	/*****************************
	Printing this token out. (Override for pretty-print).
	****************************/
	@:overload public function toString() : String;
	
	
}
