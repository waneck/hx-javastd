package com.sun.tools.javac.util;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
/** A byte buffer is a flexible array which grows when elements are
*  appended. There are also methods to append names to byte buffers
*  and to convert byte buffers to names.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class ByteBuffer
{
	/** An array holding the bytes in this buffer; can be grown.
	*/
	@:public public var elems : java.NativeArray<java.StdTypes.Int8>;
	
	/** The current number of defined bytes in this buffer.
	*/
	@:public public var length : Int;
	
	/** Create a new byte buffer.
	*/
	@:overload @:public public function new() : Void;
	
	/** Create a new byte buffer with an initial elements array
	*  of given size.
	*/
	@:overload @:public public function new(initialSize : Int) : Void;
	
	/** Append byte to this buffer.
	*/
	@:overload @:public public function appendByte(b : Int) : Void;
	
	/** Append `len' bytes from byte array,
	*  starting at given `start' offset.
	*/
	@:overload @:public public function appendBytes(bs : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : Void;
	
	/** Append all bytes from given byte array.
	*/
	@:overload @:public public function appendBytes(bs : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/** Append a character as a two byte number.
	*/
	@:overload @:public public function appendChar(x : Int) : Void;
	
	/** Append an integer as a four byte number.
	*/
	@:overload @:public public function appendInt(x : Int) : Void;
	
	/** Append a long as an eight byte number.
	*/
	@:overload @:public public function appendLong(x : haxe.Int64) : Void;
	
	/** Append a float as a four byte number.
	*/
	@:overload @:public public function appendFloat(x : Single) : Void;
	
	/** Append a double as a eight byte number.
	*/
	@:overload @:public public function appendDouble(x : Float) : Void;
	
	/** Append a name.
	*/
	@:overload @:public public function appendName(name : com.sun.tools.javac.util.Name) : Void;
	
	/** Reset to zero length.
	*/
	@:overload @:public public function reset() : Void;
	
	/** Convert contents to name.
	*/
	@:overload @:public public function toName(names : com.sun.tools.javac.util.Names) : com.sun.tools.javac.util.Name;
	
	
}
