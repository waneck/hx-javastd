package java.nio;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
//// -- This file was mechanically generated: Do not edit! -- //
@:internal extern class DirectByteBufferR extends java.nio.DirectByteBuffer implements sun.nio.ch.DirectBuffer
{
	@:overload private function new(cap : Int, addr : haxe.Int64, fd : java.io.FileDescriptor, unmapper : java.lang.Runnable) : Void;
	
	@:overload override public function slice() : java.nio.ByteBuffer;
	
	@:overload override public function duplicate() : java.nio.ByteBuffer;
	
	@:overload override public function asReadOnlyBuffer() : java.nio.ByteBuffer;
	
	@:overload override public function put(x : java.StdTypes.Int8) : java.nio.ByteBuffer;
	
	@:overload override public function put(i : Int, x : java.StdTypes.Int8) : java.nio.ByteBuffer;
	
	@:overload override public function put(src : java.nio.ByteBuffer) : java.nio.ByteBuffer;
	
	@:overload override public function put(src : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : java.nio.ByteBuffer;
	
	@:overload override public function compact() : java.nio.ByteBuffer;
	
	@:overload override public function isDirect() : Bool;
	
	@:overload override public function isReadOnly() : Bool;
	
	@:overload override public function putChar(x : java.StdTypes.Char16) : java.nio.ByteBuffer;
	
	@:overload override public function putChar(i : Int, x : java.StdTypes.Char16) : java.nio.ByteBuffer;
	
	@:overload override public function asCharBuffer() : java.nio.CharBuffer;
	
	@:overload override public function putShort(x : java.StdTypes.Int16) : java.nio.ByteBuffer;
	
	@:overload override public function putShort(i : Int, x : java.StdTypes.Int16) : java.nio.ByteBuffer;
	
	@:overload override public function asShortBuffer() : java.nio.ShortBuffer;
	
	@:overload override public function putInt(x : Int) : java.nio.ByteBuffer;
	
	@:overload override public function putInt(i : Int, x : Int) : java.nio.ByteBuffer;
	
	@:overload override public function asIntBuffer() : java.nio.IntBuffer;
	
	@:overload override public function putLong(x : haxe.Int64) : java.nio.ByteBuffer;
	
	@:overload override public function putLong(i : Int, x : haxe.Int64) : java.nio.ByteBuffer;
	
	@:overload override public function asLongBuffer() : java.nio.LongBuffer;
	
	@:overload override public function putFloat(x : Single) : java.nio.ByteBuffer;
	
	@:overload override public function putFloat(i : Int, x : Single) : java.nio.ByteBuffer;
	
	@:overload override public function asFloatBuffer() : java.nio.FloatBuffer;
	
	@:overload override public function putDouble(x : Float) : java.nio.ByteBuffer;
	
	@:overload override public function putDouble(i : Int, x : Float) : java.nio.ByteBuffer;
	
	@:overload override public function asDoubleBuffer() : java.nio.DoubleBuffer;
	
	
}
