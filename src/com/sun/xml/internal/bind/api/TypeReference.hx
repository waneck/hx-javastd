package com.sun.xml.internal.bind.api;
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
extern class TypeReference
{
	/**
	* The associated XML element name that the JAX-RPC uses with this type reference.
	*
	* Always non-null. Strings are interned.
	*/
	@:public @:final public var tagName(default, null) : javax.xml.namespace.QName;
	
	/**
	* The Java type that's being referenced.
	*
	* Always non-null.
	*/
	@:public @:final public var type(default, null) : java.lang.reflect.Type;
	
	/**
	* The annotations associated with the reference of this type.
	*
	* Always non-null.
	*/
	@:public @:final public var annotations(default, null) : java.NativeArray<java.lang.annotation.Annotation>;
	
	@:overload @:public public function new(tagName : javax.xml.namespace.QName, type : java.lang.reflect.Type, annotations : java.NativeArray<java.lang.annotation.Annotation>) : Void;
	
	/**
	* Finds the specified annotation from the array and returns it.
	* Null if not found.
	*/
	@:overload @:public public function get<A : java.lang.annotation.Annotation>(annotationType : Class<A>) : A;
	
	/**
	* Creates a {@link TypeReference} for the item type,
	* if this {@link TypeReference} represents a collection type.
	* Otherwise returns an identical type.
	*/
	@:overload @:public public function toItemType() : com.sun.xml.internal.bind.api.TypeReference;
	
	
}
