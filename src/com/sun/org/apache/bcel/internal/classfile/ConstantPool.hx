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
* This class represents the constant pool, i.e., a table of constants, of
* a parsed classfile. It may contain null references, due to the JVM
* specification that skips an entry after an 8-byte constant (double,
* long) entry.  Those interested in generating constant pools
* programatically should see <a href="../generic/ConstantPoolGen.html">
* ConstantPoolGen</a>.

* @see     Constant
* @see     com.sun.org.apache.bcel.internal.generic.ConstantPoolGen
* @author <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class ConstantPool implements java.lang.Cloneable implements com.sun.org.apache.bcel.internal.classfile.Node implements java.io.Serializable
{
	/**
	* @param constant_pool Array of constants
	*/
	@:overload public function new(constant_pool : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Constant>) : Void;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* Resolve constant to a string representation.
	*
	* @param  constant Constant to be printed
	* @return String representation
	*/
	@:overload public function constantToString(c : com.sun.org.apache.bcel.internal.classfile.Constant) : String;
	
	/**
	* Retrieve constant at `index' from constant pool and resolve it to
	* a string representation.
	*
	* @param  index of constant in constant pool
	* @param  tag expected type
	* @return String representation
	*/
	@:overload public function constantToString(index : Int, tag : java.StdTypes.Int8) : String;
	
	/**
	* Dump constant pool to file stream in binary format.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* Get constant from constant pool.
	*
	* @param  index Index in constant pool
	* @return Constant value
	* @see    Constant
	*/
	@:overload public function getConstant(index : Int) : com.sun.org.apache.bcel.internal.classfile.Constant;
	
	/**
	* Get constant from constant pool and check whether it has the
	* expected type.
	*
	* @param  index Index in constant pool
	* @param  tag Tag of expected constant, i.e., its type
	* @return Constant value
	* @see    Constant
	* @throws  ClassFormatException
	*/
	@:overload public function getConstant(index : Int, tag : java.StdTypes.Int8) : com.sun.org.apache.bcel.internal.classfile.Constant;
	
	/**
	* @return Array of constants.
	* @see    Constant
	*/
	@:overload public function getConstantPool() : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Constant>;
	
	/**
	* Get string from constant pool and bypass the indirection of
	* `ConstantClass' and `ConstantString' objects. I.e. these classes have
	* an index field that points to another entry of the constant pool of
	* type `ConstantUtf8' which contains the real data.
	*
	* @param  index Index in constant pool
	* @param  tag Tag of expected constant, either ConstantClass or ConstantString
	* @return Contents of string reference
	* @see    ConstantClass
	* @see    ConstantString
	* @throws  ClassFormatException
	*/
	@:overload public function getConstantString(index : Int, tag : java.StdTypes.Int8) : String;
	
	/**
	* @return Length of constant pool.
	*/
	@:overload public function getLength() : Int;
	
	/**
	* @param constant Constant to set
	*/
	@:overload public function setConstant(index : Int, constant : com.sun.org.apache.bcel.internal.classfile.Constant) : Void;
	
	/**
	* @param constant_pool
	*/
	@:overload public function setConstantPool(constant_pool : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Constant>) : Void;
	
	/**
	* @return String representation.
	*/
	@:overload public function toString() : String;
	
	/**
	* @return deep copy of this constant pool
	*/
	@:overload public function copy() : ConstantPool;
	
	
}
