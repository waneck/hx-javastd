package com.sun.tools.internal.jxc.model.nav;
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
extern class APTNavigator implements com.sun.xml.internal.bind.v2.model.nav.Navigator<com.sun.mirror.type.TypeMirror, com.sun.mirror.declaration.TypeDeclaration, com.sun.mirror.declaration.FieldDeclaration, com.sun.mirror.declaration.MethodDeclaration>
{
	@:overload @:public public function new(env : com.sun.mirror.apt.AnnotationProcessorEnvironment) : Void;
	
	@:overload @:public public function getSuperClass(t : com.sun.mirror.declaration.TypeDeclaration) : com.sun.mirror.declaration.TypeDeclaration;
	
	@:overload @:public public function getBaseClass(type : com.sun.mirror.type.TypeMirror, sup : com.sun.mirror.declaration.TypeDeclaration) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:public public function getClassName(t : com.sun.mirror.declaration.TypeDeclaration) : String;
	
	@:overload @:public public function getTypeName(typeMirror : com.sun.mirror.type.TypeMirror) : String;
	
	@:overload @:public public function getClassShortName(t : com.sun.mirror.declaration.TypeDeclaration) : String;
	
	@:overload @:public public function getDeclaredFields(c : com.sun.mirror.declaration.TypeDeclaration) : java.util.Collection<com.sun.mirror.declaration.FieldDeclaration>;
	
	@:overload @:public public function getDeclaredField(clazz : com.sun.mirror.declaration.TypeDeclaration, fieldName : String) : com.sun.mirror.declaration.FieldDeclaration;
	
	@:overload @:public public function getDeclaredMethods(c : com.sun.mirror.declaration.TypeDeclaration) : java.util.Collection<com.sun.mirror.declaration.MethodDeclaration>;
	
	@:overload @:public public function getDeclaringClassForField(f : com.sun.mirror.declaration.FieldDeclaration) : com.sun.mirror.declaration.ClassDeclaration;
	
	@:overload @:public public function getDeclaringClassForMethod(m : com.sun.mirror.declaration.MethodDeclaration) : com.sun.mirror.declaration.ClassDeclaration;
	
	@:overload @:public public function getFieldType(f : com.sun.mirror.declaration.FieldDeclaration) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:public public function getFieldName(f : com.sun.mirror.declaration.FieldDeclaration) : String;
	
	@:overload @:public public function getMethodName(m : com.sun.mirror.declaration.MethodDeclaration) : String;
	
	@:overload @:public public function getReturnType(m : com.sun.mirror.declaration.MethodDeclaration) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:public public function getMethodParameters(m : com.sun.mirror.declaration.MethodDeclaration) : java.NativeArray<com.sun.mirror.type.TypeMirror>;
	
	@:overload @:public public function isStaticMethod(m : com.sun.mirror.declaration.MethodDeclaration) : Bool;
	
	@:overload @:public public function isFinalMethod(m : com.sun.mirror.declaration.MethodDeclaration) : Bool;
	
	@:overload @:public public function isSubClassOf(sub : com.sun.mirror.type.TypeMirror, sup : com.sun.mirror.type.TypeMirror) : Bool;
	
	@:overload @:public public function ref(c : Class<Dynamic>) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:public public function use(t : com.sun.mirror.declaration.TypeDeclaration) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:public public function asDecl(m : com.sun.mirror.type.TypeMirror) : com.sun.mirror.declaration.TypeDeclaration;
	
	@:overload @:public public function asDecl(c : Class<Dynamic>) : com.sun.mirror.declaration.TypeDeclaration;
	
	@:overload @:public public function erasure<T>(t : com.sun.mirror.type.TypeMirror) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:public public function isAbstract(clazz : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public public function isFinal(clazz : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public public function getEnumConstants(clazz : com.sun.mirror.declaration.TypeDeclaration) : java.NativeArray<com.sun.mirror.declaration.FieldDeclaration>;
	
	@:overload @:public public function getVoidType() : com.sun.mirror.type.TypeMirror;
	
	@:overload @:public public function getPackageName(clazz : com.sun.mirror.declaration.TypeDeclaration) : String;
	
	@:overload @:public public function findClass(className : String, referencePoint : com.sun.mirror.declaration.TypeDeclaration) : com.sun.mirror.declaration.TypeDeclaration;
	
	@:overload @:public public function isBridgeMethod(method : com.sun.mirror.declaration.MethodDeclaration) : Bool;
	
	@:overload @:public public function isOverriding(method : com.sun.mirror.declaration.MethodDeclaration, base : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public public function isInterface(clazz : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public public function isTransient(f : com.sun.mirror.declaration.FieldDeclaration) : Bool;
	
	@:overload @:public public function isInnerClass(clazz : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public public function isArray(t : com.sun.mirror.type.TypeMirror) : Bool;
	
	@:overload @:public public function isArrayButNotByteArray(t : com.sun.mirror.type.TypeMirror) : Bool;
	
	@:overload @:public public function getComponentType(t : com.sun.mirror.type.TypeMirror) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:public public function getTypeArgument(typeMirror : com.sun.mirror.type.TypeMirror, i : Int) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:public public function isParameterizedType(t : com.sun.mirror.type.TypeMirror) : Bool;
	
	@:overload @:public public function isPrimitive(t : com.sun.mirror.type.TypeMirror) : Bool;
	
	@:overload @:public public function getPrimitive(primitiveType : Class<Dynamic>) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:public public function getClassLocation(decl : com.sun.mirror.declaration.TypeDeclaration) : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload @:public public function getFieldLocation(decl : com.sun.mirror.declaration.FieldDeclaration) : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload @:public public function getMethodLocation(decl : com.sun.mirror.declaration.MethodDeclaration) : com.sun.xml.internal.bind.v2.runtime.Location;
	
	@:overload @:public public function hasDefaultConstructor(t : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public public function isStaticField(f : com.sun.mirror.declaration.FieldDeclaration) : Bool;
	
	@:overload @:public public function isPublicMethod(m : com.sun.mirror.declaration.MethodDeclaration) : Bool;
	
	@:overload @:public public function isPublicField(f : com.sun.mirror.declaration.FieldDeclaration) : Bool;
	
	@:overload @:public public function isEnum(t : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	
}
