package com.sun.tools.hat.internal.model;
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
/*
* The Original Code is HAT. The Initial Developer of the
* Original Code is Bill Foote, with contributions from others
* at JavaSoft/Sun.
*/
extern class Root
{
	public static var INVALID_TYPE(default, null) : Int;
	
	public static var UNKNOWN(default, null) : Int;
	
	public static var SYSTEM_CLASS(default, null) : Int;
	
	public static var NATIVE_LOCAL(default, null) : Int;
	
	public static var NATIVE_STATIC(default, null) : Int;
	
	public static var THREAD_BLOCK(default, null) : Int;
	
	public static var BUSY_MONITOR(default, null) : Int;
	
	public static var JAVA_LOCAL(default, null) : Int;
	
	public static var NATIVE_STACK(default, null) : Int;
	
	public static var JAVA_STATIC(default, null) : Int;
	
	@:overload public function new(id : haxe.Int64, refererId : haxe.Int64, type : Int, description : String) : Void;
	
	@:overload public function new(id : haxe.Int64, refererId : haxe.Int64, type : Int, description : String, stackTrace : com.sun.tools.hat.internal.model.StackTrace) : Void;
	
	@:overload public function getId() : haxe.Int64;
	
	@:overload public function getIdString() : String;
	
	@:overload public function getDescription() : String;
	
	/**
	* Return type.  We guarantee that more interesting roots will have
	* a type that is numerically higher.
	*/
	@:overload public function getType() : Int;
	
	@:overload public function getTypeName() : String;
	
	/**
	* Given two Root instances, return the one that is most interesting.
	*/
	@:overload public function mostInteresting(other : com.sun.tools.hat.internal.model.Root) : com.sun.tools.hat.internal.model.Root;
	
	/**
	* Get the object that's responsible for this root, if there is one.
	* This will be null, a Thread object, or a Class object.
	*/
	@:overload public function getReferer() : com.sun.tools.hat.internal.model.JavaHeapObject;
	
	/**
	* @return the stack trace responsible for this root, or null if there
	* is none.
	*/
	@:overload public function getStackTrace() : com.sun.tools.hat.internal.model.StackTrace;
	
	/**
	* @return The index of this root in Snapshot.roots
	*/
	@:overload public function getIndex() : Int;
	
	
}
