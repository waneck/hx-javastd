package com.sun.xml.internal.ws.util;
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
extern class ByteArrayBuffer extends java.io.OutputStream
{
	/**
	* The buffer where data is stored.
	*/
	@:protected private var buf : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Creates a new byte array output stream. The buffer capacity is
	* initially 32 bytes, though its size increases if necessary.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new byte array output stream, with a buffer capacity of
	* the specified size, in bytes.
	*
	* @param size the initial size.
	* @throws IllegalArgumentException if size is negative.
	*/
	@:overload @:public public function new(size : Int) : Void;
	
	@:overload @:public public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public public function new(data : java.NativeArray<java.StdTypes.Int8>, length : Int) : Void;
	
	/**
	* Reads all the data of the given {@link InputStream} and appends them
	* into this buffer.
	*
	* @throws IOException
	*      if the read operation fails with an {@link IOException}.
	*/
	@:overload @:public @:final public function write(_in : java.io.InputStream) : Void;
	
	@:overload @:public @:final override public function write(b : Int) : Void;
	
	@:overload @:public @:final override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public @:final public function writeTo(out : java.io.OutputStream) : Void;
	
	@:overload @:public @:final public function reset() : Void;
	
	/**
	* Gets the <b>copy</b> of exact-size byte[] that represents the written data.
	*
	* <p>
	* Since this method needs to allocate a new byte[], this method will be costly.
	*
	* @deprecated
	*      this method causes a buffer reallocation. Use it only when
	*      you have to.
	*/
	@:overload @:public @:final public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public @:final public function size() : Int;
	
	/**
	* Gets the underlying buffer that this {@link ByteArrayBuffer} uses.
	* It's never small than its {@link #size()}.
	*
	* Use with caution.
	*/
	@:overload @:public @:final public function getRawData() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public override public function close() : Void;
	
	/**
	* Creates a new {@link InputStream} that reads from this buffer.
	*/
	@:overload @:public @:final public function newInputStream() : java.io.InputStream;
	
	/**
	* Creates a new {@link InputStream} that reads a part of this bfufer.
	*/
	@:overload @:public @:final public function newInputStream(start : Int, length : Int) : java.io.InputStream;
	
	/**
	* Decodes the contents of this buffer by the default encoding
	* and returns it as a string.
	*
	* <p>
	* Meant to aid debugging, but no more.
	*/
	@:overload @:public public function toString() : String;
	
	
}
