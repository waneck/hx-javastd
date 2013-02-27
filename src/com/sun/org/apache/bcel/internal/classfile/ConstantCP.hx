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
extern class ConstantCP extends com.sun.org.apache.bcel.internal.classfile.Constant
{
	/** References to the constants containing the class and the field signature
	*/
	private var class_index : Int;
	
	/**
	* Initialize from another object.
	*/
	@:overload public function new(c : ConstantCP) : Void;
	
	/**
	* @param class_index Reference to the class containing the field
	* @param name_and_type_index and the field signature
	*/
	@:overload private function new(tag : java.StdTypes.Int8, class_index : Int, name_and_type_index : Int) : Void;
	
	/**
	* Dump constant field reference to file stream in binary format.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload @:final override public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return Reference (index) to class this field or method belongs to.
	*/
	@:overload @:final public function getClassIndex() : Int;
	
	/**
	* @return Reference (index) to signature of the field.
	*/
	@:overload @:final public function getNameAndTypeIndex() : Int;
	
	/**
	* @param class_index points to Constant_class
	*/
	@:overload @:final public function setClassIndex(class_index : Int) : Void;
	
	/**
	* @return Class this field belongs to.
	*/
	@:overload public function getClass(cp : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : String;
	
	/**
	* @param name_and_type_index points to Constant_NameAndType
	*/
	@:overload @:final public function setNameAndTypeIndex(name_and_type_index : Int) : Void;
	
	/**
	* @return String representation.
	*/
	@:overload @:final override public function toString() : String;
	
	
}
