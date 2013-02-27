package java.lang.reflect;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern interface AnnotatedElement
{
	/**
	* Returns true if an annotation for the specified type
	* is present on this element, else false.  This method
	* is designed primarily for convenient access to marker annotations.
	*
	* @param annotationClass the Class object corresponding to the
	*        annotation type
	* @return true if an annotation for the specified annotation
	*     type is present on this element, else false
	* @throws NullPointerException if the given annotation class is null
	* @since 1.5
	*/
	@:require(java5) @:overload public function isAnnotationPresent(annotationClass : Class<java.lang.annotation.Annotation>) : Bool;
	
	/**
	* Returns this element's annotation for the specified type if
	* such an annotation is present, else null.
	*
	* @param annotationClass the Class object corresponding to the
	*        annotation type
	* @return this element's annotation for the specified annotation type if
	*     present on this element, else null
	* @throws NullPointerException if the given annotation class is null
	* @since 1.5
	*/
	@:require(java5) @:overload public function getAnnotation<T : java.lang.annotation.Annotation>(annotationClass : Class<T>) : T;
	
	/**
	* Returns all annotations present on this element.  (Returns an array
	* of length zero if this element has no annotations.)  The caller of
	* this method is free to modify the returned array; it will have no
	* effect on the arrays returned to other callers.
	*
	* @return all annotations present on this element
	* @since 1.5
	*/
	@:require(java5) @:overload public function getAnnotations() : java.NativeArray<java.lang.annotation.Annotation>;
	
	/**
	* Returns all annotations that are directly present on this
	* element.  Unlike the other methods in this interface, this method
	* ignores inherited annotations.  (Returns an array of length zero if
	* no annotations are directly present on this element.)  The caller of
	* this method is free to modify the returned array; it will have no
	* effect on the arrays returned to other callers.
	*
	* @return All annotations directly present on this element
	* @since 1.5
	*/
	@:require(java5) @:overload public function getDeclaredAnnotations() : java.NativeArray<java.lang.annotation.Annotation>;
	
	
}
