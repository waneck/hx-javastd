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
extern class ConstantPoolGen implements java.io.Serializable
{
	/**
	* This class is used to build up a constant pool. The user adds
	* constants via `addXXX' methods, `addString', `addClass',
	* etc.. These methods return an index into the constant
	* pool. Finally, `getFinalConstantPool()' returns the constant pool
	* built up. Intermediate versions of the constant pool can be
	* obtained with `getConstantPool()'. A constant pool has capacity for
	* Constants.MAX_SHORT entries. Note that the first (0) is used by the
	* JVM and that Double and Long constants need two slots.
	*
	* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
	* @see Constant
	*/
	private var size : Int;
	
	private var constants : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Constant>;
	
	private var index : Int;
	
	/**
	* Initialize with given array of constants.
	*
	* @param c array of given constants, new ones will be appended
	*/
	@:overload public function new(cs : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Constant>) : Void;
	
	/**
	* Initialize with given constant pool.
	*/
	@:overload public function new(cp : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* Create empty constant pool.
	*/
	@:overload public function new() : Void;
	
	/** Resize internal array of constants.
	*/
	@:overload private function adjustSize() : Void;
	
	/**
	* Look for ConstantString in ConstantPool containing String `str'.
	*
	* @param str String to search for
	* @return index on success, -1 otherwise
	*/
	@:overload public function lookupString(str : String) : Int;
	
	/**
	* Add a new String constant to the ConstantPool, if it is not already in there.
	*
	* @param str String to add
	* @return index of entry
	*/
	@:overload public function addString(str : String) : Int;
	
	/**
	* Look for ConstantClass in ConstantPool named `str'.
	*
	* @param str String to search for
	* @return index on success, -1 otherwise
	*/
	@:overload public function lookupClass(str : String) : Int;
	
	/**
	* Add a new Class reference to the ConstantPool, if it is not already in there.
	*
	* @param str Class to add
	* @return index of entry
	*/
	@:overload public function addClass(str : String) : Int;
	
	/**
	* Add a new Class reference to the ConstantPool for a given type.
	*
	* @param str Class to add
	* @return index of entry
	*/
	@:overload public function addClass(type : com.sun.org.apache.bcel.internal.generic.ObjectType) : Int;
	
	/**
	* Add a reference to an array class (e.g. String[][]) as needed by MULTIANEWARRAY
	* instruction, e.g. to the ConstantPool.
	*
	* @param type type of array class
	* @return index of entry
	*/
	@:overload public function addArrayClass(type : com.sun.org.apache.bcel.internal.generic.ArrayType) : Int;
	
	/**
	* Look for ConstantInteger in ConstantPool.
	*
	* @param n integer number to look for
	* @return index on success, -1 otherwise
	*/
	@:overload public function lookupInteger(n : Int) : Int;
	
	/**
	* Add a new Integer constant to the ConstantPool, if it is not already in there.
	*
	* @param n integer number to add
	* @return index of entry
	*/
	@:overload public function addInteger(n : Int) : Int;
	
	/**
	* Look for ConstantFloat in ConstantPool.
	*
	* @param n Float number to look for
	* @return index on success, -1 otherwise
	*/
	@:overload public function lookupFloat(n : Single) : Int;
	
	/**
	* Add a new Float constant to the ConstantPool, if it is not already in there.
	*
	* @param n Float number to add
	* @return index of entry
	*/
	@:overload public function addFloat(n : Single) : Int;
	
	/**
	* Look for ConstantUtf8 in ConstantPool.
	*
	* @param n Utf8 string to look for
	* @return index on success, -1 otherwise
	*/
	@:overload public function lookupUtf8(n : String) : Int;
	
	/**
	* Add a new Utf8 constant to the ConstantPool, if it is not already in there.
	*
	* @param n Utf8 string to add
	* @return index of entry
	*/
	@:overload public function addUtf8(n : String) : Int;
	
	/**
	* Look for ConstantLong in ConstantPool.
	*
	* @param n Long number to look for
	* @return index on success, -1 otherwise
	*/
	@:overload public function lookupLong(n : haxe.Int64) : Int;
	
	/**
	* Add a new long constant to the ConstantPool, if it is not already in there.
	*
	* @param n Long number to add
	* @return index of entry
	*/
	@:overload public function addLong(n : haxe.Int64) : Int;
	
	/**
	* Look for ConstantDouble in ConstantPool.
	*
	* @param n Double number to look for
	* @return index on success, -1 otherwise
	*/
	@:overload public function lookupDouble(n : Float) : Int;
	
	/**
	* Add a new double constant to the ConstantPool, if it is not already in there.
	*
	* @param n Double number to add
	* @return index of entry
	*/
	@:overload public function addDouble(n : Float) : Int;
	
	/**
	* Look for ConstantNameAndType in ConstantPool.
	*
	* @param name of variable/method
	* @param signature of variable/method
	* @return index on success, -1 otherwise
	*/
	@:overload public function lookupNameAndType(name : String, signature : String) : Int;
	
	/**
	* Add a new NameAndType constant to the ConstantPool if it is not already
	* in there.
	*
	* @param n NameAndType string to add
	* @return index of entry
	*/
	@:overload public function addNameAndType(name : String, signature : String) : Int;
	
	/**
	* Look for ConstantMethodref in ConstantPool.
	*
	* @param class_name Where to find method
	* @param method_name Guess what
	* @param signature return and argument types
	* @return index on success, -1 otherwise
	*/
	@:overload public function lookupMethodref(class_name : String, method_name : String, signature : String) : Int;
	
	@:overload public function lookupMethodref(method : com.sun.org.apache.bcel.internal.generic.MethodGen) : Int;
	
	/**
	* Add a new Methodref constant to the ConstantPool, if it is not already
	* in there.
	*
	* @param n Methodref string to add
	* @return index of entry
	*/
	@:overload public function addMethodref(class_name : String, method_name : String, signature : String) : Int;
	
	@:overload public function addMethodref(method : com.sun.org.apache.bcel.internal.generic.MethodGen) : Int;
	
	/**
	* Look for ConstantInterfaceMethodref in ConstantPool.
	*
	* @param class_name Where to find method
	* @param method_name Guess what
	* @param signature return and argument types
	* @return index on success, -1 otherwise
	*/
	@:overload public function lookupInterfaceMethodref(class_name : String, method_name : String, signature : String) : Int;
	
	@:overload public function lookupInterfaceMethodref(method : com.sun.org.apache.bcel.internal.generic.MethodGen) : Int;
	
	/**
	* Add a new InterfaceMethodref constant to the ConstantPool, if it is not already
	* in there.
	*
	* @param n InterfaceMethodref string to add
	* @return index of entry
	*/
	@:overload public function addInterfaceMethodref(class_name : String, method_name : String, signature : String) : Int;
	
	@:overload public function addInterfaceMethodref(method : com.sun.org.apache.bcel.internal.generic.MethodGen) : Int;
	
	/**
	* Look for ConstantFieldref in ConstantPool.
	*
	* @param class_name Where to find method
	* @param field_name Guess what
	* @param signature return and argument types
	* @return index on success, -1 otherwise
	*/
	@:overload public function lookupFieldref(class_name : String, field_name : String, signature : String) : Int;
	
	/**
	* Add a new Fieldref constant to the ConstantPool, if it is not already
	* in there.
	*
	* @param n Fieldref string to add
	* @return index of entry
	*/
	@:overload public function addFieldref(class_name : String, field_name : String, signature : String) : Int;
	
	/**
	* @param i index in constant pool
	* @return constant pool entry at index i
	*/
	@:overload public function getConstant(i : Int) : com.sun.org.apache.bcel.internal.classfile.Constant;
	
	/**
	* Use with care!
	*
	* @param i index in constant pool
	* @param c new constant pool entry at index i
	*/
	@:overload public function setConstant(i : Int, c : com.sun.org.apache.bcel.internal.classfile.Constant) : Void;
	
	/**
	* @return intermediate constant pool
	*/
	@:overload public function getConstantPool() : com.sun.org.apache.bcel.internal.classfile.ConstantPool;
	
	/**
	* @return current size of constant pool
	*/
	@:overload public function getSize() : Int;
	
	/**
	* @return constant pool with proper length
	*/
	@:overload public function getFinalConstantPool() : com.sun.org.apache.bcel.internal.classfile.ConstantPool;
	
	/**
	* @return String representation.
	*/
	@:overload public function toString() : String;
	
	/** Import constant from another ConstantPool and return new index.
	*/
	@:overload public function addConstant(c : com.sun.org.apache.bcel.internal.classfile.Constant, cp : ConstantPoolGen) : Int;
	
	
}
@:native('com$sun$org$apache$bcel$internal$generic$ConstantPoolGen$Index') @:internal extern class ConstantPoolGen_Index implements java.io.Serializable
{
	
}
