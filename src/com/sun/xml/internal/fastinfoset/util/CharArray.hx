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
	@:public public var ch : java.NativeArray<java.StdTypes.Char16>;
	
	@:public public var start : Int;
	
	@:protected private var _hash : Int;
	
	@:overload @:protected private function new() : Void;
	
	@:overload @:public public function new(_ch : java.NativeArray<java.StdTypes.Char16>, _start : Int, _length : Int, copy : Bool) : Void;
	
	@:overload @:public @:final public function set(_ch : java.NativeArray<java.StdTypes.Char16>, _start : Int, _length : Int, copy : Bool) : Void;
	
	@:overload @:public @:final public function cloneArray() : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function hashCode() : Int;
	
	@:native('hashCode') @:overload @:public @:static @:final public static function _hashCode(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Int;
	
	@:overload @:public @:final public function equalsCharArray(cha : com.sun.xml.internal.fastinfoset.util.CharArray) : Bool;
	
	@:overload @:public @:final public function equalsCharArray(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Bool;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public @:final public function length() : Int;
	
	@:overload @:public @:final public function charAt(index : Int) : java.StdTypes.Char16;
	
	@:overload @:public @:final public function subSequence(start : Int, end : Int) : java.lang.CharSequence;
	
	
}
