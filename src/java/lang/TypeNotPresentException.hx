package java.lang;
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
* Thrown when an application tries to access a type using a string
* representing the type's name, but no definition for the type with
* the specified name can be found.   This exception differs from
* {@link ClassNotFoundException} in that <tt>ClassNotFoundException</tt> is a
* checked exception, whereas this exception is unchecked.
*
* <p>Note that this exception may be used when undefined type variables
* are accessed as well as when types (e.g., classes, interfaces or
* annotation types) are loaded.
* In particular, this exception can be thrown by the {@linkplain
* java.lang.reflect.AnnotatedElement API used to read annotations
* reflectively}.
*
* @author  Josh Bloch
* @see     java.lang.reflect.AnnotatedElement
* @since 1.5
*/
@:require(java5) extern class TypeNotPresentException extends java.lang.RuntimeException
{
	/**
	* Constructs a <tt>TypeNotPresentException</tt> for the named type
	* with the specified cause.
	*
	* @param typeName the fully qualified name of the unavailable type
	* @param cause the exception that was thrown when the system attempted to
	*    load the named type, or <tt>null</tt> if unavailable or inapplicable
	*/
	@:overload public function new(typeName : String, cause : java.lang.Throwable) : Void;
	
	/**
	* Returns the fully qualified name of the unavailable type.
	*
	* @return the fully qualified name of the unavailable type
	*/
	@:overload public function typeName() : String;
	
	
}
