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
* This class represents a local variable within a method. It contains its
* scope, name, signature and index on the method's frame.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @see     LocalVariableTable
*/
extern class LocalVariable implements com.sun.org.apache.bcel.internal.Constants implements java.lang.Cloneable implements com.sun.org.apache.bcel.internal.classfile.Node implements java.io.Serializable
{
	/**
	* Initialize from another object. Note that both objects use the same
	* references (shallow copy). Use copy() for a physical copy.
	*/
	@:overload public function new(c : LocalVariable) : Void;
	
	/**
	* @param start_pc Range in which the variable
	* @param length ... is valid
	* @param name_index Index in constant pool of variable name
	* @param signature_index Index of variable's signature
	* @param index Variable is `index'th local variable on the method's frame
	* @param constant_pool Array of constants
	*/
	@:overload public function new(start_pc : Int, length : Int, name_index : Int, signature_index : Int, index : Int, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* Dump local variable to file stream in binary format.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload @:final public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return Constant pool used by this object.
	*/
	@:overload @:final public function getConstantPool() : com.sun.org.apache.bcel.internal.classfile.ConstantPool;
	
	/**
	* @return Variable is valid within getStartPC() .. getStartPC()+getLength()
	*/
	@:overload @:final public function getLength() : Int;
	
	/**
	* @return Variable name.
	*/
	@:overload @:final public function getName() : String;
	
	/**
	* @return Index in constant pool of variable name.
	*/
	@:overload @:final public function getNameIndex() : Int;
	
	/**
	* @return Signature.
	*/
	@:overload @:final public function getSignature() : String;
	
	/**
	* @return Index in constant pool of variable signature.
	*/
	@:overload @:final public function getSignatureIndex() : Int;
	
	/**
	* @return index of register where variable is stored
	*/
	@:overload @:final public function getIndex() : Int;
	
	/**
	* @return Start of range where he variable is valid
	*/
	@:overload @:final public function getStartPC() : Int;
	
	/**
	* @param constant_pool Constant pool to be used for this object.
	*/
	@:overload @:final public function setConstantPool(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* @param length.
	*/
	@:overload @:final public function setLength(length : Int) : Void;
	
	/**
	* @param name_index.
	*/
	@:overload @:final public function setNameIndex(name_index : Int) : Void;
	
	/**
	* @param signature_index.
	*/
	@:overload @:final public function setSignatureIndex(signature_index : Int) : Void;
	
	/**
	* @param index.
	*/
	@:overload @:final public function setIndex(index : Int) : Void;
	
	/**
	* @param start_pc Specify range where the local variable is valid.
	*/
	@:overload @:final public function setStartPC(start_pc : Int) : Void;
	
	/**
	* @return string representation.
	*/
	@:overload @:final public function toString() : String;
	
	/**
	* @return deep copy of this object
	*/
	@:overload public function copy() : LocalVariable;
	
	
}
