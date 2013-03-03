package sun.misc;
/*
* Copyright (c) 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class Hashing
{
	@:overload @:public @:static public static function murmur3_32(data : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload @:public @:static public static function murmur3_32(seed : Int, data : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload @:public @:static public static function murmur3_32(seed : Int, data : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Int;
	
	@:overload @:public @:static public static function murmur3_32(data : java.NativeArray<java.StdTypes.Char16>) : Int;
	
	@:overload @:public @:static public static function murmur3_32(seed : Int, data : java.NativeArray<java.StdTypes.Char16>) : Int;
	
	@:overload @:public @:static public static function murmur3_32(seed : Int, data : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : Int;
	
	@:overload @:public @:static public static function murmur3_32(data : java.NativeArray<Int>) : Int;
	
	@:overload @:public @:static public static function murmur3_32(seed : Int, data : java.NativeArray<Int>) : Int;
	
	@:overload @:public @:static public static function murmur3_32(seed : Int, data : java.NativeArray<Int>, offset : Int, len : Int) : Int;
	
	/**
	* Return a 32 bit hash value for the specified string. The algorithm is
	* unspecified but will be consistent within a VM instance.
	*
	* @param string String to be hashed.
	* @return hash value of the string.
	*/
	@:overload @:public @:static public static function stringHash32(string : String) : Int;
	
	@:overload @:public @:static public static function randomHashSeed(instance : Dynamic) : Int;
	
	
}
/**
* Holds references to things that can't be initialized until after VM
* is fully booted.
*/
@:native('sun$misc$Hashing$Holder') @:internal extern class Hashing_Holder
{
	
}
