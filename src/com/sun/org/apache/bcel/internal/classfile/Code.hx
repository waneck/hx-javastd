package com.sun.org.apache.bcel.internal.classfile;
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
* This class represents a chunk of Java byte code contained in a
* method. It is instantiated by the
* <em>Attribute.readAttribute()</em> method. A <em>Code</em>
* attribute contains informations about operand stack, local
* variables, byte code and the exceptions handled within this
* method.
*
* This attribute has attributes itself, namely <em>LineNumberTable</em> which
* is used for debugging purposes and <em>LocalVariableTable</em> which
* contains information about the local variables.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @see     Attribute
* @see     CodeException
* @see     LineNumberTable
* @see LocalVariableTable
*/
extern class Code extends com.sun.org.apache.bcel.internal.classfile.Attribute
{
	/**
	* Initialize from another object. Note that both objects use the same
	* references (shallow copy). Use copy() for a physical copy.
	*/
	@:overload @:public public function new(c : com.sun.org.apache.bcel.internal.classfile.Code) : Void;
	
	/**
	* @param name_index Index pointing to the name <em>Code</em>
	* @param length Content length in bytes
	* @param max_stack Maximum size of stack
	* @param max_locals Number of local variables
	* @param code Actual byte code
	* @param exception_table Table of handled exceptions
	* @param attributes Attributes of code: LineNumber or LocalVariable
	* @param constant_pool Array of constants
	*/
	@:overload @:public public function new(name_index : Int, length : Int, max_stack : Int, max_locals : Int, code : java.NativeArray<java.StdTypes.Int8>, exception_table : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.CodeException>, attributes : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload @:public override public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* Dump code attribute to file stream in binary format.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload @:public @:final override public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return Collection of code attributes.
	* @see Attribute
	*/
	@:overload @:public @:final public function getAttributes() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>;
	
	/**
	* @return LineNumberTable of Code, if it has one
	*/
	@:overload @:public public function getLineNumberTable() : com.sun.org.apache.bcel.internal.classfile.LineNumberTable;
	
	/**
	* @return LocalVariableTable of Code, if it has one
	*/
	@:overload @:public public function getLocalVariableTable() : com.sun.org.apache.bcel.internal.classfile.LocalVariableTable;
	
	/**
	* @return Actual byte code of the method.
	*/
	@:overload @:public @:final public function getCode() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* @return Table of handled exceptions.
	* @see CodeException
	*/
	@:overload @:public @:final public function getExceptionTable() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.CodeException>;
	
	/**
	* @return Number of local variables.
	*/
	@:overload @:public @:final public function getMaxLocals() : Int;
	
	/**
	* @return Maximum size of stack used by this method.
	*/
	@:overload @:public @:final public function getMaxStack() : Int;
	
	/**
	* @param attributes.
	*/
	@:overload @:public @:final public function setAttributes(attributes : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>) : Void;
	
	/**
	* @param code byte code
	*/
	@:overload @:public @:final public function setCode(code : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* @param exception_table exception table
	*/
	@:overload @:public @:final public function setExceptionTable(exception_table : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.CodeException>) : Void;
	
	/**
	* @param max_locals maximum number of local variables
	*/
	@:overload @:public @:final public function setMaxLocals(max_locals : Int) : Void;
	
	/**
	* @param max_stack maximum stack size
	*/
	@:overload @:public @:final public function setMaxStack(max_stack : Int) : Void;
	
	/**
	* @return String representation of code chunk.
	*/
	@:overload @:public @:final public function toString(verbose : Bool) : String;
	
	/**
	* @return String representation of code chunk.
	*/
	@:overload @:public @:final override public function toString() : String;
	
	/**
	* @return deep copy of this attribute
	*/
	@:overload @:public override public function copy(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : com.sun.org.apache.bcel.internal.classfile.Attribute;
	
	
}
