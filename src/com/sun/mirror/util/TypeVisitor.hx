package com.sun.mirror.util;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
* A visitor for types, in the style of the standard visitor design pattern.
* This is used to operate on a type when the kind
* of type is unknown at compile time.
* When a visitor is passed to a type's
* {@link TypeMirror#accept accept} method,
* the most specific <tt>visit<i>Xxx</i></tt> method applicable to
* that type is invoked.
*
* @deprecated All components of this API have been superseded by the
* standardized annotation processing API.  The replacement for the
* functionality of this interface is {@link
* javax.lang.model.element.TypeVisitor}.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @since 1.5
*/
@:require(java5) extern interface TypeVisitor
{
	/**
	* Visits a type mirror.
	*
	* @param t the type to visit
	*/
	@:overload @:public public function visitTypeMirror(t : com.sun.mirror.type.TypeMirror) : Void;
	
	/**
	* Visits a primitive type.

	* @param t the type to visit
	*/
	@:overload @:public public function visitPrimitiveType(t : com.sun.mirror.type.PrimitiveType) : Void;
	
	/**
	* Visits a void type.
	*
	* @param t the type to visit
	*/
	@:overload @:public public function visitVoidType(t : com.sun.mirror.type.VoidType) : Void;
	
	/**
	* Visits a reference type.
	*
	* @param t the type to visit
	*/
	@:overload @:public public function visitReferenceType(t : com.sun.mirror.type.ReferenceType) : Void;
	
	/**
	* Visits a declared type.
	*
	* @param t the type to visit
	*/
	@:overload @:public public function visitDeclaredType(t : com.sun.mirror.type.DeclaredType) : Void;
	
	/**
	* Visits a class type.
	*
	* @param t the type to visit
	*/
	@:overload @:public public function visitClassType(t : com.sun.mirror.type.ClassType) : Void;
	
	/**
	* Visits an enum type.
	*
	* @param t the type to visit
	*/
	@:overload @:public public function visitEnumType(t : com.sun.mirror.type.EnumType) : Void;
	
	/**
	* Visits an interface type.
	*
	* @param t the type to visit
	*/
	@:overload @:public public function visitInterfaceType(t : com.sun.mirror.type.InterfaceType) : Void;
	
	/**
	* Visits an annotation type.
	*
	* @param t the type to visit
	*/
	@:overload @:public public function visitAnnotationType(t : com.sun.mirror.type.AnnotationType) : Void;
	
	/**
	* Visits an array type.
	*
	* @param t the type to visit
	*/
	@:overload @:public public function visitArrayType(t : com.sun.mirror.type.ArrayType) : Void;
	
	/**
	* Visits a type variable.
	*
	* @param t the type to visit
	*/
	@:overload @:public public function visitTypeVariable(t : com.sun.mirror.type.TypeVariable) : Void;
	
	/**
	* Visits a wildcard.
	*
	* @param t the type to visit
	*/
	@:overload @:public public function visitWildcardType(t : com.sun.mirror.type.WildcardType) : Void;
	
	
}
