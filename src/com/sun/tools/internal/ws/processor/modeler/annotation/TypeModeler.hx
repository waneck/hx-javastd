package com.sun.tools.internal.ws.processor.modeler.annotation;
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
/**
*
* @author WS Development Team
*/
extern class TypeModeler implements com.sun.tools.internal.ws.processor.modeler.annotation.WebServiceConstants
{
	@:overload public static function getDeclaration(typeMirror : com.sun.mirror.type.TypeMirror) : com.sun.mirror.declaration.TypeDeclaration;
	
	@:overload public static function getDeclaringClassMethod(theClass : com.sun.mirror.type.TypeMirror, methodName : String, args : java.NativeArray<com.sun.mirror.type.TypeMirror>) : com.sun.mirror.declaration.TypeDeclaration;
	
	@:overload public static function getDeclaringClassMethod(theClass : com.sun.mirror.declaration.TypeDeclaration, methodName : String, args : java.NativeArray<com.sun.mirror.type.TypeMirror>) : com.sun.mirror.declaration.TypeDeclaration;
	
	@:overload public static function collectInterfaces(type : com.sun.mirror.declaration.TypeDeclaration) : java.util.Collection<com.sun.mirror.type.InterfaceType>;
	
	@:overload public static function isSubclass(subTypeName : String, superTypeName : String, env : com.sun.mirror.apt.AnnotationProcessorEnvironment) : Bool;
	
	@:overload public static function isSubclass(subType : com.sun.mirror.declaration.TypeDeclaration, superType : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload public static function getHolderValueType(type : com.sun.mirror.type.TypeMirror, defHolder : com.sun.mirror.declaration.TypeDeclaration) : com.sun.mirror.type.TypeMirror;
	
	@:overload public static function getValueMember(classType : com.sun.mirror.type.TypeMirror) : com.sun.mirror.declaration.FieldDeclaration;
	
	@:overload public static function getValueMember(type : com.sun.mirror.declaration.TypeDeclaration) : com.sun.mirror.declaration.FieldDeclaration;
	
	/* is d1 a subtype of d2 */
	@:overload public static function isSubtype(d1 : com.sun.mirror.declaration.TypeDeclaration, d2 : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	
}
