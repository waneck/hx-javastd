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
* Abstract super class for instructions that use an index into the
* constant pool such as LDC, INVOKEVIRTUAL, etc.
*
* @see ConstantPoolGen
* @see LDC
* @see INVOKEVIRTUAL
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class CPInstruction extends com.sun.org.apache.bcel.internal.generic.Instruction implements com.sun.org.apache.bcel.internal.generic.TypedInstruction implements com.sun.org.apache.bcel.internal.generic.IndexedInstruction
{
	private var index : Int;
	
	/**
	* @param index to constant pool
	*/
	@:overload private function new(opcode : java.StdTypes.Int16, index : Int) : Void;
	
	/**
	* Dump instruction as byte code to stream out.
	* @param out Output stream
	*/
	@:overload override public function dump(out : java.io.DataOutputStream) : Void;
	
	/**
	* Long output format:
	*
	* &lt;name of opcode&gt; "["&lt;opcode number&gt;"]"
	* "("&lt;length of instruction&gt;")" "&lt;"&lt; constant pool index&gt;"&gt;"
	*
	* @param verbose long/short format switch
	* @return mnemonic for instruction
	*/
	@:overload override public function toString(verbose : Bool) : String;
	
	/**
	* @return mnemonic for instruction with symbolic references resolved
	*/
	@:overload override public function toString(cp : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : String;
	
	/**
	* Read needed data (i.e., index) from file.
	* @param bytes input stream
	* @param wide wide prefix?
	*/
	@:overload override private function initFromFile(bytes : com.sun.org.apache.bcel.internal.util.ByteSequence, wide : Bool) : Void;
	
	/**
	* @return index in constant pool referred by this instruction.
	*/
	@:overload @:final public function getIndex() : Int;
	
	/**
	* Set the index to constant pool.
	* @param index in  constant pool.
	*/
	@:overload public function setIndex(index : Int) : Void;
	
	/** @return type related with this instruction.
	*/
	@:overload public function getType(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : com.sun.org.apache.bcel.internal.generic.Type;
	
	
}
