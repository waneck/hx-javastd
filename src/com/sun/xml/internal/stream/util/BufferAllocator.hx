package com.sun.xml.internal.stream.util;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/**
* Buffer allocator for buffers of sizes 128 B, 2 KB and 8 KB. Includes
* methods for allocating and freeing buffers.
*
* @author Binu.John@sun.com
* @author Santiago.PericasGeertsen@sun.com
*/
extern class BufferAllocator
{
	@:public @:static public static var SMALL_SIZE_LIMIT : Int;
	
	@:public @:static public static var MEDIUM_SIZE_LIMIT : Int;
	
	@:public @:static public static var LARGE_SIZE_LIMIT : Int;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function getCharBuffer(size : Int) : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:public public function returnCharBuffer(c : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload @:public public function getByteBuffer(size : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function returnByteBuffer(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	
}
