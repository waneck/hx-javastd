package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class DeprecatedAPIListBuilder
{
	/**
	* Build list of all the deprecated packages, classes, constructors, fields and methods.
	*
	* @author Atul M Dambalkar
	*/
	public static var NUM_TYPES(default, null) : Int;
	
	public static var PACKAGE(default, null) : Int;
	
	public static var INTERFACE(default, null) : Int;
	
	public static var CLASS(default, null) : Int;
	
	public static var ENUM(default, null) : Int;
	
	public static var EXCEPTION(default, null) : Int;
	
	public static var ERROR(default, null) : Int;
	
	public static var ANNOTATION_TYPE(default, null) : Int;
	
	public static var FIELD(default, null) : Int;
	
	public static var METHOD(default, null) : Int;
	
	public static var CONSTRUCTOR(default, null) : Int;
	
	public static var ENUM_CONSTANT(default, null) : Int;
	
	public static var ANNOTATION_TYPE_MEMBER(default, null) : Int;
	
	/**
	* Constructor.
	*
	* @param configuration the current configuration of the doclet
	*/
	@:overload public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : Void;
	
	/**
	* Return the list of deprecated Doc objects of a given type.
	*
	* @param the constant representing the type of list being returned.
	*/
	@:overload public function getList(type : Int) : java.util.List<com.sun.javadoc.Doc>;
	
	/**
	* Return true if the list of a given type has size greater than 0.
	*
	* @param type the type of list being checked.
	*/
	@:overload public function hasDocumentation(type : Int) : Bool;
	
	
}
