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
extern class CharArray implements java.lang.CharSequence
{
	public var ch : java.NativeArray<java.StdTypes.Char16>;
	
	public var start : Int;
	
	private var _hash : Int;
	
	@:overload private function new() : Void;
	
	@:overload public function new(_ch : java.NativeArray<java.StdTypes.Char16>, _start : Int, _length : Int, copy : Bool) : Void;
	
	@:overload @:final public function set(_ch : java.NativeArray<java.StdTypes.Char16>, _start : Int, _length : Int, copy : Bool) : Void;
	
	@:overload @:final public function cloneArray() : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function hashCode() : Int;
	
	@:native('hashCode') @:overload @:final public static function _hashCode(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Int;
	
	@:overload @:final public function equalsCharArray(cha : CharArray) : Bool;
	
	@:overload @:final public function equalsCharArray(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Bool;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload @:final public function length() : Int;
	
	@:overload @:final public function charAt(index : Int) : java.StdTypes.Char16;
	
	@:overload @:final public function subSequence(start : Int, end : Int) : java.lang.CharSequence;
	
	
}
