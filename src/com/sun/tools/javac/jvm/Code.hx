package com.sun.tools.javac.jvm;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Code
{
	/** An internal structure that corresponds to the code attribute of
	*  methods in a classfile. The class also provides some utility operations to
	*  generate bytecode instructions.
	*
	*  <p><b>This is NOT part of any supported API.
	*  If you write code that depends on this, you do so at your own risk.
	*  This code and its internal interfaces are subject to change or
	*  deletion without notice.</b>
	*/
	public var debugCode(default, null) : Bool;
	
	public var needStackMap(default, null) : Bool;
	
	/** The maximum stack size.
	*/
	public var max_stack : Int;
	
	/** The maximum number of local variable slots.
	*/
	public var max_locals : Int;
	
	/** The code buffer.
	*/
	public var code : java.NativeArray<java.StdTypes.Int8>;
	
	/** the current code pointer.
	*/
	public var cp : Int;
	
	/** Check the code against VM spec limits; if
	*  problems report them and return true.
	*/
	@:overload public function checkLimits(pos : com.sun.tools.javac.util.JCDiagnostic.JCDiagnostic_DiagnosticPosition, log : com.sun.tools.javac.util.Log) : Bool;
	
	/** The CharacterRangeTable
	*/
	public var crt : com.sun.tools.javac.jvm.CRTable;
	
	/** Are we generating code with jumps >= 32K?
	*/
	public var fatcode : Bool;
	
	/** The next available register.
	*/
	public var nextreg : Int;
	
	/** Construct a code object, given the settings of the fatcode,
	*  debugging info switches and the CharacterRangeTable.
	*/
	@:overload public function new(meth : MethodSymbol, fatcode : Bool, lineMap : com.sun.tools.javac.util.Position.Position_LineMap, varDebugInfo : Bool, stackMap : Code_StackMapFormat, debugCode : Bool, crt : com.sun.tools.javac.jvm.CRTable, syms : com.sun.tools.javac.code.Symtab, types : com.sun.tools.javac.code.Types, pool : com.sun.tools.javac.jvm.Pool) : Void;
	
	/** Given a type, return its type code (used implicitly in the
	*  JVM architecture).
	*/
	@:overload public static function typecode(type : com.sun.tools.javac.code.Type) : Int;
	
	/** Collapse type code for subtypes of int to INTcode.
	*/
	@:overload public static function truncate(tc : Int) : Int;
	
	/** The width in bytes of objects of the type.
	*/
	@:overload public static function width(typecode : Int) : Int;
	
	@:overload public static function width(type : com.sun.tools.javac.code.Type) : Int;
	
	/** The total width taken up by a vector of objects.
	*/
	@:overload public static function width(types : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : Int;
	
	/** Given a type, return its code for allocating arrays of that type.
	*/
	@:overload public static function arraycode(type : com.sun.tools.javac.code.Type) : Int;
	
	/** The current output code pointer.
	*/
	@:overload public function curPc() : Int;
	
	/** Emit four bytes of code.
	*/
	@:overload public function emit4(od : Int) : Void;
	
	/** Emit a multinewarray instruction.
	*/
	@:overload public function emitMultianewarray(ndims : Int, type : Int, arrayType : com.sun.tools.javac.code.Type) : Void;
	
	/** Emit newarray.
	*/
	@:overload public function emitNewarray(elemcode : Int, arrayType : com.sun.tools.javac.code.Type) : Void;
	
	/** Emit anewarray.
	*/
	@:overload public function emitAnewarray(od : Int, arrayType : com.sun.tools.javac.code.Type) : Void;
	
	/** Emit an invokeinterface instruction.
	*/
	@:overload public function emitInvokeinterface(meth : Int, mtype : com.sun.tools.javac.code.Type) : Void;
	
	/** Emit an invokespecial instruction.
	*/
	@:overload public function emitInvokespecial(meth : Int, mtype : com.sun.tools.javac.code.Type) : Void;
	
	/** Emit an invokestatic instruction.
	*/
	@:overload public function emitInvokestatic(meth : Int, mtype : com.sun.tools.javac.code.Type) : Void;
	
	/** Emit an invokevirtual instruction.
	*/
	@:overload public function emitInvokevirtual(meth : Int, mtype : com.sun.tools.javac.code.Type) : Void;
	
	/** Emit an invokedynamic instruction.
	*/
	@:overload public function emitInvokedynamic(desc : Int, mtype : com.sun.tools.javac.code.Type) : Void;
	
	/** Emit an opcode with no operand field.
	*/
	@:overload public function emitop0(op : Int) : Void;
	
	/** Emit an opcode with a one-byte operand field.
	*/
	@:overload public function emitop1(op : Int, od : Int) : Void;
	
	/** Emit an opcode with a one-byte operand field;
	*  widen if field does not fit in a byte.
	*/
	@:overload public function emitop1w(op : Int, od : Int) : Void;
	
	/** Emit an opcode with two one-byte operand fields;
	*  widen if either field does not fit in a byte.
	*/
	@:overload public function emitop1w(op : Int, od1 : Int, od2 : Int) : Void;
	
	/** Emit an opcode with a two-byte operand field.
	*/
	@:overload public function emitop2(op : Int, od : Int) : Void;
	
	/** Emit an opcode with a four-byte operand field.
	*/
	@:overload public function emitop4(op : Int, od : Int) : Void;
	
	/** Align code pointer to next `incr' boundary.
	*/
	@:overload public function align(incr : Int) : Void;
	
	/** Place four  bytes into code at address pc. Pre: pc + 4 <= cp.
	*/
	@:overload public function put4(pc : Int, od : Int) : Void;
	
	/** Return four code bytes at position pc as an int.
	*/
	@:overload public function get4(pc : Int) : Int;
	
	/** Is code generation currently enabled?
	*/
	@:overload public function isAlive() : Bool;
	
	/** Switch code generation on/off.
	*/
	@:overload public function markDead() : Void;
	
	/** Declare an entry point; return current code pointer
	*/
	@:overload public function entryPoint() : Int;
	
	/** Declare an entry point with initial state;
	*  return current code pointer
	*/
	@:overload public function entryPoint(state : Code_State) : Int;
	
	/** Declare an entry point with initial state plus a pushed value;
	*  return current code pointer
	*/
	@:overload public function entryPoint(state : Code_State, pushed : com.sun.tools.javac.code.Type) : Int;
	
	/** Emit a stack map entry.  */
	@:overload public function emitStackMap() : Void;
	
	/** Negate a branch opcode.
	*/
	@:overload public static function negate(opcode : Int) : Int;
	
	/** Emit a jump instruction.
	*  Return code pointer of instruction to be patched.
	*/
	@:overload public function emitJump(opcode : Int) : Int;
	
	/** Emit a branch with given opcode; return its chain.
	*  branch differs from jump in that jsr is treated as no-op.
	*/
	@:overload public function branch(opcode : Int) : Code_Chain;
	
	/** Resolve chain to point to given target.
	*/
	@:overload public function resolve(chain : Code_Chain, target : Int) : Void;
	
	/** Resolve chain to point to current code pointer.
	*/
	@:overload public function resolve(chain : Code_Chain) : Void;
	
	/** Resolve any pending jumps.
	*/
	@:overload public function resolvePending() : Void;
	
	/** Merge the jumps in of two chains into one.
	*/
	@:overload public static function mergeChains(chain1 : Code_Chain, chain2 : Code_Chain) : Code_Chain;
	
	/** Add a catch clause to code.
	*/
	@:overload public function addCatch(startPc : java.StdTypes.Char16, endPc : java.StdTypes.Char16, handlerPc : java.StdTypes.Char16, catchType : java.StdTypes.Char16) : Void;
	
	/** Add a line number entry.
	*/
	@:overload public function addLineNumber(startPc : java.StdTypes.Char16, lineNumber : java.StdTypes.Char16) : Void;
	
	/** Mark beginning of statement.
	*/
	@:overload public function statBegin(pos : Int) : Void;
	
	/** Force stat begin eagerly
	*/
	@:overload public function markStatBegin() : Void;
	
	/** Set the current variable defined state. */
	@:overload public function setDefined(newDefined : com.sun.tools.javac.util.Bits) : Void;
	
	/** Mark a register as being (possibly) defined. */
	@:overload public function setDefined(adr : Int) : Void;
	
	/** Mark a register as being undefined. */
	@:overload public function setUndefined(adr : Int) : Void;
	
	@:overload public function newLocal(v : VarSymbol) : Int;
	
	/** Start a set of fresh registers.
	*/
	@:overload public function newRegSegment() : Void;
	
	/** End scopes of all variables with registers >= first.
	*/
	@:overload public function endScopes(first : Int) : Void;
	
	/**************************************************************************
	* static tables
	*************************************************************************/
	@:overload public static function mnem(opcode : Int) : String;
	
	
}
@:native('com$sun$tools$javac$jvm$Code$StackMapFormat') extern enum Code_StackMapFormat
{
	NONE;
	CLDC;
	JSR202;
	
}

/** An entry in the stack map. */
@:native('com$sun$tools$javac$jvm$Code$StackMapFrame') @:internal extern class Code_StackMapFrame
{
	
}
/** A chain represents a list of unresolved jumps. Jump locations
*  are sorted in decreasing order.
*/
@:native('com$sun$tools$javac$jvm$Code$Chain') extern class Code_Chain
{
	/** The position of the jump instruction.
	*/
	public var pc(default, null) : Int;
	
	/** The next jump in the list.
	*/
	public var next(default, null) : Code_Chain;
	
	/** Construct a chain from its jump position, stacksize, previous
	*  chain, and machine state.
	*/
	@:overload public function new(pc : Int, next : Code_Chain, state : Code_State) : Void;
	
	
}
/* **************************************************************************
* Simulated VM machine state
****************************************************************************/
@:native('com$sun$tools$javac$jvm$Code$State') @:internal extern class Code_State implements java.lang.Cloneable
{
	
}
/** A live range of a local variable. */
@:native('com$sun$tools$javac$jvm$Code$LocalVar') @:internal extern class Code_LocalVar
{
	@:overload public function dup() : Code_LocalVar;
	
	@:overload public function toString() : String;
	
	
}
@:native('com$sun$tools$javac$jvm$Code$Mneumonics') @:internal extern class Code_Mneumonics
{
	
}
