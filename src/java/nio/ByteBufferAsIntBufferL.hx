package java.nio;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ByteBufferAsIntBufferL extends java.nio.IntBuffer
{
	private var bb(default, null) : java.nio.ByteBuffer;
	
	private var offset(default, null) : Int;
	
	@:overload public function slice() : java.nio.IntBuffer;
	
	@:overload public function duplicate() : java.nio.IntBuffer;
	
	@:overload public function asReadOnlyBuffer() : java.nio.IntBuffer;
	
	@:overload private function ix(i : Int) : Int;
	
	@:overload public function get() : Int;
	
	@:overload public function get(i : Int) : Int;
	
	@:overload public function put(x : Int) : java.nio.IntBuffer;
	
	@:overload public function put(i : Int, x : Int) : java.nio.IntBuffer;
	
	@:overload public function compact() : java.nio.IntBuffer;
	
	@:overload public function isDirect() : Bool;
	
	@:overload public function isReadOnly() : Bool;
	
	@:overload public function order() : java.nio.ByteOrder;
	
	
}
