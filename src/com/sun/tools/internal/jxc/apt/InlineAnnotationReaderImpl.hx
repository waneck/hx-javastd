package com.sun.tools.internal.jxc.apt;
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
extern class InlineAnnotationReaderImpl extends com.sun.xml.internal.bind.v2.model.annotation.AbstractInlineAnnotationReaderImpl<com.sun.mirror.type.TypeMirror, com.sun.mirror.declaration.TypeDeclaration, com.sun.mirror.declaration.FieldDeclaration, com.sun.mirror.declaration.MethodDeclaration>
{
	/** The singleton instance. */
	public static var theInstance(default, null) : com.sun.tools.internal.jxc.apt.InlineAnnotationReaderImpl;
	
	@:overload public function getClassAnnotation<A : java.lang.annotation.Annotation>(a : Class<A>, clazz : com.sun.mirror.declaration.TypeDeclaration, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload public function getFieldAnnotation<A : java.lang.annotation.Annotation>(a : Class<A>, f : com.sun.mirror.declaration.FieldDeclaration, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload public function hasFieldAnnotation(annotationType : Class<java.lang.annotation.Annotation>, f : com.sun.mirror.declaration.FieldDeclaration) : Bool;
	
	@:overload public function hasClassAnnotation(clazz : com.sun.mirror.declaration.TypeDeclaration, annotationType : Class<java.lang.annotation.Annotation>) : Bool;
	
	@:overload public function getAllFieldAnnotations(field : com.sun.mirror.declaration.FieldDeclaration, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : java.NativeArray<java.lang.annotation.Annotation>;
	
	@:overload public function getMethodAnnotation<A : java.lang.annotation.Annotation>(a : Class<A>, method : com.sun.mirror.declaration.MethodDeclaration, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload public function hasMethodAnnotation(a : Class<java.lang.annotation.Annotation>, method : com.sun.mirror.declaration.MethodDeclaration) : Bool;
	
	@:overload public function getAllMethodAnnotations(method : com.sun.mirror.declaration.MethodDeclaration, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : java.NativeArray<java.lang.annotation.Annotation>;
	
	@:overload public function getMethodParameterAnnotation<A : java.lang.annotation.Annotation>(a : Class<A>, m : com.sun.mirror.declaration.MethodDeclaration, paramIndex : Int, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload public function getPackageAnnotation<A : java.lang.annotation.Annotation>(a : Class<A>, clazz : com.sun.mirror.declaration.TypeDeclaration, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload override public function getClassValue(a : java.lang.annotation.Annotation, name : String) : com.sun.mirror.type.TypeMirror;
	
	@:overload override public function getClassArrayValue(a : java.lang.annotation.Annotation, name : String) : java.NativeArray<com.sun.mirror.type.TypeMirror>;
	
	@:overload private function fullName(m : com.sun.mirror.declaration.MethodDeclaration) : String;
	
	
}
