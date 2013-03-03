package com.sun.xml.internal.bind.v2.model.nav;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ReflectionNavigator implements com.sun.xml.internal.bind.v2.model.nav.Navigator<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method>
{
	@:overload @:public public function getSuperClass(clazz : Class<Dynamic>) : Class<Dynamic>;
	
	@:overload @:public public function getBaseClass(t : java.lang.reflect.Type, sup : Class<Dynamic>) : java.lang.reflect.Type;
	
	@:overload @:public public function getClassName(clazz : Class<Dynamic>) : String;
	
	@:overload @:public public function getTypeName(type : java.lang.reflect.Type) : String;
	
	@:overload @:public public function getClassShortName(clazz : Class<Dynamic>) : String;
	
	@:overload @:public public function getDeclaredFields(clazz : Class<Dynamic>) : java.util.Collection<java.lang.reflect.Field>;
	
	@:overload @:public public function getDeclaredField(clazz : Class<Dynamic>, fieldName : String) : java.lang.reflect.Field;
	
	@:overload @:public public function getDeclaredMethods(clazz : Class<Dynamic>) : java.util.Collection<java.lang.reflect.Method>;
	
	@:overload @:public public function getDeclaringClassForField(field : java.lang.reflect.Field) : Class<Dynamic>;
	
	@:overload @:public public function getDeclaringClassForMethod(method : java.lang.reflect.Method) : Class<Dynamic>;
	
	@:overload @:public public function getFieldType(field : java.lang.reflect.Field) : java.lang.reflect.Type;
	
	@:overload @:public public function getFieldName(field : java.lang.reflect.Field) : String;
	
	@:overload @:public public function getMethodName(method : java.lang.reflect.Method) : String;
	
	@:overload @:public public function getReturnType(method : java.lang.reflect.Method) : java.lang.reflect.Type;
	
	@:overload @:public public function getMethodParameters(method : java.lang.reflect.Method) : java.NativeArray<java.lang.reflect.Type>;
	
	@:overload @:public public function isStaticMethod(method : java.lang.reflect.Method) : Bool;
	
	@:overload @:public public function isFinalMethod(method : java.lang.reflect.Method) : Bool;
	
	@:overload @:public public function isSubClassOf(sub : java.lang.reflect.Type, sup : java.lang.reflect.Type) : Bool;
	
	@:overload @:public public function ref(c : Class<Dynamic>) : Class<Dynamic>;
	
	@:overload @:public public function use(c : Class<Dynamic>) : Class<Dynamic>;
	
	@:overload @:public public function asDecl(t : java.lang.reflect.Type) : Class<Dynamic>;
	
	@:overload @:public public function asDecl(c : Class<Dynamic>) : Class<Dynamic>;
	
	/**
	* Returns the runtime representation of the given type.
	*
	* This corresponds to the notion of the erasure in JSR-14.
	*
	* <p>
	* Because of the difference in the way APT and the Java reflection
	* treats primitive type and array type, we can't define this method
	* on {@link Navigator}.
	*
	* <p>
	* It made me realize how difficult it is to define the common navigation
	* layer for two different underlying reflection library. The other way
	* is to throw away the entire parameterization and go to the wrapper approach.
	*/
	@:overload @:public public function erasure<T>(t : java.lang.reflect.Type) : Class<T>;
	
	@:overload @:public public function isAbstract(clazz : Class<Dynamic>) : Bool;
	
	@:overload @:public public function isFinal(clazz : Class<Dynamic>) : Bool;
	
	/**
	* Returns the {@link Type} object that represents {@code clazz&lt;T1,T2,T3>}.
	*/
	@:overload @:public public function createParameterizedType(rawType : Class<Dynamic>, arguments : java.NativeArray<java.lang.reflect.Type>) : java.lang.reflect.Type;
	
	@:overload @:public public function isArray(t : java.lang.reflect.Type) : Bool;
	
	@:overload @:public public function isArrayButNotByteArray(t : java.lang.reflect.Type) : Bool;
	
	@:overload @:public public function getComponentType(t : java.lang.reflect.Type) : java.lang.reflect.Type;
	
	@:overload @:public public function getTypeArgument(type : java.lang.reflect.Type, i : Int) : java.lang.reflect.Type;
	
	@:overload @:public public function isParameterizedType(type : java.lang.reflect.Type) : Bool;
	
	@:overload @:public public function isPrimitive(type : java.lang.reflect.Type) : Bool;
	
	@:overload @:public public function getPrimitive(primitiveType : Class<Dynamic>) : java.lang.reflect.Type;
	
	@:overload @:public public function getClassLocation(clazz : Class<Dynamic>) : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload @:public public function getFieldLocation(field : java.lang.reflect.Field) : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload @:public public function getMethodLocation(method : java.lang.reflect.Method) : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload @:public public function hasDefaultConstructor(c : Class<Dynamic>) : Bool;
	
	@:overload @:public public function isStaticField(field : java.lang.reflect.Field) : Bool;
	
	@:overload @:public public function isPublicMethod(method : java.lang.reflect.Method) : Bool;
	
	@:overload @:public public function isPublicField(field : java.lang.reflect.Field) : Bool;
	
	@:overload @:public public function isEnum(c : Class<Dynamic>) : Bool;
	
	@:overload @:public public function getEnumConstants(clazz : Class<Dynamic>) : java.NativeArray<java.lang.reflect.Field>;
	
	@:overload @:public public function getVoidType() : java.lang.reflect.Type;
	
	@:overload @:public public function getPackageName(clazz : Class<Dynamic>) : String;
	
	@:overload @:public public function findClass(className : String, referencePoint : Class<Dynamic>) : Class<Dynamic>;
	
	@:overload @:public public function isBridgeMethod(method : java.lang.reflect.Method) : Bool;
	
	@:overload @:public public function isOverriding(method : java.lang.reflect.Method, base : Class<Dynamic>) : Bool;
	
	@:overload @:public public function isInterface(clazz : Class<Dynamic>) : Bool;
	
	@:overload @:public public function isTransient(f : java.lang.reflect.Field) : Bool;
	
	@:overload @:public public function isInnerClass(clazz : Class<Dynamic>) : Bool;
	
	
}
@:native('com$sun$xml$internal$bind$v2$model$nav$ReflectionNavigator$BinderArg') @:internal extern class ReflectionNavigator_BinderArg
{
	@:overload @:public public function new(decl : java.lang.reflect.GenericDeclaration, args : java.NativeArray<java.lang.reflect.Type>) : Void;
	
	
}
