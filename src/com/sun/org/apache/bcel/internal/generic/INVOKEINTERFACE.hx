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
extern class INVOKEINTERFACE extends com.sun.org.apache.bcel.internal.generic.InvokeInstruction
{
	@:overload public function new(index : Int, nargs : Int) : Void;
	
	/**
	* Dump instruction as byte code to stream out.
	* @param out Output stream
	*/
	@:overload override public function dump(out : java.io.DataOutputStream) : Void;
	
	/**
	* The <B>count</B> argument according to the Java Language Specification,
	* Second Edition.
	*/
	@:overload public function getCount() : Int;
	
	/**
	* Read needed data (i.e., index) from file.
	*/
	@:overload private function initFromFile(bytes : com.sun.org.apache.bcel.internal.util.ByteSequence, wide : Bool) : Void;
	
	/**
	* @return mnemonic for instruction with symbolic references resolved
	*/
	@:overload override public function toString(cp : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : String;
	
	@:overload override public function consumeStack(cpg : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : Int;
	
	@:overload override public function getExceptions() : java.NativeArray<Class<Dynamic>>;
	
	/**
	* Call corresponding visitor method(s). The order is:
	* Call visitor methods of implemented interfaces first, then
	* call methods according to the class hierarchy in descending order,
	* i.e., the most specific visitXXX() call comes last.
	*
	* @param v Visitor object
	*/
	@:overload public function accept(v : com.sun.org.apache.bcel.internal.generic.Visitor) : Void;
	
	
}
