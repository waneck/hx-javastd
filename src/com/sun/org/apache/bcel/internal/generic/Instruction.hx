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
extern class Instruction implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Abstract super class for all Java byte codes.
	*
	* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
	*/
	private var length : java.StdTypes.Int16;
	
	private var opcode : java.StdTypes.Int16;
	
	@:overload public function new(opcode : java.StdTypes.Int16, length : java.StdTypes.Int16) : Void;
	
	/**
	* Dump instruction as byte code to stream out.
	* @param out Output stream
	*/
	@:overload public function dump(out : java.io.DataOutputStream) : Void;
	
	/** @return name of instruction, i.e., opcode name
	*/
	@:overload public function getName() : String;
	
	/**
	* Long output format:
	*
	* &lt;name of opcode&gt; "["&lt;opcode number&gt;"]"
	* "("&lt;length of instruction&gt;")"
	*
	* @param verbose long/short format switch
	* @return mnemonic for instruction
	*/
	@:overload public function toString(verbose : Bool) : String;
	
	/**
	* @return mnemonic for instruction in verbose format
	*/
	@:overload public function toString() : String;
	
	/**
	* @return mnemonic for instruction with sumbolic references resolved
	*/
	@:overload public function toString(cp : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : String;
	
	/**
	* Use with caution, since `BranchInstruction's have a `target' reference which
	* is not copied correctly (only basic types are). This also applies for
	* `Select' instructions with their multiple branch targets.
	*
	* @see BranchInstruction
	* @return (shallow) copy of an instruction
	*/
	@:overload public function copy() : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/**
	* Read needed data (e.g. index) from file.
	*
	* @param bytes byte sequence to read from
	* @param wide "wide" instruction flag
	*/
	@:overload private function initFromFile(bytes : com.sun.org.apache.bcel.internal.util.ByteSequence, wide : Bool) : Void;
	
	/**
	* Read an instruction from (byte code) input stream and return the
	* appropiate object.
	*
	* @param file file to read from
	* @return instruction object being read
	*/
	@:overload @:final public static function readInstruction(bytes : com.sun.org.apache.bcel.internal.util.ByteSequence) : com.sun.org.apache.bcel.internal.generic.Instruction;
	
	/**
	* This method also gives right results for instructions whose
	* effect on the stack depends on the constant pool entry they
	* reference.
	*  @return Number of words consumed from stack by this instruction,
	* or Constants.UNPREDICTABLE, if this can not be computed statically
	*/
	@:overload public function consumeStack(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Int;
	
	/**
	* This method also gives right results for instructions whose
	* effect on the stack depends on the constant pool entry they
	* reference.
	* @return Number of words produced onto stack by this instruction,
	* or Constants.UNPREDICTABLE, if this can not be computed statically
	*/
	@:overload public function produceStack(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Int;
	
	/**
	* @return this instructions opcode
	*/
	@:overload public function getOpcode() : java.StdTypes.Int16;
	
	/**
	* @return length (in bytes) of instruction
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Call corresponding visitor method(s). The order is:
	* Call visitor methods of implemented interfaces first, then
	* call methods according to the class hierarchy in descending order,
	* i.e., the most specific visitXXX() call comes last.
	*
	* @param v Visitor object
	*/
	@:overload @:abstract public function accept(v : com.sun.org.apache.bcel.internal.generic.Visitor) : Void;
	
	/** Get Comparator object used in the equals() method to determine
	* equality of instructions.
	*
	* @return currently used comparator for equals()
	*/
	@:overload public static function getComparator() : com.sun.org.apache.bcel.internal.generic.InstructionComparator;
	
	/** Set comparator to be used for equals().
	*/
	@:overload public static function setComparator(c : com.sun.org.apache.bcel.internal.generic.InstructionComparator) : Void;
	
	/** Check for equality, delegated to comparator
	* @return true if that is an Instruction and has the same opcode
	*/
	@:overload public function equals(that : Dynamic) : Bool;
	
	
}
