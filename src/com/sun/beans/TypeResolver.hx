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
extern class TypeResolver
{
	/**
	* Replaces the given {@code type} in an inherited method
	* with the actual type it has in the given {@code inClass}.
	*
	* <p>Although type parameters are not inherited by subclasses in the Java
	* language, they <em>are</em> effectively inherited when using reflection.
	* For example, if you declare an interface like this...</p>
	*
	* <pre>
	* public interface StringToIntMap extends Map&lt;String,Integer> {}
	* </pre>
	*
	* <p>...then StringToIntMap.class.getMethods() will show that it has methods
	* like put(K,V) even though StringToIntMap has no type parameters.  The K
	* and V variables are the ones declared by Map, so
	* {@link TypeVariable#getGenericDeclaration()} will return Map.class.</p>
	*
	* <p>The purpose of this method is to take a Type from a possibly-inherited
	* method and replace it with the correct Type for the inheriting class.
	* So given parameters of K and StringToIntMap.class in the above example,
	* this method will return String.</p>
	*
	* @param inClass  the base class used to resolve
	* @param type     the type to resolve
	* @return a resolved type
	*
	* @see #getActualType(Class)
	* @see #resolve(Type,Type)
	*/
	@:overload @:public @:static public static function resolveInClass(inClass : Class<Dynamic>, type : java.lang.reflect.Type) : java.lang.reflect.Type;
	
	/**
	* Replaces all {@code types} in the given array
	* with the actual types they have in the given {@code inClass}.
	*
	* @param inClass  the base class used to resolve
	* @param types    the array of types to resolve
	* @return an array of resolved types
	*
	* @see #getActualType(Class)
	* @see #resolve(Type,Type[])
	*/
	@:overload @:public @:static public static function resolveInClass(inClass : Class<Dynamic>, types : java.NativeArray<java.lang.reflect.Type>) : java.NativeArray<java.lang.reflect.Type>;
	
	/**
	* Replaces type variables of the given {@code formal} type
	* with the types they stand for in the given {@code actual} type.
	*
	* <p>A ParameterizedType is a class with type parameters, and the values
	* of those parameters.  For example, Map&lt;K,V> is a generic class, and
	* a corresponding ParameterizedType might look like
	* Map&lt;K=String,V=Integer>.  Given such a ParameterizedType, this method
	* will replace K with String, or List&lt;K> with List&ltString;, or
	* List&lt;? super K> with List&lt;? super String>.</p>
	*
	* <p>The {@code actual} argument to this method can also be a Class.
	* In this case, either it is equivalent to a ParameterizedType with
	* no parameters (for example, Integer.class), or it is equivalent to
	* a "raw" ParameterizedType (for example, Map.class).  In the latter
	* case, every type parameter declared or inherited by the class is replaced
	* by its "erasure".  For a type parameter declared as &lt;T>, the erasure
	* is Object.  For a type parameter declared as &lt;T extends Number>,
	* the erasure is Number.</p>
	*
	* <p>Although type parameters are not inherited by subclasses in the Java
	* language, they <em>are</em> effectively inherited when using reflection.
	* For example, if you declare an interface like this...</p>
	*
	* <pre>
	* public interface StringToIntMap extends Map&lt;String,Integer> {}
	* </pre>
	*
	* <p>...then StringToIntMap.class.getMethods() will show that it has methods
	* like put(K,V) even though StringToIntMap has no type parameters.  The K
	* and V variables are the ones declared by Map, so
	* {@link TypeVariable#getGenericDeclaration()} will return {@link Map Map.class}.</p>
	*
	* <p>For this reason, this method replaces inherited type parameters too.
	* Therefore if this method is called with {@code actual} being
	* StringToIntMap.class and {@code formal} being the K from Map,
	* it will return {@link String String.class}.</p>
	*
	* <p>In the case where {@code actual} is a "raw" ParameterizedType, the
	* inherited type parameters will also be replaced by their erasures.
	* The erasure of a Class is the Class itself, so a "raw" subinterface of
	* StringToIntMap will still show the K from Map as String.class.  But
	* in a case like this...
	*
	* <pre>
	* public interface StringToIntListMap extends Map&lt;String,List&lt;Integer>> {}
	* public interface RawStringToIntListMap extends StringToIntListMap {}
	* </pre>
	*
	* <p>...the V inherited from Map will show up as List&lt;Integer> in
	* StringToIntListMap, but as plain List in RawStringToIntListMap.</p>
	*
	* @param actual  the type that supplies bindings for type variables
	* @param formal  the type where occurrences of the variables
	*                in {@code actual} will be replaced by the corresponding bound values
	* @return a resolved type
	*
	* @see #TypeResolver(Type)
	* @see #resolve(Type)
	*/
	@:native('resolve') @:overload @:public @:static public static function _resolve(actual : java.lang.reflect.Type, formal : java.lang.reflect.Type) : java.lang.reflect.Type;
	
	/**
	* Replaces type variables of all formal types in the given array
	* with the types they stand for in the given {@code actual} type.
	*
	* @param actual   the type that supplies bindings for type variables
	* @param formals  the array of types to resolve
	* @return an array of resolved types
	*
	* @see #TypeResolver(Type)
	* @see #resolve(Type[])
	*/
	@:native('resolve') @:overload @:public @:static public static function _resolve(actual : java.lang.reflect.Type, formals : java.NativeArray<java.lang.reflect.Type>) : java.NativeArray<java.lang.reflect.Type>;
	
	/**
	* Converts the given {@code type} to the corresponding class.
	* This method implements the concept of type erasure,
	* that is described in section 4.6 of
	* <cite>The Java&trade; Language Specification</cite>.
	*
	* @param type  the array of types to convert
	* @return a corresponding class
	*/
	@:overload @:public @:static public static function erase(type : java.lang.reflect.Type) : Class<Dynamic>;
	
	/**
	* Converts all {@code types} in the given array
	* to the corresponding classes.
	*
	* @param types  the array of types to convert
	* @return an array of corresponding classes
	*
	* @see #erase(Type)
	*/
	@:overload @:public @:static public static function erase(types : java.NativeArray<java.lang.reflect.Type>) : java.NativeArray<Class<Dynamic>>;
	
	@:overload @:public @:static public static function getTypeResolver(type : java.lang.reflect.Type) : com.sun.beans.TypeResolver;
	
	
}
