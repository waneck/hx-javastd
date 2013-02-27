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
@:internal extern class DirectCharBufferS extends java.nio.CharBuffer implements sun.nio.ch.DirectBuffer
{
	private static var unsafe(default, null) : sun.misc.Unsafe;
	
	private static var unaligned(default, null) : Bool;
	
	@:overload public function attachment() : Dynamic;
	
	@:overload public function cleaner() : sun.misc.Cleaner;
	
	@:overload override public function slice() : java.nio.CharBuffer;
	
	@:overload override public function duplicate() : java.nio.CharBuffer;
	
	@:overload override public function asReadOnlyBuffer() : java.nio.CharBuffer;
	
	@:overload public function address() : haxe.Int64;
	
	@:overload override public function get() : java.StdTypes.Char16;
	
	@:overload override public function get(i : Int) : java.StdTypes.Char16;
	
	@:overload override public function get(dst : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : java.nio.CharBuffer;
	
	@:overload override public function put(x : java.StdTypes.Char16) : java.nio.CharBuffer;
	
	@:overload override public function put(i : Int, x : java.StdTypes.Char16) : java.nio.CharBuffer;
	
	@:overload override public function put(src : java.nio.CharBuffer) : java.nio.CharBuffer;
	
	@:overload override public function put(src : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : java.nio.CharBuffer;
	
	@:overload override public function compact() : java.nio.CharBuffer;
	
	@:overload override public function isDirect() : Bool;
	
	@:overload override public function isReadOnly() : Bool;
	
	@:overload override public function toString(start : Int, end : Int) : String;
	
	@:overload override public function subSequence(start : Int, end : Int) : java.nio.CharBuffer;
	
	@:overload override public function order() : java.nio.ByteOrder;
	
	
}
