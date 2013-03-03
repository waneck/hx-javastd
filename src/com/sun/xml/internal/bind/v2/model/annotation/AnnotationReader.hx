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
extern interface AnnotationReader<T, C, F, M>
{
	/**
	* Sets the error handler that receives errors found
	* during reading annotations.
	*
	* @param errorHandler
	*      must not be null.
	*/
	@:overload public function setErrorHandler(errorHandler : com.sun.xml.internal.bind.v2.model.core.ErrorHandler) : Void;
	
	/**
	* Reads an annotation on a property that consists of a field.
	*/
	@:overload @:public public function getFieldAnnotation<A : java.lang.annotation.Annotation>(annotation : Class<A>, field : F, srcpos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	/**
	* Checks if the given field has an annotation.
	*/
	@:overload @:public public function hasFieldAnnotation(annotationType : Class<java.lang.annotation.Annotation>, field : F) : Bool;
	
	/**
	* Checks if a class has the annotation.
	*/
	@:overload @:public public function hasClassAnnotation(clazz : C, annotationType : Class<java.lang.annotation.Annotation>) : Bool;
	
	/**
	* Gets all the annotations on a field.
	*/
	@:overload @:public public function getAllFieldAnnotations(field : F, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : java.NativeArray<java.lang.annotation.Annotation>;
	
	/**
	* Reads an annotation on a property that consists of a getter and a setter.
	*
	*/
	@:overload public function getMethodAnnotation<A : java.lang.annotation.Annotation>(annotation : Class<A>, getter : M, setter : M, srcpos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	/**
	* Checks if the given method has an annotation.
	*/
	@:overload public function hasMethodAnnotation(annotation : Class<java.lang.annotation.Annotation>, propertyName : String, getter : M, setter : M, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : Bool;
	
	/**
	* Gets all the annotations on a method.
	*
	* @param srcPos
	*      the location from which this annotation is read.
	*/
	@:overload @:public public function getAllMethodAnnotations(method : M, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : java.NativeArray<java.lang.annotation.Annotation>;
	
	@:overload @:public public function getMethodAnnotation<A : java.lang.annotation.Annotation>(annotation : Class<A>, method : M, srcpos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	@:overload @:public public function hasMethodAnnotation(annotation : Class<java.lang.annotation.Annotation>, method : M) : Bool;
	
	/**
	* Reads an annotation on a parameter of the method.
	*
	* @return null
	*      if the annotation was not found.
	*/
	@:overload @:public public function getMethodParameterAnnotation<A : java.lang.annotation.Annotation>(annotation : Class<A>, method : M, paramIndex : Int, srcPos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	/**
	* Reads an annotation on a class.
	*/
	@:overload @:public public function getClassAnnotation<A : java.lang.annotation.Annotation>(annotation : Class<A>, clazz : C, srcpos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	/**
	* Reads an annotation on the package that the given class belongs to.
	*/
	@:overload @:public public function getPackageAnnotation<A : java.lang.annotation.Annotation>(annotation : Class<A>, clazz : C, srcpos : com.sun.xml.internal.bind.v2.model.annotation.Locatable) : A;
	
	/**
	* Reads a value of an annotation that returns a Class object.
	*
	* <p>
	* Depending on the underlying reflection library, you can't always
	* obtain the {@link Class} object directly (see the APT MirrorTypeException
	* for example), so use this method to avoid that.
	*
	* @param name
	*      The name of the annotation parameter to be read.
	*/
	@:overload @:public public function getClassValue(a : java.lang.annotation.Annotation, name : String) : T;
	
	/**
	* Similar to {@link #getClassValue(Annotation, String)} method but
	* obtains an array parameter.
	*/
	@:overload @:public public function getClassArrayValue(a : java.lang.annotation.Annotation, name : String) : java.NativeArray<T>;
	
	
}
