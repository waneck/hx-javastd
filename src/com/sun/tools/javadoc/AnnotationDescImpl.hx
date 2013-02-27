package com.sun.tools.javadoc;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AnnotationDescImpl implements com.sun.javadoc.AnnotationDesc
{
	/**
	* Returns the annotation type of this annotation.
	*/
	@:overload public function annotationType() : com.sun.javadoc.AnnotationTypeDoc;
	
	/**
	* Returns this annotation's elements and their values.
	* Only those explicitly present in the annotation are
	* included, not those assuming their default values.
	* Returns an empty array if there are none.
	*/
	@:overload public function elementValues() : java.NativeArray<ElementValuePair>;
	
	/**
	* Returns a string representation of this annotation.
	* String is of one of the forms:
	*     @com.example.foo(name1=val1, name2=val2)
	*     @com.example.foo(val)
	*     @com.example.foo
	* Omit parens for marker annotations, and omit "value=" when allowed.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* Represents an association between an annotation type element
* and one of its values.
*/
@:native('com$sun$tools$javadoc$AnnotationDescImpl$ElementValuePairImpl') extern class AnnotationDescImpl_ElementValuePairImpl implements ElementValuePair
{
	/**
	* Returns the annotation type element.
	*/
	@:overload public function element() : com.sun.javadoc.AnnotationTypeElementDoc;
	
	/**
	* Returns the value associated with the annotation type element.
	*/
	@:overload public function value() : com.sun.javadoc.AnnotationValue;
	
	/**
	* Returns a string representation of this pair
	* of the form "name=value".
	*/
	@:overload public function toString() : String;
	
	
}
