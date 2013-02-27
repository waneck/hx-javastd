package java.util.zip;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class GZIPOutputStream extends java.util.zip.DeflaterOutputStream
{
	/**
	* CRC-32 of uncompressed data.
	*/
	private var crc : java.util.zip.CRC32;
	
	/**
	* Creates a new output stream with the specified buffer size.
	*
	* <p>The new output stream instance is created as if by invoking
	* the 3-argument constructor GZIPOutputStream(out, size, false).
	*
	* @param out the output stream
	* @param size the output buffer size
	* @exception IOException If an I/O error has occurred.
	* @exception IllegalArgumentException if size is <= 0

	*/
	@:overload public function new(out : java.io.OutputStream, size : Int) : Void;
	
	/**
	* Creates a new output stream with the specified buffer size and
	* flush mode.
	*
	* @param out the output stream
	* @param size the output buffer size
	* @param syncFlush
	*        if {@code true} invocation of the inherited
	*        {@link DeflaterOutputStream#flush() flush()} method of
	*        this instance flushes the compressor with flush mode
	*        {@link Deflater#SYNC_FLUSH} before flushing the output
	*        stream, otherwise only flushes the output stream
	* @exception IOException If an I/O error has occurred.
	* @exception IllegalArgumentException if size is <= 0
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(out : java.io.OutputStream, size : Int, syncFlush : Bool) : Void;
	
	/**
	* Creates a new output stream with a default buffer size.
	*
	* <p>The new output stream instance is created as if by invoking
	* the 2-argument constructor GZIPOutputStream(out, false).
	*
	* @param out the output stream
	* @exception IOException If an I/O error has occurred.
	*/
	@:overload public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Creates a new output stream with a default buffer size and
	* the specified flush mode.
	*
	* @param out the output stream
	* @param syncFlush
	*        if {@code true} invocation of the inherited
	*        {@link DeflaterOutputStream#flush() flush()} method of
	*        this instance flushes the compressor with flush mode
	*        {@link Deflater#SYNC_FLUSH} before flushing the output
	*        stream, otherwise only flushes the output stream
	*
	* @exception IOException If an I/O error has occurred.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function new(out : java.io.OutputStream, syncFlush : Bool) : Void;
	
	/**
	* Writes array of bytes to the compressed output stream. This method
	* will block until all the bytes are written.
	* @param buf the data to be written
	* @param off the start offset of the data
	* @param len the length of the data
	* @exception IOException If an I/O error has occurred.
	*/
	@:overload @:synchronized override public function write(buf : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Finishes writing compressed data to the output stream without closing
	* the underlying stream. Use this method when applying multiple filters
	* in succession to the same output stream.
	* @exception IOException if an I/O error has occurred
	*/
	@:overload override public function finish() : Void;
	
	
}
