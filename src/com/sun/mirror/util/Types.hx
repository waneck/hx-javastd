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
* Utility methods for operating on types.
*
* @deprecated All components of this API have been superseded by the
* standardized annotation processing API.  The replacement for the
* functionality of this interface is {@link
* javax.lang.model.util.Types}.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @since 1.5
*/
@:require(java5) extern interface Types
{
	/**
	* Tests whether one type is a subtype of the another.
	* Any type is considered to be a subtype of itself.
	*
	* @param t1  the first type
	* @param t2  the second type
	* @return <tt>true</tt> if and only if the first type is a subtype
	*          of the second
	*/
	@:overload public function isSubtype(t1 : com.sun.mirror.type.TypeMirror, t2 : com.sun.mirror.type.TypeMirror) : Bool;
	
	/**
	* Tests whether one type is assignable to another.
	*
	* @param t1  the first type
	* @param t2  the second type
	* @return <tt>true</tt> if and only if the first type is assignable
	*          to the second
	*/
	@:overload public function isAssignable(t1 : com.sun.mirror.type.TypeMirror, t2 : com.sun.mirror.type.TypeMirror) : Bool;
	
	/**
	* Returns the erasure of a type.
	*
	* @param t  the type to be erased
	* @return the erasure of the given type
	*/
	@:overload public function getErasure(t : com.sun.mirror.type.TypeMirror) : com.sun.mirror.type.TypeMirror;
	
	/**
	* Returns a primitive type.
	*
	* @param kind  the kind of primitive type to return
	* @return a primitive type
	*/
	@:overload public function getPrimitiveType(kind : com.sun.mirror.type.PrimitiveType.PrimitiveType_Kind) : com.sun.mirror.type.PrimitiveType;
	
	/**
	* Returns the pseudo-type representing the type of <tt>void</tt>.
	*
	* @return the pseudo-type representing the type of <tt>void</tt>
	*/
	@:overload public function getVoidType() : com.sun.mirror.type.VoidType;
	
	/**
	* Returns an array type with the specified component type.
	*
	* @param componentType  the component type
	* @return an array type with the specified component type.
	* @throws IllegalArgumentException if the component type is not valid for
	*          an array
	*/
	@:overload public function getArrayType(componentType : com.sun.mirror.type.TypeMirror) : com.sun.mirror.type.ArrayType;
	
	/**
	* Returns the type variable declared by a type parameter.
	*
	* @param tparam  the type parameter
	* @return the type variable declared by the type parameter
	*/
	@:overload public function getTypeVariable(tparam : com.sun.mirror.declaration.TypeParameterDeclaration) : com.sun.mirror.type.TypeVariable;
	
	/**
	* Returns a new wildcard.
	* Either the wildcards's upper bounds or lower bounds may be
	* specified, or neither, but not both.
	*
	* @param upperBounds  the upper bounds of this wildcard,
	*          or an empty collection if none
	* @param lowerBounds  the lower bounds of this wildcard,
	*          or an empty collection if none
	* @return a new wildcard
	* @throws IllegalArgumentException if bounds are not valid
	*/
	@:overload public function getWildcardType(upperBounds : java.util.Collection<com.sun.mirror.type.ReferenceType>, lowerBounds : java.util.Collection<com.sun.mirror.type.ReferenceType>) : com.sun.mirror.type.WildcardType;
	
	/**
	* Returns the type corresponding to a type declaration and
	* actual type arguments.
	* Given the declaration for <tt>String</tt>, for example, this
	* method may be used to get the <tt>String</tt> type.  It may
	* then be invoked a second time, with the declaration for <tt>Set</tt>,
	* to make the parameterized type {@code Set<String>}.
	*
	* <p> The number of type arguments must either equal the
	* number of the declaration's formal type parameters, or must be
	* zero.  If zero, and if the declaration is generic,
	* then the declaration's raw type is returned.
	*
	* <p> If a parameterized type is being returned, its declaration
	* must not be contained within a generic outer class.
	* The parameterized type {@code Outer<String>.Inner<Number>},
	* for example, may be constructed by first using this
	* method to get the type {@code Outer<String>}, and then invoking
	* {@link #getDeclaredType(DeclaredType, TypeDeclaration, TypeMirror...)}.
	*
	* @param decl      the type declaration
	* @param typeArgs  the actual type arguments
	* @return the type corresponding to the type declaration and
	*          actual type arguments
	* @throws IllegalArgumentException if too many or too few
	*          type arguments are given, or if an inappropriate type
	*          argument or declaration is provided
	*/
	@:overload public function getDeclaredType(decl : com.sun.mirror.declaration.TypeDeclaration, typeArgs : java.NativeArray<com.sun.mirror.type.TypeMirror>) : com.sun.mirror.type.DeclaredType;
	
	/**
	* Returns the type corresponding to a type declaration
	* and actual arguments, given a
	* {@linkplain DeclaredType#getContainingType() containing type}
	* of which it is a member.
	* The parameterized type {@code Outer<String>.Inner<Number>},
	* for example, may be constructed by first using
	* {@link #getDeclaredType(TypeDeclaration, TypeMirror...)}
	* to get the type {@code Outer<String>}, and then invoking
	* this method.
	*
	* <p> If the containing type is a parameterized type,
	* the number of type arguments must equal the
	* number of the declaration's formal type parameters.
	* If it is not parameterized or if it is <tt>null</tt>, this method is
	* equivalent to <tt>getDeclaredType(decl, typeArgs)</tt>.
	*
	* @param containing  the containing type, or <tt>null</tt> if none
	* @param decl        the type declaration
	* @param typeArgs    the actual type arguments
	* @return the type corresponding to the type declaration and
	*          actual type arguments,
	*          contained within the given type
	* @throws IllegalArgumentException if too many or too few
	*          type arguments are given, or if an inappropriate type
	*          argument, declaration, or containing type is provided
	*/
	@:overload public function getDeclaredType(containing : com.sun.mirror.type.DeclaredType, decl : com.sun.mirror.declaration.TypeDeclaration, typeArgs : java.NativeArray<com.sun.mirror.type.TypeMirror>) : com.sun.mirror.type.DeclaredType;
	
	
}
