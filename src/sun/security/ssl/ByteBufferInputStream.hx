package sun.security.ssl;
/*
* Copyright (c) 2003, 2009, Oracle and/or its affiliates. All rights reserved.
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
* A simple InputStream which uses ByteBuffers as it's backing store.
* <P>
* The only IOException should come if the InputStream has been closed.
* All other IOException should not occur because all the data is local.
* Data reads on an exhausted ByteBuffer returns a -1.
*
* @author  Brad Wetmore
*/
@:internal extern class ByteBufferInputStream extends java.io.InputStream
{
	/**
	* Returns a byte from the ByteBuffer.
	*
	* Increments position().
	*/
	@:overload override public function read() : Int;
	
	/**
	* Returns a byte array from the ByteBuffer.
	*
	* Increments position().
	*/
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Returns a byte array from the ByteBuffer.
	*
	* Increments position().
	*/
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Skips over and discards <code>n</code> bytes of data from this input
	* stream.
	*/
	@:overload override public function skip(n : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns the number of bytes that can be read (or skipped over)
	* from this input stream without blocking by the next caller of a
	* method for this input stream.
	*/
	@:overload override public function available() : Int;
	
	/**
	* Closes this input stream and releases any system resources associated
	* with the stream.
	*
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload override public function close() : Void;
	
	/**
	* Marks the current position in this input stream.
	*/
	@:overload @:synchronized override public function mark(readlimit : Int) : Void;
	
	/**
	* Repositions this stream to the position at the time the
	* <code>mark</code> method was last called on this input stream.
	*/
	@:overload @:synchronized override public function reset() : Void;
	
	/**
	* Tests if this input stream supports the <code>mark</code> and
	* <code>reset</code> methods.
	*/
	@:overload override public function markSupported() : Bool;
	
	
}
