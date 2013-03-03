package java.util.zip;
/*
* Copyright (c) 1996, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class DeflaterOutputStream extends java.io.FilterOutputStream
{
	/**
	* Compressor for this stream.
	*/
	@:protected private var def : java.util.zip.Deflater;
	
	/**
	* Output buffer for writing compressed data.
	*/
	@:protected private var buf : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Creates a new output stream with the specified compressor,
	* buffer size and flush mode.

	* @param out the output stream
	* @param def the compressor ("deflater")
	* @param size the output buffer size
	* @param syncFlush
	*        if {@code true} the {@link #flush()} method of this
	*        instance flushes the compressor with flush mode
	*        {@link Deflater#SYNC_FLUSH} before flushing the output
	*        stream, otherwise only flushes the output stream
	*
	* @throws IllegalArgumentException if size is <= 0
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function new(out : java.io.OutputStream, def : java.util.zip.Deflater, size : Int, syncFlush : Bool) : Void;
	
	/**
	* Creates a new output stream with the specified compressor and
	* buffer size.
	*
	* <p>The new output stream instance is created as if by invoking
	* the 4-argument constructor DeflaterOutputStream(out, def, size, false).
	*
	* @param out the output stream
	* @param def the compressor ("deflater")
	* @param size the output buffer size
	* @exception IllegalArgumentException if size is <= 0
	*/
	@:overload @:public public function new(out : java.io.OutputStream, def : java.util.zip.Deflater, size : Int) : Void;
	
	/**
	* Creates a new output stream with the specified compressor, flush
	* mode and a default buffer size.
	*
	* @param out the output stream
	* @param def the compressor ("deflater")
	* @param syncFlush
	*        if {@code true} the {@link #flush()} method of this
	*        instance flushes the compressor with flush mode
	*        {@link Deflater#SYNC_FLUSH} before flushing the output
	*        stream, otherwise only flushes the output stream
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function new(out : java.io.OutputStream, def : java.util.zip.Deflater, syncFlush : Bool) : Void;
	
	/**
	* Creates a new output stream with the specified compressor and
	* a default buffer size.
	*
	* <p>The new output stream instance is created as if by invoking
	* the 3-argument constructor DeflaterOutputStream(out, def, false).
	*
	* @param out the output stream
	* @param def the compressor ("deflater")
	*/
	@:overload @:public public function new(out : java.io.OutputStream, def : java.util.zip.Deflater) : Void;
	
	/**
	* Creates a new output stream with a default compressor, a default
	* buffer size and the specified flush mode.
	*
	* @param out the output stream
	* @param syncFlush
	*        if {@code true} the {@link #flush()} method of this
	*        instance flushes the compressor with flush mode
	*        {@link Deflater#SYNC_FLUSH} before flushing the output
	*        stream, otherwise only flushes the output stream
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function new(out : java.io.OutputStream, syncFlush : Bool) : Void;
	
	/**
	* Creates a new output stream with a default compressor and buffer size.
	*
	* <p>The new output stream instance is created as if by invoking
	* the 2-argument constructor DeflaterOutputStream(out, false).
	*
	* @param out the output stream
	*/
	@:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Writes a byte to the compressed output stream. This method will
	* block until the byte can be written.
	* @param b the byte to be written
	* @exception IOException if an I/O error has occurred
	*/
	@:overload @:public override public function write(b : Int) : Void;
	
	/**
	* Writes an array of bytes to the compressed output stream. This
	* method will block until all the bytes are written.
	* @param b the data to be written
	* @param off the start offset of the data
	* @param len the length of the data
	* @exception IOException if an I/O error has occurred
	*/
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Finishes writing compressed data to the output stream without closing
	* the underlying stream. Use this method when applying multiple filters
	* in succession to the same output stream.
	* @exception IOException if an I/O error has occurred
	*/
	@:overload @:public public function finish() : Void;
	
	/**
	* Writes remaining compressed data to the output stream and closes the
	* underlying stream.
	* @exception IOException if an I/O error has occurred
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* Writes next block of compressed data to the output stream.
	* @throws IOException if an I/O error has occurred
	*/
	@:overload @:protected private function deflate() : Void;
	
	/**
	* Flushes the compressed output stream.
	*
	* If {@link #DeflaterOutputStream(OutputStream, Deflater, int, boolean)
	* syncFlush} is {@code true} when this compressed output stream is
	* constructed, this method first flushes the underlying {@code compressor}
	* with the flush mode {@link Deflater#SYNC_FLUSH} to force
	* all pending data to be flushed out to the output stream and then
	* flushes the output stream. Otherwise this method only flushes the
	* output stream without flushing the {@code compressor}.
	*
	* @throws IOException if an I/O error has occurred
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public override public function flush() : Void;
	
	
}
