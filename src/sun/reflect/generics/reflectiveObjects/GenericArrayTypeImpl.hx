package sun.reflect.generics.reflectiveObjects;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class GenericArrayTypeImpl implements java.lang.reflect.GenericArrayType
{
	/**
	* Factory method.
	* @param ct - the desired component type of the generic array type
	* being created
	* @return a generic array type with the desired component type
	*/
	@:overload public static function make(ct : java.lang.reflect.Type) : GenericArrayTypeImpl;
	
	/**
	* Returns  a <tt>Type</tt> object representing the component type
	* of this array.
	*
	* @return  a <tt>Type</tt> object representing the component type
	*     of this array
	* @since 1.5
	*/
	@:require(java5) @:overload public function getGenericComponentType() : java.lang.reflect.Type;
	
	@:overload public function toString() : String;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}