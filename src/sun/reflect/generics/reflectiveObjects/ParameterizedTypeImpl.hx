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
extern class ParameterizedTypeImpl implements java.lang.reflect.ParameterizedType
{
	/**
	* Static factory. Given a (generic) class, actual type arguments
	* and an owner type, creates a parameterized type.
	* This class can be instantiated with a a raw type that does not
	* represent a generic type, provided the list of actual type
	* arguments is empty.
	* If the ownerType argument is null, the declaring class of the
	* raw type is used as the owner type.
	* <p> This method throws a MalformedParameterizedTypeException
	* under the following circumstances:
	* If the number of actual type arguments (i.e., the size of the
	* array <tt>typeArgs</tt>) does not correspond to the number of
	* formal type arguments.
	* If any of the actual type arguments is not an instance of the
	* bounds on the corresponding formal.
	* @param rawType the Class representing the generic type declaration being
	* instantiated
	* @param actualTypeArguments - a (possibly empty) array of types
	* representing the actual type arguments to the parameterized type
	* @param ownerType - the enclosing type, if known.
	* @return An instance of <tt>ParameterizedType</tt>
	* @throws MalformedParameterizedTypeException - if the instantiation
	* is invalid
	*/
	@:overload public static function make(rawType : Class<Dynamic>, actualTypeArguments : java.NativeArray<java.lang.reflect.Type>, ownerType : java.lang.reflect.Type) : ParameterizedTypeImpl;
	
	/**
	* Returns an array of <tt>Type</tt> objects representing the actual type
	* arguments to this type.
	*
	* <p>Note that in some cases, the returned array be empty. This can occur
	* if this type represents a non-parameterized type nested within
	* a parameterized type.
	*
	* @return an array of <tt>Type</tt> objects representing the actual type
	*     arguments to this type
	* @throws <tt>TypeNotPresentException</tt> if any of the
	*     actual type arguments refers to a non-existent type declaration
	* @throws <tt>MalformedParameterizedTypeException</tt> if any of the
	*     actual type parameters refer to a parameterized type that cannot
	*     be instantiated for any reason
	* @since 1.5
	*/
	@:require(java5) @:overload public function getActualTypeArguments() : java.NativeArray<java.lang.reflect.Type>;
	
	/**
	* Returns the <tt>Type</tt> object representing the class or interface
	* that declared this type.
	*
	* @return the <tt>Type</tt> object representing the class or interface
	*     that declared this type
	*/
	@:overload public function getRawType() : Class<Dynamic>;
	
	/**
	* Returns a <tt>Type</tt> object representing the type that this type
	* is a member of.  For example, if this type is <tt>O<T>.I<S></tt>,
	* return a representation of <tt>O<T></tt>.
	*
	* <p>If this type is a top-level type, <tt>null</tt> is returned.
	*
	* @return a <tt>Type</tt> object representing the type that
	*     this type is a member of. If this type is a top-level type,
	*     <tt>null</tt> is returned
	* @throws <tt>TypeNotPresentException</tt> if the owner type
	*     refers to a non-existent type declaration
	* @throws <tt>MalformedParameterizedTypeException</tt> if the owner type
	*     refers to a parameterized type that cannot be instantiated
	*     for any reason
	*
	*/
	@:overload public function getOwnerType() : java.lang.reflect.Type;
	
	/*
	* From the JavaDoc for java.lang.reflect.ParameterizedType
	* "Instances of classes that implement this interface must
	* implement an equals() method that equates any two instances
	* that share the same generic type declaration and have equal
	* type parameters."
	*/
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
