package com.sun.xml.internal.bind.v2.util;
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
extern class EditDistance
{
	/**
	* Computes the edit distance between two strings.
	*
	* <p>
	* The complexity is O(nm) where n=a.length() and m=b.length().
	*/
	@:overload @:public @:static public static function editDistance(a : String, b : String) : Int;
	
	/**
	* Finds the string in the <code>group</code> closest to
	* <code>key</code> and returns it.
	*
	* @return null if group.length==0.
	*/
	@:overload @:public @:static public static function findNearest(key : String, group : java.NativeArray<String>) : String;
	
	/**
	* Finds the string in the <code>group</code> closest to
	* <code>key</code> and returns it.
	*
	* @return null if group.length==0.
	*/
	@:overload @:public @:static public static function findNearest(key : String, group : java.util.Collection<String>) : String;
	
	
}
