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
* This class represents a stack map attribute used for
* preverification of Java classes for the <a
* href="http://java.sun.com/j2me/"> Java 2 Micro Edition</a>
* (J2ME). This attribute is used by the <a
* href="http://java.sun.com/products/cldc/">KVM</a> and contained
* within the Code attribute of a method. See CLDC specification
* 5.3.1.2
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @see     Code
* @see     StackMapEntry
* @see     StackMapType
*/
extern class StackMap extends com.sun.org.apache.bcel.internal.classfile.Attribute implements com.sun.org.apache.bcel.internal.classfile.Node
{
	/*
	* @param name_index Index of name
	* @param length Content length in bytes
	* @param map Table of stack map entries
	* @param constant_pool Array of constants
	*/
	@:overload public function new(name_index : Int, length : Int, map : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.StackMapEntry>, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* Dump line number table attribute to file stream in binary format.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload @:final public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return Array of stack map entries
	*/
	@:overload @:final public function getStackMap() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.StackMapEntry>;
	
	/**
	* @param map Array of stack map entries
	*/
	@:overload @:final public function setStackMap(map : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.StackMapEntry>) : Void;
	
	/**
	* @return String representation.
	*/
	@:overload @:final public function toString() : String;
	
	/**
	* @return deep copy of this attribute
	*/
	@:overload public function copy(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : com.sun.org.apache.bcel.internal.classfile.Attribute;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	@:overload @:final public function getMapLength() : Int;
	
	
}
