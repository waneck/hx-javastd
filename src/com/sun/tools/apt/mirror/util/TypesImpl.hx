package com.sun.tools.apt.mirror.util;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class TypesImpl implements com.sun.mirror.util.Types
{
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.mirror.util.Types;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function isSubtype(t1 : com.sun.mirror.type.TypeMirror, t2 : com.sun.mirror.type.TypeMirror) : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function isAssignable(t1 : com.sun.mirror.type.TypeMirror, t2 : com.sun.mirror.type.TypeMirror) : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getErasure(t : com.sun.mirror.type.TypeMirror) : com.sun.mirror.type.TypeMirror;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getPrimitiveType(kind : com.sun.mirror.type.PrimitiveType.PrimitiveType_Kind) : com.sun.mirror.type.PrimitiveType;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getVoidType() : com.sun.mirror.type.VoidType;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getArrayType(componentType : com.sun.mirror.type.TypeMirror) : com.sun.mirror.type.ArrayType;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getTypeVariable(tparam : com.sun.mirror.declaration.TypeParameterDeclaration) : com.sun.mirror.type.TypeVariable;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getWildcardType(upperBounds : java.util.Collection<com.sun.mirror.type.ReferenceType>, lowerBounds : java.util.Collection<com.sun.mirror.type.ReferenceType>) : com.sun.mirror.type.WildcardType;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getDeclaredType(decl : com.sun.mirror.declaration.TypeDeclaration, typeArgs : java.NativeArray<com.sun.mirror.type.TypeMirror>) : com.sun.mirror.type.DeclaredType;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getDeclaredType(containing : com.sun.mirror.type.DeclaredType, decl : com.sun.mirror.declaration.TypeDeclaration, typeArgs : java.NativeArray<com.sun.mirror.type.TypeMirror>) : com.sun.mirror.type.DeclaredType;
	
	
}
