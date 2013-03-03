package java.util.zip;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DeflaterInputStream extends java.io.FilterInputStream
{
	/** Compressor for this stream. */
	@:protected @:final private var def(default, null) : java.util.zip.Deflater;
	
	/** Input buffer for reading compressed data. */
	@:protected @:final private var buf(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Creates a new input stream with a default compressor and buffer
	* size.
	*
	* @param in input stream to read the uncompressed data to
	* @throws NullPointerException if {@code in} is null
	*/
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Creates a new input stream with the specified compressor and a
	* default buffer size.
	*
	* @param in input stream to read the uncompressed data to
	* @param defl compressor ("deflater") for this stream
	* @throws NullPointerException if {@code in} or {@code defl} is null
	*/
	@:overload @:public public function new(_in : java.io.InputStream, defl : java.util.zip.Deflater) : Void;
	
	/**
	* Creates a new input stream with the specified compressor and buffer
	* size.
	*
	* @param in input stream to read the uncompressed data to
	* @param defl compressor ("deflater") for this stream
	* @param bufLen compression buffer size
	* @throws IllegalArgumentException if {@code bufLen} is <= 0
	* @throws NullPointerException if {@code in} or {@code defl} is null
	*/
	@:overload @:public public function new(_in : java.io.InputStream, defl : java.util.zip.Deflater, bufLen : Int) : Void;
	
	/**
	* Closes this input stream and its underlying input stream, discarding
	* any pending uncompressed data.
	*
	* @throws IOException if an I/O error occurs
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* Reads a single byte of compressed data from the input stream.
	* This method will block until some input can be read and compressed.
	*
	* @return a single byte of compressed data, or -1 if the end of the
	* uncompressed input stream is reached
	* @throws IOException if an I/O error occurs or if this stream is
	* already closed
	*/
	@:overload @:public override public function read() : Int;
	
	/**
	* Reads compressed data into a byte array.
	* This method will block until some input can be read and compressed.
	*
	* @param b buffer into which the data is read
	* @param off starting offset of the data within {@code b}
	* @param len maximum number of compressed bytes to read into {@code b}
	* @return the actual number of bytes read, or -1 if the end of the
	* uncompressed input stream is reached
	* @throws IndexOutOfBoundsException  if {@code len} > {@code b.length -
	* off}
	* @throws IOException if an I/O error occurs or if this input stream is
	* already closed
	*/
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Skips over and discards data from the input stream.
	* This method may block until the specified number of bytes are read and
	* skipped. <em>Note:</em> While {@code n} is given as a {@code long},
	* the maximum number of bytes which can be skipped is
	* {@code Integer.MAX_VALUE}.
	*
	* @param n number of bytes to be skipped
	* @return the actual number of bytes skipped
	* @throws IOException if an I/O error occurs or if this stream is
	* already closed
	*/
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns 0 after EOF has been reached, otherwise always return 1.
	* <p>
	* Programs should not count on this method to return the actual number
	* of bytes that could be read without blocking
	* @return zero after the end of the underlying input stream has been
	* reached, otherwise always returns 1
	* @throws IOException if an I/O error occurs or if this stream is
	* already closed
	*/
	@:overload @:public override public function available() : Int;
	
	/**
	* Always returns {@code false} because this input stream does not support
	* the {@link #mark mark()} and {@link #reset reset()} methods.
	*
	* @return false, always
	*/
	@:overload @:public override public function markSupported() : Bool;
	
	/**
	* <i>This operation is not supported</i>.
	*
	* @param limit maximum bytes that can be read before invalidating the position marker
	*/
	@:overload @:public override public function mark(limit : Int) : Void;
	
	/**
	* <i>This operation is not supported</i>.
	*
	* @throws IOException always thrown
	*/
	@:overload @:public override public function reset() : Void;
	
	
}
