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
* This class represents a local variable within a method. It contains its
* scope, name and type. The generated LocalVariable object can be obtained
* with getLocalVariable which needs the instruction list and the constant
* pool as parameters.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @see     LocalVariable
* @see     MethodGen
*/
extern class LocalVariableGen implements com.sun.org.apache.bcel.internal.generic.InstructionTargeter implements com.sun.org.apache.bcel.internal.generic.NamedAndTyped implements java.lang.Cloneable implements java.io.Serializable
{
	/**
	* Generate a local variable that with index `index'. Note that double and long
	* variables need two indexs. Index indices have to be provided by the user.
	*
	* @param index index of local variable
	* @param name its name
	* @param type its type
	* @param start from where the instruction is valid (null means from the start)
	* @param end until where the instruction is valid (null means to the end)
	*/
	@:overload @:public public function new(index : Int, name : String, type : com.sun.org.apache.bcel.internal.generic.Type, start : com.sun.org.apache.bcel.internal.generic.InstructionHandle, end : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* Get LocalVariable object.
	*
	* This relies on that the instruction list has already been dumped to byte code or
	* or that the `setPositions' methods has been called for the instruction list.
	*
	* Note that for local variables whose scope end at the last
	* instruction of the method's code, the JVM specification is ambiguous:
	* both a start_pc+length ending at the last instruction and
	* start_pc+length ending at first index beyond the end of the code are
	* valid.
	*
	* @param il instruction list (byte code) which this variable belongs to
	* @param cp constant pool
	*/
	@:overload @:public public function getLocalVariable(cp : com.sun.org.apache.bcel.internal.generic.ConstantPoolGen) : com.sun.org.apache.bcel.internal.classfile.LocalVariable;
	
	@:overload @:public public function setIndex(index : Int) : Void;
	
	@:overload @:public public function getIndex() : Int;
	
	@:overload @:public public function setName(name : String) : Void;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function setType(type : com.sun.org.apache.bcel.internal.generic.Type) : Void;
	
	@:overload @:public public function getType() : com.sun.org.apache.bcel.internal.generic.Type;
	
	@:overload @:public public function getStart() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	@:overload @:public public function getEnd() : com.sun.org.apache.bcel.internal.generic.InstructionHandle;
	
	@:overload @:public public function setStart(start : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	@:overload @:public public function setEnd(end : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* @param old_ih old target, either start or end
	* @param new_ih new target
	*/
	@:overload @:public public function updateTarget(old_ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle, new_ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Void;
	
	/**
	* @return true, if ih is target of this variable
	*/
	@:overload @:public public function containsTarget(ih : com.sun.org.apache.bcel.internal.generic.InstructionHandle) : Bool;
	
	/**
	* We consider to local variables to be equal, if the use the same index and
	* are valid in the same range.
	*/
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function clone() : Dynamic;
	
	
}
