package com.sun.tools.javac.jvm;
/*
* Copyright (c) 1999, 2005, Oracle and/or its affiliates. All rights reserved.
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
/** Bytecode instruction codes, as well as typecodes used as
*  instruction modifiers.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern interface ByteCodes
{
	/** Byte code instruction codes.
	*/
	public var illegal : Int;
	
	/** Virtual instruction codes; used for constant folding.
	*/
	public var string_add : Int;
	
	/** Virtual opcodes; used for shifts with long shiftcount
	*/
	public var ishll : Int;
	
	/** Virtual opcode for null reference checks
	*/
	public var nullchk : Int;
	
	/** Virtual opcode for disallowed operations.
	*/
	public var error : Int;
	
	/** All conditional jumps come in pairs. To streamline the
	*  treatment of jumps, we also introduce a negation of an
	*  unconditional jump. That opcode happens to be jsr.
	*/
	public var dontgoto : Int;
	
	/** Shift and mask constants for shifting prefix instructions.
	*  a pair of instruction codes such as LCMP ; IFEQ is encoded
	*  in Symtab as (LCMP << preShift) + IFEQ.
	*/
	public var preShift : Int;
	
	public var preMask : Int;
	
	/** Type codes.
	*/
	public var INTcode : Int;
	
	
}
