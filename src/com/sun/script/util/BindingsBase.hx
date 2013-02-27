package com.sun.script.util;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class BindingsBase extends java.util.AbstractMap<String, Dynamic> implements javax.script.Bindings
{
	/**
	* Abstract super class for Bindings implementations
	*
	* @author Mike Grogan
	* @since 1.6
	*/
	@:require(java6) @:overload override public function get(name : Dynamic) : Dynamic;
	
	@:overload override public function remove(key : Dynamic) : Dynamic;
	
	@:overload public function put(key : String, value : Dynamic) : Dynamic;
	
	@:overload override public function putAll(toMerge : java.util.Map<String, Dynamic>) : Void;
	
	@:overload @:abstract public function putImpl(name : String, value : Dynamic) : Dynamic;
	
	@:overload @:abstract public function getImpl(name : String) : Dynamic;
	
	@:overload @:abstract public function removeImpl(name : String) : Dynamic;
	
	@:overload @:abstract public function getNames() : java.NativeArray<String>;
	
	@:overload private function checkKey(key : Dynamic) : Void;
	
	/**
	* Returns <tt>true</tt> if this map contains a mapping for the specified
	* key.  More formally, returns <tt>true</tt> if and only if
	* this map contains a mapping for a key <tt>k</tt> such that
	* <tt>(key==null ? k==null : key.equals(k))</tt>.  (There can be
	* at most one such mapping.)
	*
	* @param key key whose presence in this map is to be tested.
	* @return <tt>true</tt> if this map contains a mapping for the specified
	*         key.
	*
	* @throws NullPointerException if key is null
	* @throws ClassCastException if key is not String
	* @throws IllegalArgumentException if key is empty String
	*/
	@:overload @:public override public function containsKey(key : Dynamic) : Bool;
	
	
}
