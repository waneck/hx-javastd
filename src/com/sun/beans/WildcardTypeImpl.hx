package com.sun.beans;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class WildcardTypeImpl implements java.lang.reflect.WildcardType
{
	/**
	* Returns an array of {@link Type Type} objects
	* representing the upper bound(s) of this type variable.
	* Note that if no upper bound is explicitly declared,
	* the upper bound is {@link Object Object}.
	*
	* @return an array of types representing
	*         the upper bound(s) of this type variable
	*/
	@:overload @:public public function getUpperBounds() : java.NativeArray<java.lang.reflect.Type>;
	
	/**
	* Returns an array of {@link Type Type} objects
	* representing the lower bound(s) of this type variable.
	* Note that if no lower bound is explicitly declared,
	* the lower bound is the type of {@code null}.
	* In this case, a zero length array is returned.
	*
	* @return an array of types representing
	*         the lower bound(s) of this type variable
	*/
	@:overload @:public public function getLowerBounds() : java.NativeArray<java.lang.reflect.Type>;
	
	/**
	* Indicates whether some other object is "equal to" this one.
	* It is implemented compatibly with the JDK's
	* {@link sun.reflect.generics.reflectiveObjects.WildcardTypeImpl WildcardTypeImpl}.
	*
	* @param object  the reference object with which to compare
	* @return {@code true} if this object is the same as the object argument;
	*         {@code false} otherwise
	* @see sun.reflect.generics.reflectiveObjects.WildcardTypeImpl#equals
	*/
	@:overload @:public public function equals(object : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for the object.
	* It is implemented compatibly with the JDK's
	* {@link sun.reflect.generics.reflectiveObjects.WildcardTypeImpl WildcardTypeImpl}.
	*
	* @return a hash code value for this object
	* @see sun.reflect.generics.reflectiveObjects.WildcardTypeImpl#hashCode
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a string representation of the object.
	* It is implemented compatibly with the JDK's
	* {@link sun.reflect.generics.reflectiveObjects.WildcardTypeImpl WildcardTypeImpl}.
	*
	* @return a string representation of the object
	* @see sun.reflect.generics.reflectiveObjects.WildcardTypeImpl#toString
	*/
	@:overload @:public public function toString() : String;
	
	
}
