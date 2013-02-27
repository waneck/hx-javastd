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
* A simple visitor for types.
*
* <p> The implementations of the methods of this class do nothing but
* delegate up the type hierarchy.  A subclass should override the
* methods that correspond to the kinds of types on which it will
* operate.
*
* @deprecated All components of this API have been superseded by the
* standardized annotation processing API.  The replacement for the
* functionality of this class is {@link
* javax.lang.model.util.SimpleTypeVisitor6}.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @since 1.5
*/
@:require(java5) extern class SimpleTypeVisitor implements com.sun.mirror.util.TypeVisitor
{
	/**
	* Creates a new <tt>SimpleTypeVisitor</tt>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Visits a type mirror.
	* The implementation does nothing.
	* @param t the type to visit
	*/
	@:overload public function visitTypeMirror(t : com.sun.mirror.type.TypeMirror) : Void;
	
	/**
	* Visits a primitive type.
	* The implementation simply invokes
	* {@link #visitTypeMirror visitTypeMirror}.
	* @param t the type to visit
	*/
	@:overload public function visitPrimitiveType(t : com.sun.mirror.type.PrimitiveType) : Void;
	
	/**
	* Visits a void type.
	* The implementation simply invokes
	* {@link #visitTypeMirror visitTypeMirror}.
	* @param t the type to visit
	*/
	@:overload public function visitVoidType(t : com.sun.mirror.type.VoidType) : Void;
	
	/**
	* Visits a reference type.
	* The implementation simply invokes
	* {@link #visitTypeMirror visitTypeMirror}.
	* @param t the type to visit
	*/
	@:overload public function visitReferenceType(t : com.sun.mirror.type.ReferenceType) : Void;
	
	/**
	* Visits a declared type.
	* The implementation simply invokes
	* {@link #visitReferenceType visitReferenceType}.
	* @param t the type to visit
	*/
	@:overload public function visitDeclaredType(t : com.sun.mirror.type.DeclaredType) : Void;
	
	/**
	* Visits a class type.
	* The implementation simply invokes
	* {@link #visitDeclaredType visitDeclaredType}.
	* @param t the type to visit
	*/
	@:overload public function visitClassType(t : com.sun.mirror.type.ClassType) : Void;
	
	/**
	* Visits an enum type.
	* The implementation simply invokes
	* {@link #visitClassType visitClassType}.
	* @param t the type to visit
	*/
	@:overload public function visitEnumType(t : com.sun.mirror.type.EnumType) : Void;
	
	/**
	* Visits an interface type.
	* The implementation simply invokes
	* {@link #visitDeclaredType visitDeclaredType}.
	* @param t the type to visit
	*/
	@:overload public function visitInterfaceType(t : com.sun.mirror.type.InterfaceType) : Void;
	
	/**
	* Visits an annotation type.
	* The implementation simply invokes
	* {@link #visitInterfaceType visitInterfaceType}.
	* @param t the type to visit
	*/
	@:overload public function visitAnnotationType(t : com.sun.mirror.type.AnnotationType) : Void;
	
	/**
	* Visits an array type.
	* The implementation simply invokes
	* {@link #visitReferenceType visitReferenceType}.
	* @param t the type to visit
	*/
	@:overload public function visitArrayType(t : com.sun.mirror.type.ArrayType) : Void;
	
	/**
	* Visits a type variable.
	* The implementation simply invokes
	* {@link #visitReferenceType visitReferenceType}.
	* @param t the type to visit
	*/
	@:overload public function visitTypeVariable(t : com.sun.mirror.type.TypeVariable) : Void;
	
	/**
	* Visits a wildcard.
	* The implementation simply invokes
	* {@link #visitTypeMirror visitTypeMirror}.
	* @param t the type to visit
	*/
	@:overload public function visitWildcardType(t : com.sun.mirror.type.WildcardType) : Void;
	
	
}
