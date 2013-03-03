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
* This class is derived from <em>Attribute</em> and represents a reference
* to a <href="http://wwwipd.ira.uka.de/~pizza/gj/">GJ</a> attribute.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @see     Attribute
*/
extern class Signature extends com.sun.org.apache.bcel.internal.classfile.Attribute
{
	/**
	* Initialize from another object. Note that both objects use the same
	* references (shallow copy). Use clone() for a physical copy.
	*/
	@:overload @:public public function new(c : com.sun.org.apache.bcel.internal.classfile.Signature) : Void;
	
	/**
	* @param name_index Index in constant pool to CONSTANT_Utf8
	* @param length Content length in bytes
	* @param constant_pool Array of constants
	* @param Signature_index Index in constant pool to CONSTANT_Utf8
	*/
	@:overload @:public public function new(name_index : Int, length : Int, signature_index : Int, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload @:public override public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* Dump source file attribute to file stream in binary format.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload @:public @:final override public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return Index in constant pool of source file name.
	*/
	@:overload @:public @:final public function getSignatureIndex() : Int;
	
	/**
	* @param Signature_index.
	*/
	@:overload @:public @:final public function setSignatureIndex(signature_index : Int) : Void;
	
	/**
	* @return GJ signature.
	*/
	@:overload @:public @:final public function getSignature() : String;
	
	@:overload @:public @:static public static function translate(s : String) : String;
	
	@:overload @:public @:static @:final public static function isFormalParameterList(s : String) : Bool;
	
	@:overload @:public @:static @:final public static function isActualParameterList(s : String) : Bool;
	
	/**
	* @return String representation
	*/
	@:overload @:public @:final override public function toString() : String;
	
	/**
	* @return deep copy of this attribute
	*/
	@:overload @:public override public function copy(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : com.sun.org.apache.bcel.internal.classfile.Attribute;
	
	
}
/**
* Extends ByteArrayInputStream to make 'unreading' chars possible.
*/
@:native('com$sun$org$apache$bcel$internal$classfile$Signature$MyByteArrayInputStream') @:internal extern class Signature_MyByteArrayInputStream extends java.io.ByteArrayInputStream
{
	
}
