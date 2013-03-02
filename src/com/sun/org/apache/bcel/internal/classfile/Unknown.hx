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
* This class represents a reference to an unknown (i.e.,
* application-specific) attribute of a class.  It is instantiated from the
* <em>Attribute.readAttribute()</em> method.  Applications that need to
* read in application-specific attributes should create an <a
* href="./AttributeReader.html">AttributeReader</a> implementation and
* attach it via <a
* href="./Attribute.html#addAttributeReader(java.lang.String,
* com.sun.org.apache.bcel.internal.classfile.AttributeReader)">Attribute.addAttributeReader</a>.

*
* @see com.sun.org.apache.bcel.internal.classfile.Attribute
* @see com.sun.org.apache.bcel.internal.classfile.AttributeReader
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class Unknown extends com.sun.org.apache.bcel.internal.classfile.Attribute
{
	/**
	* Initialize from another object. Note that both objects use the same
	* references (shallow copy). Use clone() for a physical copy.
	*/
	@:overload public function new(c : com.sun.org.apache.bcel.internal.classfile.Unknown) : Void;
	
	/**
	* Create a non-standard attribute.
	*
	* @param name_index Index in constant pool
	* @param length Content length in bytes
	* @param bytes Attribute contents
	* @param constant_pool Array of constants
	*/
	@:overload public function new(name_index : Int, length : Int, bytes : java.NativeArray<java.StdTypes.Int8>, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* Dump unknown bytes to file stream.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload @:final public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return data bytes.
	*/
	@:overload @:final public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* @return name of attribute.
	*/
	@:overload @:final public function getName() : String;
	
	/**
	* @param bytes.
	*/
	@:overload @:final public function setBytes(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* @return String representation.
	*/
	@:overload @:final public function toString() : String;
	
	/**
	* @return deep copy of this attribute
	*/
	@:overload public function copy(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : com.sun.org.apache.bcel.internal.classfile.Attribute;
	
	
}
