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
* This class is derived from the abstract
* <A HREF="com.sun.org.apache.bcel.internal.classfile.Constant.html">Constant</A> class
* and represents a reference to a (external) class.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @see     Constant
*/
extern class ConstantClass extends com.sun.org.apache.bcel.internal.classfile.Constant implements com.sun.org.apache.bcel.internal.classfile.ConstantObject
{
	/**
	* Initialize from another object.
	*/
	@:overload @:public public function new(c : com.sun.org.apache.bcel.internal.classfile.ConstantClass) : Void;
	
	/**
	* @param name_index Name index in constant pool.  Should refer to a
	* ConstantUtf8.
	*/
	@:overload @:public public function new(name_index : Int) : Void;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload @:public override public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* Dump constant class to file stream in binary format.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload @:public @:final override public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return Name index in constant pool of class name.
	*/
	@:overload @:public @:final public function getNameIndex() : Int;
	
	/**
	* @param name_index.
	*/
	@:overload @:public @:final public function setNameIndex(name_index : Int) : Void;
	
	/** @return String object
	*/
	@:overload @:public public function getConstantValue(cp : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Dynamic;
	
	/** @return dereferenced string
	*/
	@:overload @:public public function getBytes(cp : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : String;
	
	/**
	* @return String representation.
	*/
	@:overload @:public @:final override public function toString() : String;
	
	
}
