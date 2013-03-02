package sun.java2d.pipe;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class RenderBuffer
{
	/**
	* These constants represent the size of various data types (in bytes).
	*/
	private static var SIZEOF_BYTE(default, null) : haxe.Int64;
	
	private static var SIZEOF_SHORT(default, null) : haxe.Int64;
	
	private static var SIZEOF_INT(default, null) : haxe.Int64;
	
	private static var SIZEOF_FLOAT(default, null) : haxe.Int64;
	
	private static var SIZEOF_LONG(default, null) : haxe.Int64;
	
	private static var SIZEOF_DOUBLE(default, null) : haxe.Int64;
	
	private var unsafe(default, null) : sun.misc.Unsafe;
	
	private var baseAddress(default, null) : haxe.Int64;
	
	private var endAddress(default, null) : haxe.Int64;
	
	private var curAddress : haxe.Int64;
	
	@:overload private function new(numBytes : Int) : Void;
	
	/**
	* Allocates a fresh buffer using the machine endianness.
	*/
	@:overload public static function allocate(numBytes : Int) : sun.java2d.pipe.RenderBuffer;
	
	/**
	* Returns the base address of the underlying memory buffer.
	*/
	@:overload @:final public function getAddress() : haxe.Int64;
	
	/**
	* The behavior (and names) of the following methods are nearly
	* identical to their counterparts in the various NIO Buffer classes.
	*/
	@:overload @:final public function capacity() : Int;
	
	@:overload @:final public function remaining() : Int;
	
	@:overload @:final public function position() : Int;
	
	@:overload @:final public function position(numBytes : haxe.Int64) : Void;
	
	@:overload @:final public function clear() : Void;
	
	@:overload @:final public function skip(numBytes : haxe.Int64) : sun.java2d.pipe.RenderBuffer;
	
	/**
	* putByte() methods...
	*/
	@:overload @:final public function putByte(x : java.StdTypes.Int8) : sun.java2d.pipe.RenderBuffer;
	
	@:overload public function put(x : java.NativeArray<java.StdTypes.Int8>) : sun.java2d.pipe.RenderBuffer;
	
	@:overload public function put(x : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : sun.java2d.pipe.RenderBuffer;
	
	/**
	* putShort() methods...
	*/
	@:overload @:final public function putShort(x : java.StdTypes.Int16) : sun.java2d.pipe.RenderBuffer;
	
	@:overload public function put(x : java.NativeArray<java.StdTypes.Int16>) : sun.java2d.pipe.RenderBuffer;
	
	@:overload public function put(x : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : sun.java2d.pipe.RenderBuffer;
	
	/**
	* putInt() methods...
	*/
	@:overload @:final public function putInt(pos : Int, x : Int) : sun.java2d.pipe.RenderBuffer;
	
	@:overload @:final public function putInt(x : Int) : sun.java2d.pipe.RenderBuffer;
	
	@:overload public function put(x : java.NativeArray<Int>) : sun.java2d.pipe.RenderBuffer;
	
	@:overload public function put(x : java.NativeArray<Int>, offset : Int, length : Int) : sun.java2d.pipe.RenderBuffer;
	
	/**
	* putFloat() methods...
	*/
	@:overload @:final public function putFloat(x : Single) : sun.java2d.pipe.RenderBuffer;
	
	@:overload public function put(x : java.NativeArray<Single>) : sun.java2d.pipe.RenderBuffer;
	
	@:overload public function put(x : java.NativeArray<Single>, offset : Int, length : Int) : sun.java2d.pipe.RenderBuffer;
	
	/**
	* putLong() methods...
	*/
	@:overload @:final public function putLong(x : haxe.Int64) : sun.java2d.pipe.RenderBuffer;
	
	@:overload public function put(x : java.NativeArray<haxe.Int64>) : sun.java2d.pipe.RenderBuffer;
	
	@:overload public function put(x : java.NativeArray<haxe.Int64>, offset : Int, length : Int) : sun.java2d.pipe.RenderBuffer;
	
	/**
	* putDouble() method(s)...
	*/
	@:overload @:final public function putDouble(x : Float) : sun.java2d.pipe.RenderBuffer;
	
	
}
