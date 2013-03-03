package com.sun.tools.javadoc;
/*
* Copyright (c) 2001, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class PrimitiveType implements com.sun.javadoc.Type
{
	/**
	* Return unqualified name of type excluding any dimension information.
	* <p>
	* For example, a two dimensional array of String returns 'String'.
	*/
	@:overload @:public public function typeName() : String;
	
	/**
	* Return qualified name of type excluding any dimension information.
	*<p>
	* For example, a two dimensional array of String
	* returns 'java.lang.String'.
	*/
	@:overload @:public public function qualifiedTypeName() : String;
	
	/**
	* Return the simple name of this type.
	*/
	@:overload @:public public function simpleTypeName() : String;
	
	/**
	* Return the type's dimension information, as a string.
	* <p>
	* For example, a two dimensional array of String returns '[][]'.
	*/
	@:overload @:public public function dimension() : String;
	
	/**
	* Return this type as a class.  Array dimensions are ignored.
	*
	* @return a ClassDocImpl if the type is a Class.
	* Return null if it is a primitive type..
	*/
	@:overload @:public public function asClassDoc() : com.sun.javadoc.ClassDoc;
	
	/**
	* Return null, as this is not an annotation type.
	*/
	@:overload @:public public function asAnnotationTypeDoc() : com.sun.javadoc.AnnotationTypeDoc;
	
	/**
	* Return null, as this is not an instantiation.
	*/
	@:overload @:public public function asParameterizedType() : com.sun.javadoc.ParameterizedType;
	
	/**
	* Return null, as this is not a type variable.
	*/
	@:overload @:public public function asTypeVariable() : com.sun.javadoc.TypeVariable;
	
	/**
	* Return null, as this is not a wildcard type;
	*/
	@:overload @:public public function asWildcardType() : com.sun.javadoc.WildcardType;
	
	/**
	* Returns a string representation of the type.
	*
	* Return name of type including any dimension information.
	* <p>
	* For example, a two dimensional array of String returns
	* <code>String[][]</code>.
	*
	* @return name of type including any dimension information.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Return true if this is a primitive type.
	*/
	@:overload @:public public function isPrimitive() : Bool;
	
	
}
