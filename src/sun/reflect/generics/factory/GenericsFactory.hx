package sun.reflect.generics.factory;
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
extern interface GenericsFactory
{
	/**
	* Returns a new type variable declaration. Note that <tt>name</tt>
	* may be empty (but not <tt>null</tt>). If <tt>bounds</tt> is
	* empty, a bound of <tt>java.lang.Object</tt> is used.
	* @param name The name of the type variable
	* @param bounds An array of abstract syntax trees representing
	* the upper bound(s) on the type variable being declared
	* @return a new type variable declaration
	* @throws NullPointerException - if any of the actual parameters
	* or any of the elements of <tt>bounds</tt> are <tt>null</tt>.
	*/
	@:overload public function makeTypeVariable(name : String, bounds : java.NativeArray<sun.reflect.generics.tree.FieldTypeSignature>) : java.lang.reflect.TypeVariable<Dynamic>;
	
	/**
	* Return an instance of the <tt>ParameterizedType</tt> interface
	* that corresponds to a generic type instantiation of the
	* generic declaration <tt>declaration</tt> with actual type arguments
	* <tt>typeArgs</tt>.
	* If <tt>owner</tt> is <tt>null</tt>, the declaring class of
	* <tt>declaration</tt> is used as the owner of this parameterized
	* type.
	* <p> This method throws a MalformedParameterizedTypeException
	* under the following circumstances:
	* If the type declaration does not represent a generic declaration
	* (i.e., it is not an instance of <tt>GenericDeclaration</tt>).
	* If the number of actual type arguments (i.e., the size of the
	* array <tt>typeArgs</tt>) does not correspond to the number of
	* formal type arguments.
	* If any of the actual type arguments is not an instance of the
	* bounds on the corresponding formal.
	* @param declaration - the generic type declaration that is to be
	* instantiated
	* @param typeArgs - the list of actual type arguments
	* @return - a parameterized type representing the instantiation
	* of the declaration with the actual type arguments
	* @throws MalformedParameterizedTypeException - if the instantiation
	* is invalid
	* @throws NullPointerException - if any of <tt>declaration</tt>
	* , <tt>typeArgs</tt>
	* or any of the elements of <tt>typeArgs</tt> are <tt>null</tt>
	*/
	@:overload public function makeParameterizedType(declaration : java.lang.reflect.Type, typeArgs : java.NativeArray<java.lang.reflect.Type>, owner : java.lang.reflect.Type) : java.lang.reflect.ParameterizedType;
	
	/**
	* Returns the type variable with name <tt>name</tt>, if such
	* a type variable is declared in the
	* scope used to create this factory.
	* Returns <tt>null</tt> otherwise.
	* @param name - the name of the type variable to search for
	* @return - the type variable with name <tt>name</tt>, or <tt>null</tt>
	* @throws  NullPointerException - if any of actual parameters are
	* <tt>null</tt>
	*/
	@:overload public function findTypeVariable(name : String) : java.lang.reflect.TypeVariable<Dynamic>;
	
	/**
	* Returns a new wildcard type variable. If
	* <tt>ubs</tt> is empty, a bound of <tt>java.lang.Object</tt> is used.
	* @param ubs An array of abstract syntax trees representing
	* the upper bound(s) on the type variable being declared
	* @param lbs An array of abstract syntax trees representing
	* the lower bound(s) on the type variable being declared
	* @return a new wildcard type variable
	* @throws NullPointerException - if any of the actual parameters
	* or any of the elements of <tt>ubs</tt> or <tt>lbs</tt>are
	* <tt>null</tt>
	*/
	@:overload public function makeWildcard(ubs : java.NativeArray<sun.reflect.generics.tree.FieldTypeSignature>, lbs : java.NativeArray<sun.reflect.generics.tree.FieldTypeSignature>) : java.lang.reflect.WildcardType;
	
	@:overload public function makeNamedType(name : String) : java.lang.reflect.Type;
	
	/**
	* Returns a (possibly generic) array type.
	* If the component type is a parameterized type, it must
	* only have unbounded wildcard arguemnts, otherwise
	* a MalformedParameterizedTypeException is thrown.
	* @param componentType - the component type of the array
	* @return a (possibly generic) array type.
	* @throws MalformedParameterizedTypeException if <tt>componentType</tt>
	* is a parameterized type with non-wildcard type arguments
	* @throws NullPointerException - if any of the actual parameters
	* are <tt>null</tt>
	*/
	@:overload public function makeArrayType(componentType : java.lang.reflect.Type) : java.lang.reflect.Type;
	
	/**
	* Returns the reflective representation of type <tt>byte</tt>.
	* @return the reflective representation of type <tt>byte</tt>.
	*/
	@:overload public function makeByte() : java.lang.reflect.Type;
	
	/**
	* Returns the reflective representation of type <tt>boolean</tt>.
	* @return the reflective representation of type <tt>boolean</tt>.
	*/
	@:overload public function makeBool() : java.lang.reflect.Type;
	
	/**
	* Returns the reflective representation of type <tt>short</tt>.
	* @return the reflective representation of type <tt>short</tt>.
	*/
	@:overload public function makeShort() : java.lang.reflect.Type;
	
	/**
	* Returns the reflective representation of type <tt>char</tt>.
	* @return the reflective representation of type <tt>char</tt>.
	*/
	@:overload public function makeChar() : java.lang.reflect.Type;
	
	/**
	* Returns the reflective representation of type <tt>int</tt>.
	* @return the reflective representation of type <tt>int</tt>.
	*/
	@:overload public function makeInt() : java.lang.reflect.Type;
	
	/**
	* Returns the reflective representation of type <tt>long</tt>.
	* @return the reflective representation of type <tt>long</tt>.
	*/
	@:overload public function makeLong() : java.lang.reflect.Type;
	
	/**
	* Returns the reflective representation of type <tt>float</tt>.
	* @return the reflective representation of type <tt>float</tt>.
	*/
	@:overload public function makeFloat() : java.lang.reflect.Type;
	
	/**
	* Returns the reflective representation of type <tt>double</tt>.
	* @return the reflective representation of type <tt>double</tt>.
	*/
	@:overload public function makeDouble() : java.lang.reflect.Type;
	
	/**
	* Returns the reflective representation of <tt>void</tt>.
	* @return the reflective representation of <tt>void</tt>.
	*/
	@:overload public function makeVoid() : java.lang.reflect.Type;
	
	
}
