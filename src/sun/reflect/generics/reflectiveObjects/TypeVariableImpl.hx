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
extern class TypeVariableImpl<D> extends sun.reflect.generics.reflectiveObjects.LazyReflectiveObjectGenerator implements java.lang.reflect.TypeVariable<D>
{
	/**
	* Factory method.
	* @param decl - the reflective object that declared the type variable
	* that this method should create
	* @param name - the name of the type variable to be returned
	* @param bs - an array of ASTs representing the bounds for the type
	* variable to be created
	* @param f - a factory that can be used to manufacture reflective
	* objects that represent the bounds of this type variable
	* @return A type variable with name, bounds, declaration and factory
	* specified
	*/
	@:overload @:public @:static public static function make<T : java.lang.reflect.GenericDeclaration>(decl : T, name : String, bs : java.NativeArray<sun.reflect.generics.tree.FieldTypeSignature>, f : sun.reflect.generics.factory.GenericsFactory) : sun.reflect.generics.reflectiveObjects.TypeVariableImpl<T>;
	
	/**
	* Returns an array of <tt>Type</tt> objects representing the
	* upper bound(s) of this type variable.  Note that if no upper bound is
	* explicitly declared, the upper bound is <tt>Object</tt>.
	*
	* <p>For each upper bound B:
	* <ul>
	*  <li>if B is a parameterized type or a type variable, it is created,
	*  (see {@link #ParameterizedType} for the details of the creation
	*  process for parameterized types).
	*  <li>Otherwise, B is resolved.
	* </ul>
	*
	* @throws <tt>TypeNotPresentException</tt>  if any of the
	*     bounds refers to a non-existent type declaration
	* @throws <tt>MalformedParameterizedTypeException</tt> if any of the
	*     bounds refer to a parameterized type that cannot be instantiated
	*     for any reason
	* @return an array of Types representing the upper bound(s) of this
	*     type variable
	*/
	@:overload @:public public function getBounds() : java.NativeArray<java.lang.reflect.Type>;
	
	/**
	* Returns the <tt>GenericDeclaration</tt>  object representing the
	* generic declaration that declared this type variable.
	*
	* @return the generic declaration that declared this type variable.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function getGenericDeclaration() : D;
	
	/**
	* Returns the name of this type variable, as it occurs in the source code.
	*
	* @return the name of this type variable, as it appears in the source code
	*/
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
