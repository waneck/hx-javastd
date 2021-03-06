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
* This class represents a inner class attribute, i.e., the class
* indices of the inner and outer classes, the name and the attributes
* of the inner class.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
* @see InnerClasses
*/
extern class InnerClass implements java.lang.Cloneable implements com.sun.org.apache.bcel.internal.classfile.Node
{
	/**
	* Initialize from another object.
	*/
	@:overload @:public public function new(c : com.sun.org.apache.bcel.internal.classfile.InnerClass) : Void;
	
	/**
	* @param inner_class_index Class index in constant pool of inner class
	* @param outer_class_index Class index in constant pool of outer class
	* @param inner_name_index  Name index in constant pool of inner class
	* @param inner_access_flags Access flags of inner class
	*/
	@:overload @:public public function new(inner_class_index : Int, outer_class_index : Int, inner_name_index : Int, inner_access_flags : Int) : Void;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload @:public public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* Dump inner class attribute to file stream in binary format.
	*
	* @param file Output file stream
	* @throws IOException
	*/
	@:overload @:public @:final public function dump(file : java.io.DataOutputStream) : Void;
	
	/**
	* @return access flags of inner class.
	*/
	@:overload @:public @:final public function getInnerAccessFlags() : Int;
	
	/**
	* @return class index of inner class.
	*/
	@:overload @:public @:final public function getInnerClassIndex() : Int;
	
	/**
	* @return name index of inner class.
	*/
	@:overload @:public @:final public function getInnerNameIndex() : Int;
	
	/**
	* @return class index of outer class.
	*/
	@:overload @:public @:final public function getOuterClassIndex() : Int;
	
	/**
	* @param inner_access_flags.
	*/
	@:overload @:public @:final public function setInnerAccessFlags(inner_access_flags : Int) : Void;
	
	/**
	* @param inner_class_index.
	*/
	@:overload @:public @:final public function setInnerClassIndex(inner_class_index : Int) : Void;
	
	/**
	* @param inner_name_index.
	*/
	@:overload @:public @:final public function setInnerNameIndex(inner_name_index : Int) : Void;
	
	/**
	* @param outer_class_index.
	*/
	@:overload @:public @:final public function setOuterClassIndex(outer_class_index : Int) : Void;
	
	/**
	* @return String representation.
	*/
	@:overload @:public @:final public function toString() : String;
	
	/**
	* @return Resolved string representation
	*/
	@:overload @:public @:final public function toString(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : String;
	
	/**
	* @return deep copy of this object
	*/
	@:overload @:public public function copy() : com.sun.org.apache.bcel.internal.classfile.InnerClass;
	
	
}
