package java.io;
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
/**
* Piped character-input streams.
*
* @author      Mark Reinhold
* @since       JDK1.1
*/
@:require(java1) extern class PipedReader extends java.io.Reader
{
	/**
	* Creates a <code>PipedReader</code> so
	* that it is connected to the piped writer
	* <code>src</code>. Data written to <code>src</code>
	* will then be available as input from this stream.
	*
	* @param      src   the stream to connect to.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload public function new(src : java.io.PipedWriter) : Void;
	
	/**
	* Creates a <code>PipedReader</code> so that it is connected
	* to the piped writer <code>src</code> and uses the specified
	* pipe size for the pipe's buffer. Data written to <code>src</code>
	* will then be  available as input from this stream.

	* @param      src       the stream to connect to.
	* @param      pipeSize  the size of the pipe's buffer.
	* @exception  IOException  if an I/O error occurs.
	* @exception  IllegalArgumentException if <code>pipeSize <= 0</code>.
	* @since      1.6
	*/
	@:require(java6) @:overload public function new(src : java.io.PipedWriter, pipeSize : Int) : Void;
	
	/**
	* Creates a <code>PipedReader</code> so
	* that it is not yet {@linkplain #connect(java.io.PipedWriter)
	* connected}. It must be {@linkplain java.io.PipedWriter#connect(
	* java.io.PipedReader) connected} to a <code>PipedWriter</code>
	* before being used.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a <code>PipedReader</code> so that it is not yet
	* {@link #connect(java.io.PipedWriter) connected} and uses
	* the specified pipe size for the pipe's buffer.
	* It must be  {@linkplain java.io.PipedWriter#connect(
	* java.io.PipedReader) connected} to a <code>PipedWriter</code>
	* before being used.
	*
	* @param   pipeSize the size of the pipe's buffer.
	* @exception  IllegalArgumentException if <code>pipeSize <= 0</code>.
	* @since      1.6
	*/
	@:require(java6) @:overload public function new(pipeSize : Int) : Void;
	
	/**
	* Causes this piped reader to be connected
	* to the piped  writer <code>src</code>.
	* If this object is already connected to some
	* other piped writer, an <code>IOException</code>
	* is thrown.
	* <p>
	* If <code>src</code> is an
	* unconnected piped writer and <code>snk</code>
	* is an unconnected piped reader, they
	* may be connected by either the call:
	* <p>
	* <pre><code>snk.connect(src)</code> </pre>
	* <p>
	* or the call:
	* <p>
	* <pre><code>src.connect(snk)</code> </pre>
	* <p>
	* The two
	* calls have the same effect.
	*
	* @param      src   The piped writer to connect to.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload public function connect(src : java.io.PipedWriter) : Void;
	
	/**
	* Reads the next character of data from this piped stream.
	* If no character is available because the end of the stream
	* has been reached, the value <code>-1</code> is returned.
	* This method blocks until input data is available, the end of
	* the stream is detected, or an exception is thrown.
	*
	* @return     the next character of data, or <code>-1</code> if the end of the
	*             stream is reached.
	* @exception  IOException  if the pipe is
	*          <a href=PipedInputStream.html#BROKEN> <code>broken</code></a>,
	*          {@link #connect(java.io.PipedWriter) unconnected}, closed,
	*          or an I/O error occurs.
	*/
	@:overload @:synchronized override public function read() : Int;
	
	/**
	* Reads up to <code>len</code> characters of data from this piped
	* stream into an array of characters. Less than <code>len</code> characters
	* will be read if the end of the data stream is reached or if
	* <code>len</code> exceeds the pipe's buffer size. This method
	* blocks until at least one character of input is available.
	*
	* @param      cbuf     the buffer into which the data is read.
	* @param      off   the start offset of the data.
	* @param      len   the maximum number of characters read.
	* @return     the total number of characters read into the buffer, or
	*             <code>-1</code> if there is no more data because the end of
	*             the stream has been reached.
	* @exception  IOException  if the pipe is
	*                  <a href=PipedInputStream.html#BROKEN> <code>broken</code></a>,
	*                  {@link #connect(java.io.PipedWriter) unconnected}, closed,
	*                  or an I/O error occurs.
	*/
	@:overload @:synchronized override public function read(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Int;
	
	/**
	* Tell whether this stream is ready to be read.  A piped character
	* stream is ready if the circular buffer is not empty.
	*
	* @exception  IOException  if the pipe is
	*                  <a href=PipedInputStream.html#BROKEN> <code>broken</code></a>,
	*                  {@link #connect(java.io.PipedWriter) unconnected}, or closed.
	*/
	@:overload @:synchronized override public function ready() : Bool;
	
	/**
	* Closes this piped stream and releases any system resources
	* associated with the stream.
	*
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload override public function close() : Void;
	
	
}
