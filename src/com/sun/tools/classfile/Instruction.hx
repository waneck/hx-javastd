package com.sun.tools.classfile;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
* See JVMS, chapter 6.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*
* @see Code_attribute#getInstructions
*/
extern class Instruction
{
	/** An instruction is defined by its position in a bytecode array. */
	@:overload public function new(bytes : java.NativeArray<java.StdTypes.Int8>, pc : Int) : Void;
	
	/** Get the position of the instruction within the bytecode array. */
	@:overload public function getPC() : Int;
	
	/** Get a byte value, relative to the start of this instruction. */
	@:overload public function getByte(offset : Int) : Int;
	
	/** Get an unsigned byte value, relative to the start of this instruction. */
	@:overload public function getUnsignedByte(offset : Int) : Int;
	
	/** Get a 2-byte value, relative to the start of this instruction. */
	@:overload public function getShort(offset : Int) : Int;
	
	/** Get a unsigned 2-byte value, relative to the start of this instruction. */
	@:overload public function getUnsignedShort(offset : Int) : Int;
	
	/** Get a 4-byte value, relative to the start of this instruction. */
	@:overload public function getInt(offset : Int) : Int;
	
	/** Get the Opcode for this instruction, or null if the instruction is
	* unrecognized. */
	@:overload public function getOpcode() : com.sun.tools.classfile.Opcode;
	
	/** Get the mnemonic for this instruction, or a default string if the
	* instruction is unrecognized. */
	@:overload public function getMnemonic() : String;
	
	/** Get the length, in bytes, of this instruction, including the opcode
	* and all its operands. */
	@:overload public function length() : Int;
	
	/** Get the {@link Kind} of this instruction. */
	@:overload public function getKind() : com.sun.tools.classfile.Instruction.Instruction_Kind;
	
	/** Invoke a method on the visitor according to the kind of this
	* instruction, passing in the decoded operands for the instruction. */
	@:overload public function accept<R, P>(visitor : com.sun.tools.classfile.Instruction.Instruction_KindVisitor<R, P>, p : P) : R;
	
	
}
/** The kind of an instruction, as determined by the position, size and
*  types of its operands. */
@:native('com$sun$tools$classfile$Instruction$Kind') extern enum Instruction_Kind
{
	/** Opcode is not followed by any operands. */
	NO_OPERANDS;
	/** Opcode is followed by a byte indicating a type. */
	ATYPE;
	/** Opcode is followed by a 2-byte branch offset. */
	BRANCH;
	/** Opcode is followed by a 4-byte branch offset. */
	BRANCH_W;
	/** Opcode is followed by a signed byte value. */
	BYTE;
	/** Opcode is followed by a 1-byte index into the constant pool. */
	CPREF;
	/** Opcode is followed by a 2-byte index into the constant pool. */
	CPREF_W;
	/** Opcode is followed by a 2-byte index into the constant pool,
	*  an unsigned byte value. */
	CPREF_W_UBYTE;
	/** Opcode is followed by a 2-byte index into the constant pool.,
	*  an unsigned byte value, and a zero byte. */
	CPREF_W_UBYTE_ZERO;
	/** Opcode is followed by variable number of operands, depending
	* on the instruction.*/
	DYNAMIC;
	/** Opcode is followed by a 1-byte reference to a local variable. */
	LOCAL;
	/** Opcode is followed by a 1-byte reference to a local variable,
	*  and a signed byte value. */
	LOCAL_BYTE;
	/** Opcode is followed by a signed short value. */
	SHORT;
	/** Wide opcode is not followed by any operands. */
	WIDE_NO_OPERANDS;
	/** Wide opcode is followed by a 2-byte index into the constant pool. */
	WIDE_CPREF_W;
	/** Wide opcode is followed by a 2-byte index into the constant pool,
	*  and a signed short value. */
	WIDE_CPREF_W_SHORT;
	/** Opcode was not recognized. */
	UNKNOWN;
	
}

/** A utility visitor to help decode the operands of an instruction.
*  @see Instruction#accept */
@:native('com$sun$tools$classfile$Instruction$KindVisitor') extern interface Instruction_KindVisitor<R, P>
{
	/** See {@link Kind#NO_OPERANDS}, {@link Kind#WIDE_NO_OPERANDS}. */
	@:overload public function visitNoOperands(instr : com.sun.tools.classfile.Instruction, p : P) : R;
	
	/** See {@link Kind#ATYPE}. */
	@:overload public function visitArrayType(instr : com.sun.tools.classfile.Instruction, kind : com.sun.tools.classfile.Instruction.Instruction_TypeKind, p : P) : R;
	
	/** See {@link Kind#BRANCH}, {@link Kind#BRANCH_W}. */
	@:overload public function visitBranch(instr : com.sun.tools.classfile.Instruction, offset : Int, p : P) : R;
	
	/** See {@link Kind#CPREF}, {@link Kind#CPREF_W}, {@link Kind#WIDE_CPREF_W}. */
	@:overload public function visitConstantPoolRef(instr : com.sun.tools.classfile.Instruction, index : Int, p : P) : R;
	
	/** See {@link Kind#CPREF_W_UBYTE}, {@link Kind#CPREF_W_UBYTE_ZERO}, {@link Kind#WIDE_CPREF_W_SHORT}. */
	@:overload public function visitConstantPoolRefAndValue(instr : com.sun.tools.classfile.Instruction, index : Int, value : Int, p : P) : R;
	
	/** See {@link Kind#LOCAL}. */
	@:overload public function visitLocal(instr : com.sun.tools.classfile.Instruction, index : Int, p : P) : R;
	
	/** See {@link Kind#LOCAL_UBYTE}. */
	@:overload public function visitLocalAndValue(instr : com.sun.tools.classfile.Instruction, index : Int, value : Int, p : P) : R;
	
	/** See {@link Kind#DYNAMIC}. */
	@:overload public function visitLookupSwitch(instr : com.sun.tools.classfile.Instruction, default_ : Int, npairs : Int, matches : java.NativeArray<Int>, offsets : java.NativeArray<Int>, p : P) : R;
	
	/** See {@link Kind#DYNAMIC}. */
	@:overload public function visitTableSwitch(instr : com.sun.tools.classfile.Instruction, default_ : Int, low : Int, high : Int, offsets : java.NativeArray<Int>, p : P) : R;
	
	/** See {@link Kind#BYTE}, {@link Kind#SHORT}. */
	@:overload public function visitValue(instr : com.sun.tools.classfile.Instruction, value : Int, p : P) : R;
	
	/** Instruction is unrecognized. */
	@:overload public function visitUnknown(instr : com.sun.tools.classfile.Instruction, p : P) : R;
	
	
}
/** The kind of primitive array type to create.
*  See JVMS chapter 6, newarray. */
@:native('com$sun$tools$classfile$Instruction$TypeKind') extern enum Instruction_TypeKind
{
	T_BOOLEAN;
	T_CHAR;
	T_FLOAT;
	T_DOUBLE;
	T_BYTE;
	T_SHORT;
	T_INT;
	T_LONG;
	
}

