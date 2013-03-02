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
extern class ContiguousCharArrayArray extends com.sun.xml.internal.fastinfoset.util.ValueArray
{
	public static var INITIAL_CHARACTER_SIZE(default, null) : Int;
	
	public static var MAXIMUM_CHARACTER_SIZE(default, null) : Int;
	
	private var _maximumCharacterSize : Int;
	
	public var _offset : java.NativeArray<Int>;
	
	public var _length : java.NativeArray<Int>;
	
	public var _array : java.NativeArray<java.StdTypes.Char16>;
	
	public var _arrayIndex : Int;
	
	public var _readOnlyArrayIndex : Int;
	
	public var _cachedIndex : Int;
	
	@:overload public function new(initialCapacity : Int, maximumCapacity : Int, initialCharacterSize : Int, maximumCharacterSize : Int) : Void;
	
	@:overload public function new() : Void;
	
	@:overload @:final override public function clear() : Void;
	
	@:overload @:final public function getArrayIndex() : Int;
	
	@:overload @:final override public function setReadOnlyArray(readOnlyArray : com.sun.xml.internal.fastinfoset.util.ValueArray, clear : Bool) : Void;
	
	@:overload @:final public function setReadOnlyArray(readOnlyArray : com.sun.xml.internal.fastinfoset.util.ContiguousCharArrayArray, clear : Bool) : Void;
	
	@:overload @:final public function getCompleteCharArray() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:final public function getCompleteOffsetArray() : java.NativeArray<Int>;
	
	@:overload @:final public function getCompleteLengthArray() : java.NativeArray<Int>;
	
	@:overload @:final public function getString(i : Int) : String;
	
	@:overload @:final public function ensureSize(l : Int) : Void;
	
	@:overload @:final public function add(l : Int) : Void;
	
	@:overload @:final public function add(c : java.NativeArray<java.StdTypes.Char16>, l : Int) : Int;
	
	@:overload @:final private function resize() : Void;
	
	@:overload @:final private function resizeArray(requestedSize : Int) : Void;
	
	
}
