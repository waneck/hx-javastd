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
extern class Attribute implements java.lang.Cloneable implements com.sun.org.apache.bcel.internal.classfile.Node implements java.io.Serializable
{
	/**
	* Abstract super class for <em>Attribute</em> objects. Currently the
	* <em>ConstantValue</em>, <em>SourceFile</em>, <em>Code</em>,
	* <em>Exceptiontable</em>, <em>LineNumberTable</em>,
	* <em>LocalVariableTable</em>, <em>InnerClasses</em> and
	* <em>Synthetic</em> attributes are supported. The
	* <em>Unknown</em> attribute stands for non-standard-attributes.
	*
	* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
	* @see     ConstantValue
	* @see     SourceFile
	* @see     Code
	* @see     Unknown
	* @see     ExceptionTable
	* @see     LineNumberTable
	* @see     LocalVariableTable
	* @see     InnerClasses
	* @see     Synthetic
	* @see     Deprecated
	* @see     Signature
*/
	private var name_index : Int;
	
	private var length : Int;
	
	private var tag : java.StdTypes.Int8;
	
	private var constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool;
	
	@:overload private function new(tag : java.StdTypes.Int8, name_index : Int, length : Int, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload @:abstract public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* Dump attribute to file stream in binary format.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload public function dump(file : java.io.DataOutputStream) : Void;
	
	/** Add an Attribute reader capable of parsing (user-defined) attributes
	* named "name". You should not add readers for the standard attributes
	* such as "LineNumberTable", because those are handled internally.
	*
	* @param name the name of the attribute as stored in the class file
	* @param r the reader object
	*/
	@:overload public static function addAttributeReader(name : String, r : com.sun.org.apache.bcel.internal.classfile.AttributeReader) : Void;
	
	/** Remove attribute reader
	*
	* @param name the name of the attribute as stored in the class file
	*/
	@:overload public static function removeAttributeReader(name : String) : Void;
	
	/* Class method reads one attribute from the input data stream.
	* This method must not be accessible from the outside.  It is
	* called by the Field and Method constructor methods.
	*
	* @see    Field
	* @see    Method
	* @param  file Input stream
	* @param  constant_pool Array of constants
	* @return Attribute
	* @throws  IOException
	* @throws  ClassFormatException
	*/
	@:overload @:final public static function readAttribute(file : java.io.DataInputStream, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : com.sun.org.apache.bcel.internal.classfile.Attribute;
	
	/**
	* @return Length of attribute field in bytes.
	*/
	@:overload @:final public function getLength() : Int;
	
	/**
	* @param Attribute length in bytes.
	*/
	@:overload @:final public function setLength(length : Int) : Void;
	
	/**
	* @param name_index of attribute.
	*/
	@:overload @:final public function setNameIndex(name_index : Int) : Void;
	
	/**
	* @return Name index in constant pool of attribute name.
	*/
	@:overload @:final public function getNameIndex() : Int;
	
	/**
	* @return Tag of attribute, i.e., its type. Value may not be altered, thus
	* there is no setTag() method.
	*/
	@:overload @:final public function getTag() : java.StdTypes.Int8;
	
	/**
	* @return Constant pool used by this object.
	* @see ConstantPool
	*/
	@:overload @:final public function getConstantPool() : com.sun.org.apache.bcel.internal.classfile.ConstantPool;
	
	/**
	* @param constant_pool Constant pool to be used for this object.
	* @see ConstantPool
	*/
	@:overload @:final public function setConstantPool(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* Use copy() if you want to have a deep copy(), i.e., with all references
	* copied correctly.
	*
	* @return shallow copy of this attribute
	*/
	@:overload public function clone() : Dynamic;
	
	/**
	* @return deep copy of this attribute
	*/
	@:overload @:abstract public function copy(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : com.sun.org.apache.bcel.internal.classfile.Attribute;
	
	/**
	* @return attribute name.
	*/
	@:overload public function toString() : String;
	
	
}
