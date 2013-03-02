package com.sun.xml.internal.messaging.saaj.util;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ByteOutputStream extends java.io.OutputStream
{
	/**
	* The buffer where data is stored.
	*/
	private var buf : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* The number of valid bytes in the buffer.
	*/
	private var count : Int;
	
	@:overload public function new() : Void;
	
	@:overload public function new(size : Int) : Void;
	
	/**
	* Copies all the bytes from this input into this buffer.
	*/
	@:overload public function write(_in : java.io.InputStream) : Void;
	
	@:overload public function write(b : Int) : Void;
	
	@:overload public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Writes a string as ASCII string.
	*/
	@:overload public function writeAsAscii(s : String) : Void;
	
	@:overload public function writeTo(out : java.io.OutputStream) : Void;
	
	@:overload public function reset() : Void;
	
	/**
	* Evil buffer reallocation method.
	* Don't use it unless you absolutely have to.
	*
	* @deprecated
	*      because this is evil!
	*/
	@:overload public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function size() : Int;
	
	@:overload public function newInputStream() : com.sun.xml.internal.messaging.saaj.util.ByteInputStream;
	
	/**
	* Converts the buffer's contents into a string, translating bytes into
	* characters according to the platform's default character encoding.
	*
	* @return String translated from the buffer's contents.
	* @since JDK1.1
	*/
	@:require(java1) @:overload public function toString() : String;
	
	@:overload public function close() : Void;
	
	@:overload public function getBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getCount() : Int;
	
	
}
