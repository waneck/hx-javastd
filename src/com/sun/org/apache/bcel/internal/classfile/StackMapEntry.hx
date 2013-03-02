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
* This class represents a stack map entry recording the types of
* local variables and the the of stack items at a given byte code offset.
* See CLDC specification 5.3.1.2
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @see     StackMap
* @see     StackMapType
*/
extern class StackMapEntry implements java.lang.Cloneable
{
	@:overload public function new(byte_code_offset : Int, number_of_locals : Int, types_of_locals : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.StackMapType>, number_of_stack_items : Int, types_of_stack_items : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.StackMapType>, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* Dump stack map entry
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload @:final public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return String representation.
	*/
	@:overload @:final public function toString() : String;
	
	@:overload public function setByteCodeOffset(b : Int) : Void;
	
	@:overload public function getByteCodeOffset() : Int;
	
	@:overload public function setNumberOfLocals(n : Int) : Void;
	
	@:overload public function getNumberOfLocals() : Int;
	
	@:overload public function setTypesOfLocals(t : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.StackMapType>) : Void;
	
	@:overload public function getTypesOfLocals() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.StackMapType>;
	
	@:overload public function setNumberOfStackItems(n : Int) : Void;
	
	@:overload public function getNumberOfStackItems() : Int;
	
	@:overload public function setTypesOfStackItems(t : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.StackMapType>) : Void;
	
	@:overload public function getTypesOfStackItems() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.StackMapType>;
	
	/**
	* @return deep copy of this object
	*/
	@:overload public function copy() : com.sun.org.apache.bcel.internal.classfile.StackMapEntry;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* @return Constant pool used by this object.
	*/
	@:overload @:final public function getConstantPool() : com.sun.org.apache.bcel.internal.classfile.ConstantPool;
	
	/**
	* @param constant_pool Constant pool to be used for this object.
	*/
	@:overload @:final public function setConstantPool(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	
}
