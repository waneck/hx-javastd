package com.sun.xml.internal.bind.v2.model.nav;
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
extern interface Navigator<T, C, F, M>
{
	/**
	* Gets the base class of the specified class.
	*
	* @return
	*      null if the parameter represents {@link Object}.
	*/
	@:overload public function getSuperClass(clazz : C) : C;
	
	/**
	* Gets the parameterization of the given base type.
	*
	* <p>
	* For example, given the following
	* <pre><xmp>
	* interface Foo<T> extends List<List<T>> {}
	* interface Bar extends Foo<String> {}
	* </xmp></pre>
	* This method works like this:
	* <pre><xmp>
	* getBaseClass( Bar, List ) = List<List<String>
	* getBaseClass( Bar, Foo  ) = Foo<String>
	* getBaseClass( Foo<? extends Number>, Collection ) = Collection<List<? extends Number>>
	* getBaseClass( ArrayList<? extends BigInteger>, List ) = List<? extends BigInteger>
	* </xmp></pre>
	*
	* @param type
	*      The type that derives from {@code baseType}
	* @param baseType
	*      The class whose parameterization we are interested in.
	* @return
	*      The use of {@code baseType} in {@code type}.
	*      or null if the type is not assignable to the base type.
	*/
	@:overload public function getBaseClass(type : T, baseType : C) : T;
	
	/**
	* Gets the fully-qualified name of the class.
	* ("java.lang.Object" for {@link Object})
	*/
	@:overload public function getClassName(clazz : C) : String;
	
	/**
	* Gets the display name of the type object
	*
	* @return
	*      a human-readable name that the type represents.
	*/
	@:overload public function getTypeName(rawType : T) : String;
	
	/**
	* Gets the short name of the class ("Object" for {@link Object}.)
	*
	* For nested classes, this method should just return the inner name.
	* (for example "Inner" for "com.acme.Outer$Inner".
	*/
	@:overload public function getClassShortName(clazz : C) : String;
	
	/**
	* Gets all the declared fields of the given class.
	*/
	@:overload public function getDeclaredFields(clazz : C) : java.util.Collection<F>;
	
	/**
	* Gets the named field declared on the given class.
	*
	* This method doesn't visit ancestors, but does recognize
	* non-public fields.
	*
	* @return
	*      null if not found
	*/
	@:overload public function getDeclaredField(clazz : C, fieldName : String) : F;
	
	/**
	* Gets all the declared methods of the given class
	* (regardless of their access modifiers, regardless
	* of whether they override methods of the base classes.)
	*
	* <p>
	* Note that this method does not list methods declared on base classes.
	*
	* @return
	*      can be empty but always non-null.
	*/
	@:overload public function getDeclaredMethods(clazz : C) : java.util.Collection<M>;
	
	/**
	* Gets the class that declares the given field.
	*/
	@:overload public function getDeclaringClassForField(field : F) : C;
	
	/**
	* Gets the class that declares the given method.
	*/
	@:overload public function getDeclaringClassForMethod(method : M) : C;
	
	/**
	* Gets the type of the field.
	*/
	@:overload public function getFieldType(f : F) : T;
	
	/**
	* Gets the name of the field.
	*/
	@:overload public function getFieldName(field : F) : String;
	
	/**
	* Gets the name of the method, such as "toString" or "equals".
	*/
	@:overload public function getMethodName(m : M) : String;
	
	/**
	* Gets the return type of a method.
	*/
	@:overload public function getReturnType(m : M) : T;
	
	/**
	* Returns the list of parameters to the method.
	*/
	@:overload public function getMethodParameters(method : M) : java.NativeArray<T>;
	
	/**
	* Returns true if the method is static.
	*/
	@:overload public function isStaticMethod(method : M) : Bool;
	
	/**
	* Checks if {@code sub} is a sub-type of {@code sup}.
	*
	* TODO: should this method take T or C?
	*/
	@:overload public function isSubClassOf(sub : T, sup : T) : Bool;
	
	/**
	* Gets the representation of the given Java type in {@code T}.
	*
	* @param c
	*      can be a primitive, array, class, or anything.
	*      (therefore the return type has to be T, not C)
	*/
	@:overload public function ref(c : Class<Dynamic>) : T;
	
	/**
	* Gets the T for the given C.
	*/
	@:overload public function use(c : C) : T;
	
	/**
	* If the given type is an use of class declaration,
	* returns the type casted as {@code C}.
	* Otherwise null.
	*
	* <p>
	* TODO: define the exact semantics.
	*/
	@:overload public function asDecl(type : T) : C;
	
	/**
	* Gets the {@code C} representation for the given class.
	*
	* The behavior is undefined if the class object represents
	* primitives, arrays, and other types that are not class declaration.
	*/
	@:overload public function asDecl(c : Class<Dynamic>) : C;
	
	/**
	* Checks if the type is an array type.
	*/
	@:overload public function isArray(t : T) : Bool;
	
	/**
	* Checks if the type is an array type but not byte[].
	*/
	@:overload public function isArrayButNotByteArray(t : T) : Bool;
	
	/**
	* Gets the component type of the array.
	*
	* @param t
	*      must be an array.
	*/
	@:overload public function getComponentType(t : T) : T;
	
	/**
	* Gets the i-th type argument from a parameterized type.
	*
	* For example, {@code getTypeArgument([Map<Integer,String>],0)=Integer}
	*
	* @throws IllegalArgumentException
	*      If t is not a parameterized type
	* @throws IndexOutOfBoundsException
	*      If i is out of range.
	*
	* @see #isParameterizedType(Object)
	*/
	@:overload public function getTypeArgument(t : T, i : Int) : T;
	
	/**
	* Returns true if t is a parameterized type.
	*/
	@:overload public function isParameterizedType(t : T) : Bool;
	
	/**
	* Checks if the given type is a primitive type.
	*/
	@:overload public function isPrimitive(t : T) : Bool;
	
	/**
	* Returns the representation for the given primitive type.
	*
	* @param primitiveType
	*      must be Class objects like {@link Integer#TYPE}.
	*/
	@:overload public function getPrimitive(primitiveType : Class<Dynamic>) : T;
	
	/**
	* Returns a location of the specified class.
	*/
	@:overload public function getClassLocation(clazz : C) : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload public function getFieldLocation(field : F) : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload public function getMethodLocation(getter : M) : com.sun.xml.internal.bind.v2.runtime.Location;
	
	/**
	* Returns true if the given class has a no-arg default constructor.
	* The constructor does not need to be public.
	*/
	@:overload public function hasDefaultConstructor(clazz : C) : Bool;
	
	/**
	* Returns true if the field is static.
	*/
	@:overload public function isStaticField(field : F) : Bool;
	
	/**
	* Returns true if the method is public.
	*/
	@:overload public function isPublicMethod(method : M) : Bool;
	
	/**
	* Returns true if the method is final.
	*/
	@:overload public function isFinalMethod(method : M) : Bool;
	
	/**
	* Returns true if the field is public.
	*/
	@:overload public function isPublicField(field : F) : Bool;
	
	/**
	* Returns true if this is an enum class.
	*/
	@:overload public function isEnum(clazz : C) : Bool;
	
	/**
	* Computes the erasure
	*/
	@:overload public function erasure<P>(contentInMemoryType : T) : T;
	
	/**
	* Returns true if this is an abstract class.
	*/
	@:overload public function isAbstract(clazz : C) : Bool;
	
	/**
	* Returns true if this is a final class.
	*/
	@:overload public function isFinal(clazz : C) : Bool;
	
	/**
	* Gets the enumeration constants from an enum class.
	*
	* @param clazz
	*      must derive from {@link Enum}.
	*
	* @return
	*      can be empty but never null.
	*/
	@:overload public function getEnumConstants(clazz : C) : java.NativeArray<F>;
	
	/**
	* Gets the representation of the primitive "void" type.
	*/
	@:overload public function getVoidType() : T;
	
	/**
	* Gets the package name of the given class.
	*
	* @return
	*      i.e. "", "java.lang" but not null.
	*/
	@:overload public function getPackageName(clazz : C) : String;
	
	/**
	* Finds the class/interface/enum/annotation of the given name.
	*
	* @param referencePoint
	*      The class that refers to the specified class.
	* @return
	*      null if not found.
	*/
	@:overload public function findClass(className : String, referencePoint : C) : C;
	
	/**
	* Returns true if this method is a bridge method as defined in JLS.
	*/
	@:overload public function isBridgeMethod(method : M) : Bool;
	
	/**
	* Returns true if the given method is overriding another one
	* defined in the base class 'base' or its ancestors.
	*/
	@:overload public function isOverriding(method : M, base : C) : Bool;
	
	/**
	* Returns true if 'clazz' is an interface.
	*/
	@:overload public function isInterface(clazz : C) : Bool;
	
	/**
	* Returns true if the field is transient.
	*/
	@:overload public function isTransient(f : F) : Bool;
	
	/**
	* Returns true if the given class is an inner class.
	*
	* This is only used to improve the error diagnostics, so
	* it's OK to fail to detect some inner classes as such.
	*
	* Note that this method should return false for nested classes
	* (static classes.)
	*/
	@:overload public function isInnerClass(clazz : C) : Bool;
	
	
}
