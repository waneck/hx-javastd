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
* Abstract super class for fields and methods.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class FieldOrMethod extends com.sun.org.apache.bcel.internal.classfile.AccessFlags implements java.lang.Cloneable implements com.sun.org.apache.bcel.internal.classfile.Node
{
	private var name_index : Int;
	
	private var signature_index : Int;
	
	private var attributes_count : Int;
	
	private var attributes : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>;
	
	private var constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool;
	
	/**
	* Initialize from another object. Note that both objects use the same
	* references (shallow copy). Use clone() for a physical copy.
	*/
	@:overload private function new(c : FieldOrMethod) : Void;
	
	/**
	* Construct object from file stream.
	* @param file Input stream
	* @throws IOException
	* @throws ClassFormatException
	*/
	@:overload private function new(file : java.io.DataInputStream, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* @param access_flags Access rights of method
	* @param name_index Points to field name in constant pool
	* @param signature_index Points to encoded signature
	* @param attributes Collection of attributes
	* @param constant_pool Array of constants
	*/
	@:overload private function new(access_flags : Int, name_index : Int, signature_index : Int, attributes : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* Dump object to file stream on binary format.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload @:final public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return Collection of object attributes.
	*/
	@:overload @:final public function getAttributes() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>;
	
	/**
	* @param attributes Collection of object attributes.
	*/
	@:overload @:final public function setAttributes(attributes : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>) : Void;
	
	/**
	* @return Constant pool used by this object.
	*/
	@:overload @:final public function getConstantPool() : com.sun.org.apache.bcel.internal.classfile.ConstantPool;
	
	/**
	* @param constant_pool Constant pool to be used for this object.
	*/
	@:overload @:final public function setConstantPool(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* @return Index in constant pool of object's name.
	*/
	@:overload @:final public function getNameIndex() : Int;
	
	/**
	* @param name_index Index in constant pool of object's name.
	*/
	@:overload @:final public function setNameIndex(name_index : Int) : Void;
	
	/**
	* @return Index in constant pool of field signature.
	*/
	@:overload @:final public function getSignatureIndex() : Int;
	
	/**
	* @param signature_index Index in constant pool of field signature.
	*/
	@:overload @:final public function setSignatureIndex(signature_index : Int) : Void;
	
	/**
	* @return Name of object, i.e., method name or field name
	*/
	@:overload @:final public function getName() : String;
	
	/**
	* @return String representation of object's type signature (java style)
	*/
	@:overload @:final public function getSignature() : String;
	
	/**
	* @return deep copy of this field
	*/
	@:overload private function copy_(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : FieldOrMethod;
	
	@:overload @:public public function accept(obj : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	
}
