package java.lang.annotation;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* Thrown to indicate that a program has attempted to access an element of
* an annotation type that was added to the annotation type definition after
* the annotation was compiled (or serialized).  This exception will not be
* thrown if the new element has a default value.
* This exception can be thrown by the {@linkplain
* java.lang.reflect.AnnotatedElement API used to read annotations
* reflectively}.
*
* @author  Josh Bloch
* @see     java.lang.reflect.AnnotatedElement
* @since 1.5
*/
@:require(java5) extern class IncompleteAnnotationException extends java.lang.RuntimeException
{
	/**
	* Constructs an IncompleteAnnotationException to indicate that
	* the named element was missing from the specified annotation type.
	*
	* @param annotationType the Class object for the annotation type
	* @param elementName the name of the missing element
	*/
	@:overload public function new(annotationType : Class<java.lang.annotation.Annotation>, elementName : String) : Void;
	
	/**
	* Returns the Class object for the annotation type with the
	* missing element.
	*
	* @return the Class object for the annotation type with the
	*     missing element
	*/
	@:overload public function annotationType() : Class<java.lang.annotation.Annotation>;
	
	/**
	* Returns the name of the missing element.
	*
	* @return the name of the missing element
	*/
	@:overload public function elementName() : String;
	
	
}
