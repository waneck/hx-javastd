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
* This class represents the method info structure, i.e., the representation
* for a method in the class. See JVM specification for details.
* A method has access flags, a name, a signature and a number of attributes.
*
* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
*/
extern class Method extends com.sun.org.apache.bcel.internal.classfile.FieldOrMethod
{
	/**
	* Empty constructor, all attributes have to be defined via `setXXX'
	* methods. Use at your own risk.
	*/
	@:overload public function new() : Void;
	
	/**
	* Initialize from another object. Note that both objects use the same
	* references (shallow copy). Use clone() for a physical copy.
	*/
	@:overload public function new(c : Method) : Void;
	
	/**
	* @param access_flags Access rights of method
	* @param name_index Points to field name in constant pool
	* @param signature_index Points to encoded signature
	* @param attributes Collection of attributes
	* @param constant_pool Array of constants
	*/
	@:overload public function new(access_flags : Int, name_index : Int, signature_index : Int, attributes : java.NativeArray<com.sun.org.apache.bcel.internal.classfile.Attribute>, constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Void;
	
	/**
	* Called by objects that are traversing the nodes of the tree implicitely
	* defined by the contents of a Java class. I.e., the hierarchy of methods,
	* fields, attributes, etc. spawns a tree of objects.
	*
	* @param v Visitor object
	*/
	@:overload override public function accept(v : com.sun.org.apache.bcel.internal.classfile.Visitor) : Void;
	
	/**
	* @return Code attribute of method, if any
	*/
	@:overload @:final public function getCode() : com.sun.org.apache.bcel.internal.classfile.Code;
	
	/**
	* @return ExceptionTable attribute of method, if any, i.e., list all
	* exceptions the method may throw not exception handlers!
	*/
	@:overload @:final public function getExceptionTable() : com.sun.org.apache.bcel.internal.classfile.ExceptionTable;
	
	/** @return LocalVariableTable of code attribute if any, i.e. the call is forwarded
	* to the Code atribute.
	*/
	@:overload @:final public function getLocalVariableTable() : com.sun.org.apache.bcel.internal.classfile.LocalVariableTable;
	
	/** @return LineNumberTable of code attribute if any, i.e. the call is forwarded
	* to the Code atribute.
	*/
	@:overload @:final public function getLineNumberTable() : com.sun.org.apache.bcel.internal.classfile.LineNumberTable;
	
	/**
	* Return string representation close to declaration format,
	* `public static void _main(String[] args) throws IOException', e.g.
	*
	* @return String representation of the method.
	*/
	@:overload @:final public function toString() : String;
	
	/**
	* @return deep copy of this method
	*/
	@:overload @:final public function copy(constant_pool : com.sun.org.apache.bcel.internal.classfile.ConstantPool) : Method;
	
	/**
	* @return return type of method
	*/
	@:overload public function getReturnType() : com.sun.org.apache.bcel.internal.generic.Type;
	
	/**
	* @return array of method argument types
	*/
	@:overload public function getArgumentTypes() : java.NativeArray<com.sun.org.apache.bcel.internal.generic.Type>;
	
	
}
