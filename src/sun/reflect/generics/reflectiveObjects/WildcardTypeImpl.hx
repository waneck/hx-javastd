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
extern class WildcardTypeImpl extends sun.reflect.generics.reflectiveObjects.LazyReflectiveObjectGenerator implements java.lang.reflect.WildcardType
{
	/**
	* Factory method.
	* @param ubs - an array of ASTs representing the upper bounds for the type
	* variable to be created
	* @param lbs - an array of ASTs representing the lower bounds for the type
	* variable to be created
	* @param f - a factory that can be used to manufacture reflective
	* objects that represent the bounds of this wildcard type
	* @return a wild card type with the requested bounds and factory
	*/
	@:overload public static function make(ubs : java.NativeArray<sun.reflect.generics.tree.FieldTypeSignature>, lbs : java.NativeArray<sun.reflect.generics.tree.FieldTypeSignature>, f : sun.reflect.generics.factory.GenericsFactory) : sun.reflect.generics.reflectiveObjects.WildcardTypeImpl;
	
	/**
	* Returns an array of <tt>Type</tt> objects representing the  upper
	* bound(s) of this type variable.  Note that if no upper bound is
	* explicitly declared, the upper bound is <tt>Object</tt>.
	*
	* <p>For each upper bound B :
	* <ul>
	*  <li>if B is a parameterized type or a type variable, it is created,
	*  (see {@link #ParameterizedType} for the details of the creation
	*  process for parameterized types).
	*  <li>Otherwise, B is resolved.
	* </ul>
	*
	* @return an array of Types representing the upper bound(s) of this
	*     type variable
	* @throws <tt>TypeNotPresentException</tt> if any of the
	*     bounds refers to a non-existent type declaration
	* @throws <tt>MalformedParameterizedTypeException</tt> if any of the
	*     bounds refer to a parameterized type that cannot be instantiated
	*     for any reason
	*/
	@:overload public function getUpperBounds() : java.NativeArray<java.lang.reflect.Type>;
	
	/**
	* Returns an array of <tt>Type</tt> objects representing the
	* lower bound(s) of this type variable.  Note that if no lower bound is
	* explicitly declared, the lower bound is the type of <tt>null</tt>.
	* In this case, a zero length array is returned.
	*
	* <p>For each lower bound B :
	* <ul>
	*   <li>if B is a parameterized type or a type variable, it is created,
	*   (see {@link #ParameterizedType} for the details of the creation
	*   process for parameterized types).
	*   <li>Otherwise, B is resolved.
	* </ul>
	*
	* @return an array of Types representing the lower bound(s) of this
	*     type variable
	* @throws <tt>TypeNotPresentException</tt> if any of the
	*     bounds refers to a non-existent type declaration
	* @throws <tt>MalformedParameterizedTypeException</tt> if any of the
	*     bounds refer to a parameterized type that cannot be instantiated
	*     for any reason
	*/
	@:overload public function getLowerBounds() : java.NativeArray<java.lang.reflect.Type>;
	
	@:overload public function toString() : String;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
