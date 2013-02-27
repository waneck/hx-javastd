package com.sun.tools.javadoc;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class TypeMaker
{
	@:overload public static function getType(env : com.sun.tools.javadoc.DocEnv, t : com.sun.tools.javac.code.Type) : com.sun.javadoc.Type;
	
	/**
	* @param errToClassDoc  if true, ERROR type results in a ClassDoc;
	*          false preserves legacy behavior
	*/
	@:overload public static function getType(env : com.sun.tools.javadoc.DocEnv, t : com.sun.tools.javac.code.Type, errToClassDoc : Bool) : com.sun.javadoc.Type;
	
	/**
	* Convert a list of javac types into an array of javadoc types.
	*/
	@:overload public static function getTypes(env : com.sun.tools.javadoc.DocEnv, ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>) : java.NativeArray<com.sun.javadoc.Type>;
	
	/**
	* Like the above version, but use and return the array given.
	*/
	@:overload public static function getTypes(env : com.sun.tools.javadoc.DocEnv, ts : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>, res : java.NativeArray<com.sun.javadoc.Type>) : java.NativeArray<com.sun.javadoc.Type>;
	
	@:overload public static function getTypeName(t : com.sun.tools.javac.code.Type, full : Bool) : String;
	
	
}
@:native('com$sun$tools$javadoc$TypeMaker$ArrayTypeImpl') @:internal extern class TypeMaker_ArrayTypeImpl implements com.sun.javadoc.Type
{
	/**
	* Return the type's dimension information, as a string.
	* <p>
	* For example, a two dimensional array of String returns '[][]'.
	*/
	@:overload public function dimension() : String;
	
	/**
	* Return unqualified name of type excluding any dimension information.
	* <p>
	* For example, a two dimensional array of String returns 'String'.
	*/
	@:overload public function typeName() : String;
	
	/**
	* Return qualified name of type excluding any dimension information.
	*<p>
	* For example, a two dimensional array of String
	* returns 'java.lang.String'.
	*/
	@:overload public function qualifiedTypeName() : String;
	
	/**
	* Return the simple name of this type excluding any dimension information.
	*/
	@:overload public function simpleTypeName() : String;
	
	/**
	* Return this type as a class.  Array dimensions are ignored.
	*
	* @return a ClassDocImpl if the type is a Class.
	* Return null if it is a primitive type..
	*/
	@:overload public function asClassDoc() : com.sun.javadoc.ClassDoc;
	
	/**
	* Return this type as a <code>ParameterizedType</code> if it
	* represents a parameterized type.  Array dimensions are ignored.
	*/
	@:overload public function asParameterizedType() : com.sun.javadoc.ParameterizedType;
	
	/**
	* Return this type as a <code>TypeVariable</code> if it represents
	* a type variable.  Array dimensions are ignored.
	*/
	@:overload public function asTypeVariable() : com.sun.javadoc.TypeVariable;
	
	/**
	* Return null, as there are no arrays of wildcard types.
	*/
	@:overload public function asWildcardType() : com.sun.javadoc.WildcardType;
	
	/**
	* Return this type as an <code>AnnotationTypeDoc</code> if it
	* represents an annotation type.  Array dimensions are ignored.
	*/
	@:overload public function asAnnotationTypeDoc() : com.sun.javadoc.AnnotationTypeDoc;
	
	/**
	* Return true if this is an array of a primitive type.
	*/
	@:overload public function isPrimitive() : Bool;
	
	/**
	* Return a string representation of the type.
	*
	* Return name of type including any dimension information.
	* <p>
	* For example, a two dimensional array of String returns
	* <code>String[][]</code>.
	*
	* @return name of type including any dimension information.
	*/
	@:overload public function toString() : String;
	
	
}
