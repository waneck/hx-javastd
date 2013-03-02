package sun.reflect;
/*
* Copyright (c) 2001, 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class UnsafeByteFieldAccessorImpl extends sun.reflect.UnsafeFieldAccessorImpl
{
	@:overload public function get(obj : Dynamic) : Dynamic;
	
	@:overload public function getBoolean(obj : Dynamic) : Bool;
	
	@:overload public function getByte(obj : Dynamic) : java.StdTypes.Int8;
	
	@:overload public function getChar(obj : Dynamic) : java.StdTypes.Char16;
	
	@:overload public function getShort(obj : Dynamic) : java.StdTypes.Int16;
	
	@:overload public function getInt(obj : Dynamic) : Int;
	
	@:overload public function getLong(obj : Dynamic) : haxe.Int64;
	
	@:overload public function getFloat(obj : Dynamic) : Single;
	
	@:overload public function getDouble(obj : Dynamic) : Float;
	
	@:overload public function set(obj : Dynamic, value : Dynamic) : Void;
	
	@:overload public function setBoolean(obj : Dynamic, z : Bool) : Void;
	
	@:overload public function setByte(obj : Dynamic, b : java.StdTypes.Int8) : Void;
	
	@:overload public function setChar(obj : Dynamic, c : java.StdTypes.Char16) : Void;
	
	@:overload public function setShort(obj : Dynamic, s : java.StdTypes.Int16) : Void;
	
	@:overload public function setInt(obj : Dynamic, i : Int) : Void;
	
	@:overload public function setLong(obj : Dynamic, l : haxe.Int64) : Void;
	
	@:overload public function setFloat(obj : Dynamic, f : Single) : Void;
	
	@:overload public function setDouble(obj : Dynamic, d : Float) : Void;
	
	
}
