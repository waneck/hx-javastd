package com.sun.tools.javac.model;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own
* risk.  This code and its internal interfaces are subject to change
* or deletion without notice.</b></p>
*/
extern class JavacTypes implements javax.lang.model.util.Types
{
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.model.JavacTypes;
	
	/**
	* Public for use only by JavacProcessingEnvironment
	*/
	@:overload private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/**
	* Use a new context.  May be called from outside to update
	* internal state for a new annotation-processing round.
	*/
	@:overload public function setContext(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload public function asElement(t : javax.lang.model.type.TypeMirror) : javax.lang.model.element.Element;
	
	@:overload public function isSameType(t1 : javax.lang.model.type.TypeMirror, t2 : javax.lang.model.type.TypeMirror) : Bool;
	
	@:overload public function isSubtype(t1 : javax.lang.model.type.TypeMirror, t2 : javax.lang.model.type.TypeMirror) : Bool;
	
	@:overload public function isAssignable(t1 : javax.lang.model.type.TypeMirror, t2 : javax.lang.model.type.TypeMirror) : Bool;
	
	@:overload public function contains(t1 : javax.lang.model.type.TypeMirror, t2 : javax.lang.model.type.TypeMirror) : Bool;
	
	@:overload public function isSubsignature(m1 : javax.lang.model.type.ExecutableType, m2 : javax.lang.model.type.ExecutableType) : Bool;
	
	@:overload public function directSupertypes(t : javax.lang.model.type.TypeMirror) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Type>;
	
	@:overload public function erasure(t : javax.lang.model.type.TypeMirror) : javax.lang.model.type.TypeMirror;
	
	@:overload public function boxedClass(p : javax.lang.model.type.PrimitiveType) : javax.lang.model.element.TypeElement;
	
	@:overload public function unboxedType(t : javax.lang.model.type.TypeMirror) : javax.lang.model.type.PrimitiveType;
	
	@:overload public function capture(t : javax.lang.model.type.TypeMirror) : javax.lang.model.type.TypeMirror;
	
	@:overload public function getPrimitiveType(kind : javax.lang.model.type.TypeKind) : javax.lang.model.type.PrimitiveType;
	
	@:overload public function getNullType() : javax.lang.model.type.NullType;
	
	@:overload public function getNoType(kind : javax.lang.model.type.TypeKind) : javax.lang.model.type.NoType;
	
	@:overload public function getArrayType(componentType : javax.lang.model.type.TypeMirror) : javax.lang.model.type.ArrayType;
	
	@:overload public function getWildcardType(extendsBound : javax.lang.model.type.TypeMirror, superBound : javax.lang.model.type.TypeMirror) : javax.lang.model.type.WildcardType;
	
	@:overload public function getDeclaredType(typeElem : javax.lang.model.element.TypeElement, typeArgs : java.NativeArray<javax.lang.model.type.TypeMirror>) : javax.lang.model.type.DeclaredType;
	
	@:overload public function getDeclaredType(enclosing : javax.lang.model.type.DeclaredType, typeElem : javax.lang.model.element.TypeElement, typeArgs : java.NativeArray<javax.lang.model.type.TypeMirror>) : javax.lang.model.type.DeclaredType;
	
	/**
	* Returns the type of an element when that element is viewed as
	* a member of, or otherwise directly contained by, a given type.
	* For example,
	* when viewed as a member of the parameterized type {@code Set<String>},
	* the {@code Set.add} method is an {@code ExecutableType}
	* whose parameter is of type {@code String}.
	*
	* @param containing  the containing type
	* @param element     the element
	* @return the type of the element as viewed from the containing type
	* @throws IllegalArgumentException if the element is not a valid one
	*          for the given type
	*/
	@:overload public function asMemberOf(containing : javax.lang.model.type.DeclaredType, element : javax.lang.model.element.Element) : javax.lang.model.type.TypeMirror;
	
	
}
