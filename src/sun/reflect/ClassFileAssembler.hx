package sun.reflect;
/*
* Copyright (c) 2001, 2004, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ClassFileAssembler implements sun.reflect.ClassFileConstants
{
	@:overload public function new() : Void;
	
	@:overload public function new(vec : sun.reflect.ByteVector) : Void;
	
	@:overload public function getData() : sun.reflect.ByteVector;
	
	/** Length in bytes */
	@:overload public function getLength() : java.StdTypes.Int16;
	
	@:overload public function emitMagicAndVersion() : Void;
	
	@:overload public function emitInt(val : Int) : Void;
	
	@:overload public function emitShort(val : java.StdTypes.Int16) : Void;
	
	@:overload public function emitByte(val : java.StdTypes.Int8) : Void;
	
	@:overload public function append(asm : sun.reflect.ClassFileAssembler) : Void;
	
	@:overload public function append(vec : sun.reflect.ByteVector) : Void;
	
	/** Keeps track of the current (one-based) constant pool index;
	incremented after emitting one of the following constant pool
	entries. Can fetch the current constant pool index for use in
	later entries.  Index points at the last valid constant pool
	entry; initially invalid. It is illegal to fetch the constant
	pool index before emitting at least one constant pool entry. */
	@:overload public function cpi() : java.StdTypes.Int16;
	
	@:overload public function emitConstantPoolUTF8(str : String) : Void;
	
	@:overload public function emitConstantPoolClass(index : java.StdTypes.Int16) : Void;
	
	@:overload public function emitConstantPoolNameAndType(nameIndex : java.StdTypes.Int16, typeIndex : java.StdTypes.Int16) : Void;
	
	@:overload public function emitConstantPoolFieldref(classIndex : java.StdTypes.Int16, nameAndTypeIndex : java.StdTypes.Int16) : Void;
	
	@:overload public function emitConstantPoolMethodref(classIndex : java.StdTypes.Int16, nameAndTypeIndex : java.StdTypes.Int16) : Void;
	
	@:overload public function emitConstantPoolInterfaceMethodref(classIndex : java.StdTypes.Int16, nameAndTypeIndex : java.StdTypes.Int16) : Void;
	
	@:overload public function emitConstantPoolString(utf8Index : java.StdTypes.Int16) : Void;
	
	@:overload public function getMaxStack() : java.StdTypes.Int16;
	
	@:overload public function getMaxLocals() : java.StdTypes.Int16;
	
	/** It's necessary to be able to specify the number of arguments at
	the beginning of the method (which translates to the initial
	value of max locals) */
	@:overload public function setMaxLocals(maxLocals : Int) : Void;
	
	/** Needed to do flow control. Returns current stack depth. */
	@:overload public function getStack() : Int;
	
	/** Needed to do flow control. */
	@:overload public function setStack(value : Int) : Void;
	
	@:overload public function opc_aconst_null() : Void;
	
	@:overload public function opc_sipush(constant : java.StdTypes.Int16) : Void;
	
	@:overload public function opc_ldc(cpIdx : java.StdTypes.Int8) : Void;
	
	@:overload public function opc_iload_0() : Void;
	
	@:overload public function opc_iload_1() : Void;
	
	@:overload public function opc_iload_2() : Void;
	
	@:overload public function opc_iload_3() : Void;
	
	@:overload public function opc_lload_0() : Void;
	
	@:overload public function opc_lload_1() : Void;
	
	@:overload public function opc_lload_2() : Void;
	
	@:overload public function opc_lload_3() : Void;
	
	@:overload public function opc_fload_0() : Void;
	
	@:overload public function opc_fload_1() : Void;
	
	@:overload public function opc_fload_2() : Void;
	
	@:overload public function opc_fload_3() : Void;
	
	@:overload public function opc_dload_0() : Void;
	
	@:overload public function opc_dload_1() : Void;
	
	@:overload public function opc_dload_2() : Void;
	
	@:overload public function opc_dload_3() : Void;
	
	@:overload public function opc_aload_0() : Void;
	
	@:overload public function opc_aload_1() : Void;
	
	@:overload public function opc_aload_2() : Void;
	
	@:overload public function opc_aload_3() : Void;
	
	@:overload public function opc_aaload() : Void;
	
	@:overload public function opc_astore_0() : Void;
	
	@:overload public function opc_astore_1() : Void;
	
	@:overload public function opc_astore_2() : Void;
	
	@:overload public function opc_astore_3() : Void;
	
	@:overload public function opc_pop() : Void;
	
	@:overload public function opc_dup() : Void;
	
	@:overload public function opc_dup_x1() : Void;
	
	@:overload public function opc_swap() : Void;
	
	@:overload public function opc_i2l() : Void;
	
	@:overload public function opc_i2f() : Void;
	
	@:overload public function opc_i2d() : Void;
	
	@:overload public function opc_l2f() : Void;
	
	@:overload public function opc_l2d() : Void;
	
	@:overload public function opc_f2d() : Void;
	
	@:overload public function opc_ifeq(bciOffset : java.StdTypes.Int16) : Void;
	
	/** Control flow with forward-reference BCI. Stack assumes
	straight-through control flow. */
	@:overload public function opc_ifeq(l : sun.reflect.Label) : Void;
	
	@:overload public function opc_if_icmpeq(bciOffset : java.StdTypes.Int16) : Void;
	
	/** Control flow with forward-reference BCI. Stack assumes straight
	control flow. */
	@:overload public function opc_if_icmpeq(l : sun.reflect.Label) : Void;
	
	@:overload public function opc_goto(bciOffset : java.StdTypes.Int16) : Void;
	
	/** Control flow with forward-reference BCI. Stack assumes straight
	control flow. */
	@:overload public function opc_goto(l : sun.reflect.Label) : Void;
	
	@:overload public function opc_ifnull(bciOffset : java.StdTypes.Int16) : Void;
	
	/** Control flow with forward-reference BCI. Stack assumes straight
	control flow. */
	@:overload public function opc_ifnull(l : sun.reflect.Label) : Void;
	
	@:overload public function opc_ifnonnull(bciOffset : java.StdTypes.Int16) : Void;
	
	/** Control flow with forward-reference BCI. Stack assumes straight
	control flow. */
	@:overload public function opc_ifnonnull(l : sun.reflect.Label) : Void;
	
	@:overload public function opc_ireturn() : Void;
	
	@:overload public function opc_lreturn() : Void;
	
	@:overload public function opc_freturn() : Void;
	
	@:overload public function opc_dreturn() : Void;
	
	@:overload public function opc_areturn() : Void;
	
	@:overload public function opc_return() : Void;
	
	@:overload public function opc_getstatic(fieldIndex : java.StdTypes.Int16, fieldSizeInStackSlots : Int) : Void;
	
	@:overload public function opc_putstatic(fieldIndex : java.StdTypes.Int16, fieldSizeInStackSlots : Int) : Void;
	
	@:overload public function opc_getfield(fieldIndex : java.StdTypes.Int16, fieldSizeInStackSlots : Int) : Void;
	
	@:overload public function opc_putfield(fieldIndex : java.StdTypes.Int16, fieldSizeInStackSlots : Int) : Void;
	
	/** Long and double arguments and return types count as 2 arguments;
	other values count as 1. */
	@:overload public function opc_invokevirtual(methodIndex : java.StdTypes.Int16, numArgs : Int, numReturnValues : Int) : Void;
	
	/** Long and double arguments and return types count as 2 arguments;
	other values count as 1. */
	@:overload public function opc_invokespecial(methodIndex : java.StdTypes.Int16, numArgs : Int, numReturnValues : Int) : Void;
	
	/** Long and double arguments and return types count as 2 arguments;
	other values count as 1. */
	@:overload public function opc_invokestatic(methodIndex : java.StdTypes.Int16, numArgs : Int, numReturnValues : Int) : Void;
	
	/** Long and double arguments and return types count as 2 arguments;
	other values count as 1. */
	@:overload public function opc_invokeinterface(methodIndex : java.StdTypes.Int16, numArgs : Int, count : java.StdTypes.Int8, numReturnValues : Int) : Void;
	
	@:overload public function opc_arraylength() : Void;
	
	@:overload public function opc_new(classIndex : java.StdTypes.Int16) : Void;
	
	@:overload public function opc_athrow() : Void;
	
	/** Assumes the checkcast succeeds */
	@:overload public function opc_checkcast(classIndex : java.StdTypes.Int16) : Void;
	
	@:overload public function opc_instanceof(classIndex : java.StdTypes.Int16) : Void;
	
	
}
