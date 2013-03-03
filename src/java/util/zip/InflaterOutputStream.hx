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
extern class InflaterOutputStream extends java.io.FilterOutputStream
{
	/** Decompressor for this stream. */
	@:protected @:final private var inf(default, null) : java.util.zip.Inflater;
	
	/** Output buffer for writing uncompressed data. */
	@:protected @:final private var buf(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Creates a new output stream with a default decompressor and buffer
	* size.
	*
	* @param out output stream to write the uncompressed data to
	* @throws NullPointerException if {@code out} is null
	*/
	@:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Creates a new output stream with the specified decompressor and a
	* default buffer size.
	*
	* @param out output stream to write the uncompressed data to
	* @param infl decompressor ("inflater") for this stream
	* @throws NullPointerException if {@code out} or {@code infl} is null
	*/
	@:overload @:public public function new(out : java.io.OutputStream, infl : java.util.zip.Inflater) : Void;
	
	/**
	* Creates a new output stream with the specified decompressor and
	* buffer size.
	*
	* @param out output stream to write the uncompressed data to
	* @param infl decompressor ("inflater") for this stream
	* @param bufLen decompression buffer size
	* @throws IllegalArgumentException if {@code bufLen} is <= 0
	* @throws NullPointerException if {@code out} or {@code infl} is null
	*/
	@:overload @:public public function new(out : java.io.OutputStream, infl : java.util.zip.Inflater, bufLen : Int) : Void;
	
	/**
	* Writes any remaining uncompressed data to the output stream and closes
	* the underlying output stream.
	*
	* @throws IOException if an I/O error occurs
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* Flushes this output stream, forcing any pending buffered output bytes to be
	* written.
	*
	* @throws IOException if an I/O error occurs or this stream is already
	* closed
	*/
	@:overload @:public override public function flush() : Void;
	
	/**
	* Finishes writing uncompressed data to the output stream without closing
	* the underlying stream.  Use this method when applying multiple filters in
	* succession to the same output stream.
	*
	* @throws IOException if an I/O error occurs or this stream is already
	* closed
	*/
	@:overload @:public public function finish() : Void;
	
	/**
	* Writes a byte to the uncompressed output stream.
	*
	* @param b a single byte of compressed data to decompress and write to
	* the output stream
	* @throws IOException if an I/O error occurs or this stream is already
	* closed
	* @throws ZipException if a compression (ZIP) format error occurs
	*/
	@:overload @:public override public function write(b : Int) : Void;
	
	/**
	* Writes an array of bytes to the uncompressed output stream.
	*
	* @param b buffer containing compressed data to decompress and write to
	* the output stream
	* @param off starting offset of the compressed data within {@code b}
	* @param len number of bytes to decompress from {@code b}
	* @throws IndexOutOfBoundsException if {@code off} < 0, or if
	* {@code len} < 0, or if {@code len} > {@code b.length - off}
	* @throws IOException if an I/O error occurs or this stream is already
	* closed
	* @throws NullPointerException if {@code b} is null
	* @throws ZipException if a compression (ZIP) format error occurs
	*/
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	
}
