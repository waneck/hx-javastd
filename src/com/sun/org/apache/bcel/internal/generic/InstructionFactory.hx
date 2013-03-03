package com.sun.org.apache.bcel.internal.generic;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/* ====================================================================
* The Apache Software License, Version 1.1
*
* Copyright (c) 2001 The Apache Software Foundation.  All rights
* reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Apache" and "Apache Software Foundation" and
*    "Apache BCEL" must not be used to endorse or promote products
*    derived from this software without prior written permission. For
*    written permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    "Apache BCEL", nor may "Apache" appear in their name, without
*    prior written permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class InstructionFactory implements com.sun.org.apache.bcel.internal.generic.InstructionConstants implements java.io.Serializable
{
	/**
	* Instances of this class may be used, e.g., to generate typed
	* versions of instructions. Its main purpose is to be used as the
	* byte code generating backend of a compiler. You can subclass it to
	* add your own create methods.
	*
	* @author <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
	* @see Constants
	*/
	@:protected private var cg : com.sun.org.apache.bcel.internal.generic.ClassGen;
	
	@:protected private var cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
	
	@:overload @:public public function new(cg : com.sun.org.apache.bcel.internal.generic.ClassGen, cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	/** Initialize with ClassGen object
	*/
	@:overload @:public public function new(cg : com.sun.org.apache.bcel.internal.generic.ClassGen) : Void;
	
	/** Initialize just with ConstantPoolGen object
	*/
	@:overload @:public public function new(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	/** Create an invoke instruction.
	*
	* @param class_name name of the called class
	* @param name name of the called method
	* @param ret_type return type of method
	* @param arg_types argument types of method
	* @param kind how to invoke, i.e., INVOKEINTERFACE, INVOKESTATIC, INVOKEVIRTUAL,
	* or INVOKESPECIAL
	* @see Constants
	*/
	@:overload @:public public function createInvoke(class_name : String, name : String, ret_type : com.sun.org.apache.bcel.internal.generic.Type, arg_types : java.NativeArray<com.sun.org.apache.bcel.internal.generic.Type>, kind : java.StdTypes.Int16) : com.sun.org.apache.bcel.internal.generic.InvokeInstruction;
	
	/** Create a call to the most popular System.out.println() method.
	*
	* @param s the string to print
	*/
	@:overload @:public public function createPrintln(s : String) : com.sun.org.apache.bcel.internal.generic.InstructionList;
	
	/** Uses PUSH to push a constant value onto the stack.
	* @param value must be of type Number, Boolean, Character or String
	*/
	@:overload @:public public function createConstant(value : Dynamic) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function createAppend(type : com.sun.org.apache.bcel.internal.generic.Type) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/** Create a field instruction.
	*
	* @param class_name name of the accessed class
	* @param name name of the referenced field
	* @param type  type of field
	* @param kind how to access, i.e., GETFIELD, PUTFIELD, GETSTATIC, PUTSTATIC
	* @see Constants
	*/
	@:overload @:public public function createFieldAccess(class_name : String, name : String, type : com.sun.org.apache.bcel.internal.generic.Type, kind : java.StdTypes.Int16) : com.sun.org.apache.bcel.internal.generic.FieldInstruction;
	
	/** Create reference to `this'
	*/
	@:overload @:public @:static public static function createThis() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/** Create typed return
	*/
	@:overload @:public @:static public static function createReturn(type : com.sun.org.apache.bcel.internal.generic.Type) : com.sun.org.apache.bcel.internal.generic.ReturnInstruction;
	
	/**
	* Create binary operation for simple basic types, such as int and float.
	*
	* @param op operation, such as "+", "*", "<<", etc.
	*/
	@:overload @:public @:static public static function createBinaryOperation(op : String, type : com.sun.org.apache.bcel.internal.generic.Type) : com.sun.org.apache.bcel.internal.generic.ArithmeticInstruction;
	
	/**
	* @param size size of operand, either 1 (int, e.g.) or 2 (double)
	*/
	@:overload @:public @:static public static function createPop(size : Int) : com.sun.org.apache.bcel.internal.generic.StackInstruction;
	
	/**
	* @param size size of operand, either 1 (int, e.g.) or 2 (double)
	*/
	@:overload @:public @:static public static function createDup(size : Int) : com.sun.org.apache.bcel.internal.generic.StackInstruction;
	
	/**
	* @param size size of operand, either 1 (int, e.g.) or 2 (double)
	*/
	@:overload @:public @:static public static function createDup_2(size : Int) : com.sun.org.apache.bcel.internal.generic.StackInstruction;
	
	/**
	* @param size size of operand, either 1 (int, e.g.) or 2 (double)
	*/
	@:overload @:public @:static public static function createDup_1(size : Int) : com.sun.org.apache.bcel.internal.generic.StackInstruction;
	
	/**
	* @param index index of local variable
	*/
	@:overload @:public @:static public static function createStore(type : com.sun.org.apache.bcel.internal.generic.Type, index : Int) : com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction;
	
	/**
	* @param index index of local variable
	*/
	@:overload @:public @:static public static function createLoad(type : com.sun.org.apache.bcel.internal.generic.Type, index : Int) : com.sun.org.apache.bcel.internal.generic.LocalVariableInstruction;
	
	/**
	* @param type type of elements of array, i.e., array.getElementType()
	*/
	@:overload @:public @:static public static function createArrayLoad(type : com.sun.org.apache.bcel.internal.generic.Type) : com.sun.org.apache.bcel.internal.generic.ArrayInstruction;
	
	/**
	* @param type type of elements of array, i.e., array.getElementType()
	*/
	@:overload @:public @:static public static function createArrayStore(type : com.sun.org.apache.bcel.internal.generic.Type) : com.sun.org.apache.bcel.internal.generic.ArrayInstruction;
	
	/** Create conversion operation for two stack operands, this may be an I2C, instruction, e.g.,
	* if the operands are basic types and CHECKCAST if they are reference types.
	*/
	@:overload @:public public function createCast(src_type : com.sun.org.apache.bcel.internal.generic.Type, dest_type : com.sun.org.apache.bcel.internal.generic.Type) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	@:overload @:public public function createGetField(class_name : String, name : String, t : com.sun.org.apache.bcel.internal.generic.Type) : com.sun.org.apache.bcel.internal.generic.GETFIELD;
	
	@:overload @:public public function createGetStatic(class_name : String, name : String, t : com.sun.org.apache.bcel.internal.generic.Type) : com.sun.org.apache.bcel.internal.generic.GETSTATIC;
	
	@:overload @:public public function createPutField(class_name : String, name : String, t : com.sun.org.apache.bcel.internal.generic.Type) : com.sun.org.apache.bcel.internal.generic.PUTFIELD;
	
	@:overload @:public public function createPutStatic(class_name : String, name : String, t : com.sun.org.apache.bcel.internal.generic.Type) : com.sun.org.apache.bcel.internal.generic.PUTSTATIC;
	
	@:overload @:public public function createCheckCast(t : com.sun.org.apache.bcel.internal.generic.ReferenceType) : com.sun.org.apache.bcel.internal.generic.CHECKCAST;
	
	@:overload @:public public function createInstanceOf(t : com.sun.org.apache.bcel.internal.generic.ReferenceType) : com.sun.org.apache.bcel.internal.generic.INSTANCEOF;
	
	@:overload @:public public function createNew(t : com.sun.org.apache.bcel.internal.generic.ObjectType) : com.sun.org.apache.bcel.internal.generic.NEW;
	
	@:overload @:public public function createNew(s : String) : com.sun.org.apache.bcel.internal.generic.NEW;
	
	/** Create new array of given size and type.
	* @return an instruction that creates the corresponding array at runtime, i.e. is an AllocationInstruction
	*/
	@:overload @:public public function createNewArray(t : com.sun.org.apache.bcel.internal.generic.Type, dim : java.StdTypes.Int16) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/** Create "null" value for reference types, 0 for basic types like int
	*/
	@:overload @:public @:static public static function createNull(type : com.sun.org.apache.bcel.internal.generic.Type) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/** Create branch instruction by given opcode, except LOOKUPSWITCH and TABLESWITCH.
	* For those you should use the SWITCH compound instruction.
	*/
	@:overload @:public @:static public static function createBranchInstruction(opcode : java.StdTypes.Int16, target : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : com.sun.org.apache.bcel.internal.generic.BranchInstruction;
	
	@:overload @:public public function setClassGen(c : com.sun.org.apache.bcel.internal.generic.ClassGen) : Void;
	
	@:overload @:public public function getClassGen() : com.sun.org.apache.bcel.internal.generic.ClassGen;
	
	@:overload @:public public function setConstantPool(c : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Void;
	
	@:overload @:public public function getConstantPool() : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen;
	
	
}
@:native('com$sun$org$apache$bcel$internal$generic$InstructionFactory$MethodObject') @:internal extern class InstructionFactory_MethodObject
{
	
}
