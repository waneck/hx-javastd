package com.sun.xml.internal.fastinfoset.util;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class CharArrayIntMap extends com.sun.xml.internal.fastinfoset.util.KeyIntMap
{
	@:protected private var _totalCharacterCount : Int;
	
	@:overload @:public public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	@:overload @:public public function new(initialCapacity : Int) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public @:final override public function clear() : Void;
	
	@:overload @:public @:final override public function setReadOnlyMap(readOnlyMap : com.sun.xml.internal.fastinfoset.util.KeyIntMap, clear : Bool) : Void;
	
	@:overload @:public @:final public function setReadOnlyMap(readOnlyMap : com.sun.xml.internal.fastinfoset.util.CharArrayIntMap, clear : Bool) : Void;
	
	/**
	* Method returns an index of the passed character buffer in
	* <code>CharArrayIntMap</code>.
	*
	* @return index of character buffer in <code>CharArrayIntMap</code>,
	* otherwise NOT_PRESENT.
	*/
	@:overload @:public @:final public function get(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Int;
	
	/**
	* Method returns an index of the passed character buffer in
	* <code>CharArrayIntMap</code>. If character buffer is not in
	* <code>CharArrayIntMap</code> - it will be added.
	*
	* @return index of character buffer in <code>CharArrayIntMap</code>, or
	* NOT_PRESENT if character buffer was just added.
	*/
	@:overload @:public @:final public function obtainIndex(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int, clone : Bool) : Int;
	
	@:overload @:public @:final public function getTotalCharacterCount() : Int;
	
	
}
@:native('com$sun$xml$internal$fastinfoset$util$CharArrayIntMap$Entry') @:internal extern class CharArrayIntMap_Entry extends com.sun.xml.internal.fastinfoset.util.KeyIntMap.KeyIntMap_BaseEntry
{
	@:overload @:public public function new(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int, hash : Int, value : Int, next : com.sun.xml.internal.fastinfoset.util.CharArrayIntMap.CharArrayIntMap_Entry) : Void;
	
	@:overload @:public @:final public function equalsCharArray(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Bool;
	
	
}
