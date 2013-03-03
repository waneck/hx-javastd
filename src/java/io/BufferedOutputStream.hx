package java.io;
/*
* Copyright (c) 1994, 2003, Oracle and/or its affiliates. All rights reserved.
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
* The class implements a buffered output stream. By setting up such
* an output stream, an application can write bytes to the underlying
* output stream without necessarily causing a call to the underlying
* system for each byte written.
*
* @author  Arthur van Hoff
* @since   JDK1.0
*/
@:require(java0) extern class BufferedOutputStream extends java.io.FilterOutputStream
{
	/**
	* The internal buffer where data is stored.
	*/
	@:protected private var buf : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* The number of valid bytes in the buffer. This value is always
	* in the range <tt>0</tt> through <tt>buf.length</tt>; elements
	* <tt>buf[0]</tt> through <tt>buf[count-1]</tt> contain valid
	* byte data.
	*/
	@:protected private var count : Int;
	
	/**
	* Creates a new buffered output stream to write data to the
	* specified underlying output stream.
	*
	* @param   out   the underlying output stream.
	*/
	@:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Creates a new buffered output stream to write data to the
	* specified underlying output stream with the specified buffer
	* size.
	*
	* @param   out    the underlying output stream.
	* @param   size   the buffer size.
	* @exception IllegalArgumentException if size &lt;= 0.
	*/
	@:overload @:public public function new(out : java.io.OutputStream, size : Int) : Void;
	
	/**
	* Writes the specified byte to this buffered output stream.
	*
	* @param      b   the byte to be written.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload @:public @:synchronized override public function write(b : Int) : Void;
	
	/**
	* Writes <code>len</code> bytes from the specified byte array
	* starting at offset <code>off</code> to this buffered output stream.
	*
	* <p> Ordinarily this method stores bytes from the given array into this
	* stream's buffer, flushing the buffer to the underlying output stream as
	* needed.  If the requested length is at least as large as this stream's
	* buffer, however, then this method will flush the buffer and write the
	* bytes directly to the underlying output stream.  Thus redundant
	* <code>BufferedOutputStream</code>s will not copy data unnecessarily.
	*
	* @param      b     the data.
	* @param      off   the start offset in the data.
	* @param      len   the number of bytes to write.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload @:public @:synchronized override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Flushes this buffered output stream. This forces any buffered
	* output bytes to be written out to the underlying output stream.
	*
	* @exception  IOException  if an I/O error occurs.
	* @see        java.io.FilterOutputStream#out
	*/
	@:overload @:public @:synchronized override public function flush() : Void;
	
	
}
