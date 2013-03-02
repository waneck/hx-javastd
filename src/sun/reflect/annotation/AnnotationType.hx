package sun.reflect.annotation;
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
extern class AnnotationType
{
	/**
	* Returns an AnnotationType instance for the specified annotation type.
	*
	* @throw IllegalArgumentException if the specified class object for
	*     does not represent a valid annotation type
	*/
	@:overload @:synchronized public static function getInstance(annotationClass : Class<java.lang.annotation.Annotation>) : sun.reflect.annotation.AnnotationType;
	
	/**
	* Returns the type that must be returned by the invocation handler
	* of a dynamic proxy in order to have the dynamic proxy return
	* the specified type (which is assumed to be a legal member type
	* for an annotation).
	*/
	@:overload public static function invocationHandlerReturnType(type : Class<Dynamic>) : Class<Dynamic>;
	
	/**
	* Returns member types for this annotation type
	* (member name -> type mapping).
	*/
	@:overload public function memberTypes() : java.util.Map<String, Class<Dynamic>>;
	
	/**
	* Returns members of this annotation type
	* (member name -> associated Method object mapping).
	*/
	@:overload public function members() : java.util.Map<String, java.lang.reflect.Method>;
	
	/**
	* Returns the default values for this annotation type
	* (Member name -> default value mapping).
	*/
	@:overload public function memberDefaults() : java.util.Map<String, Dynamic>;
	
	/**
	* Returns the retention policy for this annotation type.
	*/
	@:overload public function retention() : java.lang.annotation.RetentionPolicy;
	
	/**
	* Returns true if this this annotation type is inherited.
	*/
	@:overload public function isInherited() : Bool;
	
	/**
	* For debugging.
	*/
	@:overload public function toString() : String;
	
	
}
