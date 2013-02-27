package java.util.zip;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class InflaterInputStream extends java.io.FilterInputStream
{
	/**
	* Decompressor for this stream.
	*/
	private var inf : java.util.zip.Inflater;
	
	/**
	* Input buffer for decompression.
	*/
	private var buf : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Length of input buffer.
	*/
	private var len : Int;
	
	/**
	* Creates a new input stream with the specified decompressor and
	* buffer size.
	* @param in the input stream
	* @param inf the decompressor ("inflater")
	* @param size the input buffer size
	* @exception IllegalArgumentException if size is <= 0
	*/
	@:overload public function new(_in : java.io.InputStream, inf : java.util.zip.Inflater, size : Int) : Void;
	
	/**
	* Creates a new input stream with the specified decompressor and a
	* default buffer size.
	* @param in the input stream
	* @param inf the decompressor ("inflater")
	*/
	@:overload public function new(_in : java.io.InputStream, inf : java.util.zip.Inflater) : Void;
	
	/**
	* Creates a new input stream with a default decompressor and buffer size.
	* @param in the input stream
	*/
	@:overload public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Reads a byte of uncompressed data. This method will block until
	* enough input is available for decompression.
	* @return the byte read, or -1 if end of compressed input is reached
	* @exception IOException if an I/O error has occurred
	*/
	@:overload override public function read() : Int;
	
	/**
	* Reads uncompressed data into an array of bytes. If <code>len</code> is not
	* zero, the method will block until some input can be decompressed; otherwise,
	* no bytes are read and <code>0</code> is returned.
	* @param b the buffer into which the data is read
	* @param off the start offset in the destination array <code>b</code>
	* @param len the maximum number of bytes read
	* @return the actual number of bytes read, or -1 if the end of the
	*         compressed input is reached or a preset dictionary is needed
	* @exception  NullPointerException If <code>b</code> is <code>null</code>.
	* @exception  IndexOutOfBoundsException If <code>off</code> is negative,
	* <code>len</code> is negative, or <code>len</code> is greater than
	* <code>b.length - off</code>
	* @exception ZipException if a ZIP format error has occurred
	* @exception IOException if an I/O error has occurred
	*/
	@:overload override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Returns 0 after EOF has been reached, otherwise always return 1.
	* <p>
	* Programs should not count on this method to return the actual number
	* of bytes that could be read without blocking.
	*
	* @return     1 before EOF and 0 after EOF.
	* @exception  IOException  if an I/O error occurs.
	*
	*/
	@:overload override public function available() : Int;
	
	/**
	* Skips specified number of bytes of uncompressed data.
	* @param n the number of bytes to skip
	* @return the actual number of bytes skipped.
	* @exception IOException if an I/O error has occurred
	* @exception IllegalArgumentException if n < 0
	*/
	@:overload override public function skip(n : haxe.Int64) : haxe.Int64;
	
	/**
	* Closes this input stream and releases any system resources associated
	* with the stream.
	* @exception IOException if an I/O error has occurred
	*/
	@:overload override public function close() : Void;
	
	/**
	* Fills input buffer with more data to decompress.
	* @exception IOException if an I/O error has occurred
	*/
	@:overload private function fill() : Void;
	
	/**
	* Tests if this input stream supports the <code>mark</code> and
	* <code>reset</code> methods. The <code>markSupported</code>
	* method of <code>InflaterInputStream</code> returns
	* <code>false</code>.
	*
	* @return  a <code>boolean</code> indicating if this stream type supports
	*          the <code>mark</code> and <code>reset</code> methods.
	* @see     java.io.InputStream#mark(int)
	* @see     java.io.InputStream#reset()
	*/
	@:overload override public function markSupported() : Bool;
	
	/**
	* Marks the current position in this input stream.
	*
	* <p> The <code>mark</code> method of <code>InflaterInputStream</code>
	* does nothing.
	*
	* @param   readlimit   the maximum limit of bytes that can be read before
	*                      the mark position becomes invalid.
	* @see     java.io.InputStream#reset()
	*/
	@:overload @:synchronized override public function mark(readlimit : Int) : Void;
	
	/**
	* Repositions this stream to the position at the time the
	* <code>mark</code> method was last called on this input stream.
	*
	* <p> The method <code>reset</code> for class
	* <code>InflaterInputStream</code> does nothing except throw an
	* <code>IOException</code>.
	*
	* @exception  IOException  if this method is invoked.
	* @see     java.io.InputStream#mark(int)
	* @see     java.io.IOException
	*/
	@:overload @:synchronized override public function reset() : Void;
	
	
}
