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
extern class Type implements java.io.Serializable
{
	/**
	* Abstract super class for all possible java types, namely basic types
	* such as int, object types like String and array types, e.g. int[]
	*
	* @author  <A HREF="mailto:markus.dahm@berlin.de">M. Dahm</A>
	*/
	@:protected private var type : java.StdTypes.Int8;
	
	@:protected private var signature : String;
	
	/** Predefined constants
	*/
	@:public @:static @:final public static var VOID(default, null) : com.sun.org.apache.bcel.internal.generic.BasicType;
	
	@:public @:static @:final public static var BOOLEAN(default, null) : com.sun.org.apache.bcel.internal.generic.BasicType;
	
	@:public @:static @:final public static var INT(default, null) : com.sun.org.apache.bcel.internal.generic.BasicType;
	
	@:public @:static @:final public static var SHORT(default, null) : com.sun.org.apache.bcel.internal.generic.BasicType;
	
	@:public @:static @:final public static var BYTE(default, null) : com.sun.org.apache.bcel.internal.generic.BasicType;
	
	@:public @:static @:final public static var LONG(default, null) : com.sun.org.apache.bcel.internal.generic.BasicType;
	
	@:public @:static @:final public static var DOUBLE(default, null) : com.sun.org.apache.bcel.internal.generic.BasicType;
	
	@:public @:static @:final public static var FLOAT(default, null) : com.sun.org.apache.bcel.internal.generic.BasicType;
	
	@:public @:static @:final public static var CHAR(default, null) : com.sun.org.apache.bcel.internal.generic.BasicType;
	
	@:public @:static @:final public static var OBJECT(default, null) : com.sun.org.apache.bcel.internal.generic.ObjectType;
	
	@:public @:static @:final public static var STRING(default, null) : com.sun.org.apache.bcel.internal.generic.ObjectType;
	
	@:public @:static @:final public static var STRINGBUFFER(default, null) : com.sun.org.apache.bcel.internal.generic.ObjectType;
	
	@:public @:static @:final public static var THROWABLE(default, null) : com.sun.org.apache.bcel.internal.generic.ObjectType;
	
	@:public @:static @:final public static var NO_ARGS(default, null) : java.NativeArray<com.sun.org.apache.bcel.internal.generic.Type>;
	
	@:public @:static @:final public static var NULL(default, null) : com.sun.org.apache.bcel.internal.generic.ReferenceType;
	
	@:public @:static @:final public static var UNKNOWN(default, null) : com.sun.org.apache.bcel.internal.generic.Type;
	
	@:overload @:protected private function new(t : java.StdTypes.Int8, s : String) : Void;
	
	/**
	* @return signature for given type.
	*/
	@:overload @:public public function getSignature() : String;
	
	/**
	* @return type as defined in Constants
	*/
	@:overload @:public public function getType() : java.StdTypes.Int8;
	
	/**
	* @return stack size of this type (2 for long and double, 0 for void, 1 otherwise)
	*/
	@:overload @:public public function getSize() : Int;
	
	/**
	* @return Type string, e.g. `int[]'
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Convert type to Java method signature, e.g. int[] f(java.lang.String x)
	* becomes (Ljava/lang/String;)[I
	*
	* @param return_type what the method returns
	* @param arg_types what are the argument types
	* @return method signature for given type(s).
	*/
	@:overload @:public @:static public static function getMethodSignature(return_type : com.sun.org.apache.bcel.internal.generic.Type, arg_types : java.NativeArray<com.sun.org.apache.bcel.internal.generic.Type>) : String;
	
	/**
	* Convert signature to a Type object.
	* @param signature signature string such as Ljava/lang/String;
	* @return type object
	*/
	@:native('getType') @:overload @:public @:static @:final public static function _getType(signature : String) : com.sun.org.apache.bcel.internal.generic.Type;
	
	/**
	* Convert return value of a method (signature) to a Type object.
	*
	* @param signature signature string such as (Ljava/lang/String;)V
	* @return return type
	*/
	@:overload @:public @:static public static function getReturnType(signature : String) : com.sun.org.apache.bcel.internal.generic.Type;
	
	/**
	* Convert arguments of a method (signature) to an array of Type objects.
	* @param signature signature string such as (Ljava/lang/String;)V
	* @return array of argument types
	*/
	@:overload @:public @:static public static function getArgumentTypes(signature : String) : java.NativeArray<com.sun.org.apache.bcel.internal.generic.Type>;
	
	/** Convert runtime java.lang.Class to BCEL Type object.
	* @param cl Java class
	* @return corresponding Type object
	*/
	@:native('getType') @:overload @:public @:static public static function _getType(cl : Class<Dynamic>) : com.sun.org.apache.bcel.internal.generic.Type;
	
	@:native('getSignature') @:overload @:public @:static public static function _getSignature(meth : java.lang.reflect.Method) : String;
	
	
}
