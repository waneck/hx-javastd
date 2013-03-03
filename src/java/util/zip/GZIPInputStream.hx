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
extern class GZIPInputStream extends java.util.zip.InflaterInputStream
{
	/**
	* CRC-32 for uncompressed data.
	*/
	@:protected private var crc : java.util.zip.CRC32;
	
	/**
	* Indicates end of input stream.
	*/
	@:protected private var eos : Bool;
	
	/**
	* Creates a new input stream with the specified buffer size.
	* @param in the input stream
	* @param size the input buffer size
	*
	* @exception ZipException if a GZIP format error has occurred or the
	*                         compression method used is unsupported
	* @exception IOException if an I/O error has occurred
	* @exception IllegalArgumentException if size is <= 0
	*/
	@:overload @:public public function new(_in : java.io.InputStream, size : Int) : Void;
	
	/**
	* Creates a new input stream with a default buffer size.
	* @param in the input stream
	*
	* @exception ZipException if a GZIP format error has occurred or the
	*                         compression method used is unsupported
	* @exception IOException if an I/O error has occurred
	*/
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Reads uncompressed data into an array of bytes. If <code>len</code> is not
	* zero, the method will block until some input can be decompressed; otherwise,
	* no bytes are read and <code>0</code> is returned.
	* @param buf the buffer into which the data is read
	* @param off the start offset in the destination array <code>b</code>
	* @param len the maximum number of bytes read
	* @return  the actual number of bytes read, or -1 if the end of the
	*          compressed input stream is reached
	*
	* @exception  NullPointerException If <code>buf</code> is <code>null</code>.
	* @exception  IndexOutOfBoundsException If <code>off</code> is negative,
	* <code>len</code> is negative, or <code>len</code> is greater than
	* <code>buf.length - off</code>
	* @exception ZipException if the compressed input data is corrupt.
	* @exception IOException if an I/O error has occurred.
	*
	*/
	@:overload @:public override public function read(buf : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Closes this input stream and releases any system resources associated
	* with the stream.
	* @exception IOException if an I/O error has occurred
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* GZIP header magic number.
	*/
	@:public @:final @:static public static var GZIP_MAGIC(default, null) : Int;
	
	
}
