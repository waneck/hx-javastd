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
* This class represents a line number within a method, i.e., give an instruction
* a line number corresponding to the source code line.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @see     LineNumber
* @see     MethodGen
*/
extern class LineNumberGen implements com.sun.org.apache.bcel.internal.generic.InstructionTargeter implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Create a line number.
	*
	* @param ih instruction handle to reference
	*/
	@:overload @:public public function new(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, src_line : Int) : Void;
	
	/**
	* @return true, if ih is target of this line number
	*/
	@:overload @:public public function containsTarget(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Bool;
	
	/**
	* @param old_ih old target
	* @param new_ih new target
	*/
	@:overload @:public public function updateTarget(old_ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, new_ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* Get LineNumber attribute .
	*
	* This relies on that the instruction list has already been dumped to byte code or
	* or that the `setPositions' methods has been called for the instruction list.
	*/
	@:overload @:public public function getLineNumber() : com.sun.org.apache.bcel.internal.classfile.LineNumber;
	
	@:overload @:public public function setInstruction(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function getInstruction() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	@:overload @:public public function setSourceLine(src_line : Int) : Void;
	
	@:overload @:public public function getSourceLine() : Int;
	
	
}
