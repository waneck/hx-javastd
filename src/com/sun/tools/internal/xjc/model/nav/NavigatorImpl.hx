package com.sun.tools.internal.xjc.model.nav;
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
extern class NavigatorImpl implements com.sun.xml.internal.bind.v2.model.nav.Navigator<com.sun.tools.internal.xjc.model.nav.NType, com.sun.tools.internal.xjc.model.nav.NClass, java.lang.Void, java.lang.Void>
{
	/**
	* {@link Navigator} implementation for XJC.
	*
	* Most of the Navigator methods are used for parsing the model, which doesn't happen
	* in XJC. So Most of the methods aren't really implemented. Implementations should
	* be filled in as needed.
	*
	* @author Kohsuke Kawaguchi
	*/
	public static var theInstance(default, null) : NavigatorImpl;
	
	@:overload public function getSuperClass(nClass : com.sun.tools.internal.xjc.model.nav.NClass) : com.sun.tools.internal.xjc.model.nav.NClass;
	
	@:overload public function getBaseClass(nt : com.sun.tools.internal.xjc.model.nav.NType, base : com.sun.tools.internal.xjc.model.nav.NClass) : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public function getClassName(nClass : com.sun.tools.internal.xjc.model.nav.NClass) : String;
	
	@:overload public function getTypeName(type : com.sun.tools.internal.xjc.model.nav.NType) : String;
	
	@:overload public function getClassShortName(nClass : com.sun.tools.internal.xjc.model.nav.NClass) : String;
	
	@:overload public function getDeclaredFields(nClass : com.sun.tools.internal.xjc.model.nav.NClass) : java.util.Collection<java.lang.Void>;
	
	@:overload public function getDeclaredField(clazz : com.sun.tools.internal.xjc.model.nav.NClass, fieldName : String) : java.lang.Void;
	
	@:overload public function getDeclaredMethods(nClass : com.sun.tools.internal.xjc.model.nav.NClass) : java.util.Collection<java.lang.Void>;
	
	@:overload public function getDeclaringClassForField(aVoid : java.lang.Void) : com.sun.tools.internal.xjc.model.nav.NClass;
	
	@:overload public function getDeclaringClassForMethod(aVoid : java.lang.Void) : com.sun.tools.internal.xjc.model.nav.NClass;
	
	@:overload public function getFieldType(aVoid : java.lang.Void) : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public function getFieldName(aVoid : java.lang.Void) : String;
	
	@:overload public function getMethodName(aVoid : java.lang.Void) : String;
	
	@:overload public function getReturnType(aVoid : java.lang.Void) : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public function getMethodParameters(aVoid : java.lang.Void) : java.NativeArray<com.sun.tools.internal.xjc.model.nav.NType>;
	
	@:overload public function isStaticMethod(aVoid : java.lang.Void) : Bool;
	
	@:overload public function isFinalMethod(aVoid : java.lang.Void) : Bool;
	
	@:overload public function isSubClassOf(sub : com.sun.tools.internal.xjc.model.nav.NType, sup : com.sun.tools.internal.xjc.model.nav.NType) : Bool;
	
	@:overload public function ref(c : Class<Dynamic>) : com.sun.tools.internal.xjc.model.nav.NClass;
	
	@:overload public function ref(c : com.sun.codemodel.internal.JClass) : com.sun.tools.internal.xjc.model.nav.NClass;
	
	@:overload public function use(nc : com.sun.tools.internal.xjc.model.nav.NClass) : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public function asDecl(nt : com.sun.tools.internal.xjc.model.nav.NType) : com.sun.tools.internal.xjc.model.nav.NClass;
	
	@:overload public function asDecl(c : Class<Dynamic>) : com.sun.tools.internal.xjc.model.nav.NClass;
	
	@:overload public function isArray(nType : com.sun.tools.internal.xjc.model.nav.NType) : Bool;
	
	@:overload public function isArrayButNotByteArray(t : com.sun.tools.internal.xjc.model.nav.NType) : Bool;
	
	@:overload public function getComponentType(nType : com.sun.tools.internal.xjc.model.nav.NType) : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public function getTypeArgument(nt : com.sun.tools.internal.xjc.model.nav.NType, i : Int) : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public function isParameterizedType(nt : com.sun.tools.internal.xjc.model.nav.NType) : Bool;
	
	@:overload public function isPrimitive(type : com.sun.tools.internal.xjc.model.nav.NType) : Bool;
	
	@:overload public function getPrimitive(primitiveType : Class<Dynamic>) : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload @:final public static function create(t : java.lang.reflect.Type) : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public static function create(c : Class<Dynamic>) : com.sun.tools.internal.xjc.model.nav.NClass;
	
	/**
	* Creates a {@link NType} representation for a parameterized type
	* {@code RawType&lt;ParamType1,ParamType2,...> }.
	*/
	@:overload public static function createParameterizedType(rawType : com.sun.tools.internal.xjc.model.nav.NClass, args : java.NativeArray<com.sun.tools.internal.xjc.model.nav.NType>) : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public static function createParameterizedType(rawType : Class<Dynamic>, args : java.NativeArray<com.sun.tools.internal.xjc.model.nav.NType>) : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public function getClassLocation(c : com.sun.tools.internal.xjc.model.nav.NClass) : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload public function getFieldLocation(_ : java.lang.Void) : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload public function getMethodLocation(_ : java.lang.Void) : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload public function hasDefaultConstructor(nClass : com.sun.tools.internal.xjc.model.nav.NClass) : Bool;
	
	@:overload public function isStaticField(aVoid : java.lang.Void) : Bool;
	
	@:overload public function isPublicMethod(aVoid : java.lang.Void) : Bool;
	
	@:overload public function isPublicField(aVoid : java.lang.Void) : Bool;
	
	@:overload public function isEnum(c : com.sun.tools.internal.xjc.model.nav.NClass) : Bool;
	
	@:overload public function erasure<T>(type : com.sun.tools.internal.xjc.model.nav.NType) : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public function isAbstract(clazz : com.sun.tools.internal.xjc.model.nav.NClass) : Bool;
	
	/**
	* @deprecated
	*      no class generated by XJC is final.
	*/
	@:overload public function isFinal(clazz : com.sun.tools.internal.xjc.model.nav.NClass) : Bool;
	
	@:overload public function getEnumConstants(clazz : com.sun.tools.internal.xjc.model.nav.NClass) : java.NativeArray<java.lang.Void>;
	
	@:overload public function getVoidType() : com.sun.tools.internal.xjc.model.nav.NType;
	
	@:overload public function getPackageName(clazz : com.sun.tools.internal.xjc.model.nav.NClass) : String;
	
	@:overload public function findClass(className : String, referencePoint : com.sun.tools.internal.xjc.model.nav.NClass) : com.sun.tools.internal.xjc.model.nav.NClass;
	
	@:overload public function isBridgeMethod(method : java.lang.Void) : Bool;
	
	@:overload public function isOverriding(method : java.lang.Void, clazz : com.sun.tools.internal.xjc.model.nav.NClass) : Bool;
	
	@:overload public function isInterface(clazz : com.sun.tools.internal.xjc.model.nav.NClass) : Bool;
	
	@:overload public function isTransient(f : java.lang.Void) : Bool;
	
	@:overload public function isInnerClass(clazz : com.sun.tools.internal.xjc.model.nav.NClass) : Bool;
	
	
}
