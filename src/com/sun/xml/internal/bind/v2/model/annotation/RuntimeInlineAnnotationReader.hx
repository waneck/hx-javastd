package com.sun.xml.internal.bind.v2.model.annotation;
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
extern class RuntimeInlineAnnotationReader extends com.sun.xml.internal.bind.v2.model.annotation.AbstractInlineAnnotationReaderImpl<java.lang.reflect.Type, Class<Dynamic>, java.lang.reflect.Field, java.lang.reflect.Method> implements com.sun.xml.internal.bind.v2.model.annotation.RuntimeAnnotationReader
{
	/**
	* {@link AnnotationReader} that uses {@code java.lang.reflect} to
	* read annotations from class files.
	*
	* @author Kohsuke Kawaguchi (kk@kohsuke.org)
	*/
	@:overload @:public public function getFieldAnnotation<A : java.lang.annotation.Annotation>(annotation : Class<A>, field : java.lang.reflect.Field, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload @:public public function hasFieldAnnotation(annotationType : Class<java.lang.annotation.Annotation>, field : java.lang.reflect.Field) : Bool;
	
	@:overload @:public public function hasClassAnnotation(clazz : Class<Dynamic>, annotationType : Class<java.lang.annotation.Annotation>) : Bool;
	
	@:overload @:public public function getAllFieldAnnotations(field : java.lang.reflect.Field, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : java.NativeArray<java.lang.annotation.Annotation>;
	
	@:overload @:public public function getMethodAnnotation<A : java.lang.annotation.Annotation>(annotation : Class<A>, method : java.lang.reflect.Method, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload @:public public function hasMethodAnnotation(annotation : Class<java.lang.annotation.Annotation>, method : java.lang.reflect.Method) : Bool;
	
	@:overload @:public public function getAllMethodAnnotations(method : java.lang.reflect.Method, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : java.NativeArray<java.lang.annotation.Annotation>;
	
	@:overload @:public public function getMethodParameterAnnotation<A : java.lang.annotation.Annotation>(annotation : Class<A>, method : java.lang.reflect.Method, paramIndex : Int, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload @:public public function getClassAnnotation<A : java.lang.annotation.Annotation>(a : Class<A>, clazz : Class<Dynamic>, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload @:public public function getPackageAnnotation<A : java.lang.annotation.Annotation>(a : Class<A>, clazz : Class<Dynamic>, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload @:public override public function getClassValue(a : java.lang.annotation.Annotation, name : String) : Class<Dynamic>;
	
	@:overload @:public override public function getClassArrayValue(a : java.lang.annotation.Annotation, name : String) : java.NativeArray<Class<Dynamic>>;
	
	@:overload @:protected private function fullName(m : java.lang.reflect.Method) : String;
	
	
}
