package java.lang.reflect;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class AccessibleObject implements java.lang.reflect.AnnotatedElement
{
	/**
	* Convenience method to set the {@code accessible} flag for an
	* array of objects with a single security check (for efficiency).
	*
	* <p>First, if there is a security manager, its
	* {@code checkPermission} method is called with a
	* {@code ReflectPermission("suppressAccessChecks")} permission.
	*
	* <p>A {@code SecurityException} is raised if {@code flag} is
	* {@code true} but accessibility of any of the elements of the input
	* {@code array} may not be changed (for example, if the element
	* object is a {@link Constructor} object for the class {@link
	* java.lang.Class}).  In the event of such a SecurityException, the
	* accessibility of objects is set to {@code flag} for array elements
	* upto (and excluding) the element for which the exception occurred; the
	* accessibility of elements beyond (and including) the element for which
	* the exception occurred is unchanged.
	*
	* @param array the array of AccessibleObjects
	* @param flag  the new value for the {@code accessible} flag
	*              in each object
	* @throws SecurityException if the request is denied.
	* @see SecurityManager#checkPermission
	* @see java.lang.RuntimePermission
	*/
	@:native('setAccessible') @:overload public static function _setAccessible(array : java.NativeArray<java.lang.reflect.AccessibleObject>, flag : Bool) : Void;
	
	/**
	* Set the {@code accessible} flag for this object to
	* the indicated boolean value.  A value of {@code true} indicates that
	* the reflected object should suppress Java language access
	* checking when it is used.  A value of {@code false} indicates
	* that the reflected object should enforce Java language access checks.
	*
	* <p>First, if there is a security manager, its
	* {@code checkPermission} method is called with a
	* {@code ReflectPermission("suppressAccessChecks")} permission.
	*
	* <p>A {@code SecurityException} is raised if {@code flag} is
	* {@code true} but accessibility of this object may not be changed
	* (for example, if this element object is a {@link Constructor} object for
	* the class {@link java.lang.Class}).
	*
	* <p>A {@code SecurityException} is raised if this object is a {@link
	* java.lang.reflect.Constructor} object for the class
	* {@code java.lang.Class}, and {@code flag} is true.
	*
	* @param flag the new value for the {@code accessible} flag
	* @throws SecurityException if the request is denied.
	* @see SecurityManager#checkPermission
	* @see java.lang.RuntimePermission
	*/
	@:overload public function setAccessible(flag : Bool) : Void;
	
	/**
	* Get the value of the {@code accessible} flag for this object.
	*
	* @return the value of the object's {@code accessible} flag
	*/
	@:overload public function isAccessible() : Bool;
	
	/**
	* Constructor: only used by the Java Virtual Machine.
	*/
	@:overload private function new() : Void;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @since 1.5
	*/
	@:require(java5) @:overload public function getAnnotation<T : java.lang.annotation.Annotation>(annotationClass : Class<T>) : T;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @since 1.5
	*/
	@:require(java5) @:overload public function isAnnotationPresent(annotationClass : Class<java.lang.annotation.Annotation>) : Bool;
	
	/**
	* @since 1.5
	*/
	@:require(java5) @:overload public function getAnnotations() : java.NativeArray<java.lang.annotation.Annotation>;
	
	/**
	* @since 1.5
	*/
	@:require(java5) @:overload public function getDeclaredAnnotations() : java.NativeArray<java.lang.annotation.Annotation>;
	
	
}
