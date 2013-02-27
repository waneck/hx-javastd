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
/**
* Wrapper class for push operations, which are implemented either as BIPUSH,
* LDC or xCONST_n instructions.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class PUSH implements com.sun.org.apache.bcel.internal.generic.CompoundInstruction implements com.sun.org.apache.bcel.internal.generic.VariableLengthInstruction implements com.sun.org.apache.bcel.internal.generic.InstructionConstants
{
	/**
	* This constructor also applies for values of type short, char, byte
	*
	* @param cp Constant pool
	* @param value to be pushed
	*/
	@:overload public function new(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen, value : Int) : Void;
	
	/**
	* @param cp Constant pool
	* @param value to be pushed
	*/
	@:overload public function new(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen, value : Bool) : Void;
	
	/**
	* @param cp Constant pool
	* @param value to be pushed
	*/
	@:overload public function new(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen, value : Single) : Void;
	
	/**
	* @param cp Constant pool
	* @param value to be pushed
	*/
	@:overload public function new(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen, value : haxe.Int64) : Void;
	
	/**
	* @param cp Constant pool
	* @param value to be pushed
	*/
	@:overload public function new(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen, value : Float) : Void;
	
	/**
	* @param cp Constant pool
	* @param value to be pushed
	*/
	@:overload public function new(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen, value : String) : Void;
	
	/**
	* @param cp Constant pool
	* @param value to be pushed
	*/
	@:overload public function new(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen, value : java.lang.Number) : Void;
	
	/**
	* @param cp Constant pool
	* @param value to be pushed
	*/
	@:overload public function new(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen, value : Null<java.StdTypes.Char16>) : Void;
	
	/**
	* @param cp Constant pool
	* @param value to be pushed
	*/
	@:overload public function new(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen, value : Null<Bool>) : Void;
	
	@:overload @:final public function getInstructionList() : com.sun.org.apache.bcel.internal.generic.InstructionList;
	
	@:overload @:final public function getInstruction() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/**
	* @return mnemonic for instruction
	*/
	@:overload public function toString() : String;
	
	
}
