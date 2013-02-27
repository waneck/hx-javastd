package sun.net.www.http;
/*
* Copyright (c) 1999, 2006, Oracle and/or its affiliates. All rights reserved.
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
* A <code>ChunkedInputStream</code> provides a stream for reading a body of
* a http message that can be sent as a series of chunks, each with its own
* size indicator. Optionally the last chunk can be followed by trailers
* containing entity-header fields.
* <p>
* A <code>ChunkedInputStream</code> is also <code>Hurryable</code> so it
* can be hurried to the end of the stream if the bytes are available on
* the underlying stream.
*/
extern class ChunkedInputStream extends java.io.InputStream implements sun.net.www.http.Hurryable
{
	/**
	* Creates a <code>ChunkedInputStream</code> and saves its  arguments, for
	* later use.
	*
	* @param   in   the underlying input stream.
	* @param   hc   the HttpClient
	* @param   responses   the MessageHeader that should be populated with optional
	*                      trailers.
	*/
	@:overload public function new(_in : java.io.InputStream, hc : sun.net.www.http.HttpClient, responses : sun.net.www.MessageHeader) : Void;
	
	/**
	* See
	* the general contract of the <code>read</code>
	* method of <code>InputStream</code>.
	*
	* @return     the next byte of data, or <code>-1</code> if the end of the
	*             stream is reached.
	* @exception  IOException  if an I/O error occurs.
	* @see        java.io.FilterInputStream#in
	*/
	@:overload @:synchronized override public function read() : Int;
	
	/**
	* Reads bytes from this stream into the specified byte array, starting at
	* the given offset.
	*
	* @param      b     destination buffer.
	* @param      off   offset at which to start storing bytes.
	* @param      len   maximum number of bytes to read.
	* @return     the number of bytes read, or <code>-1</code> if the end of
	*             the stream has been reached.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload @:synchronized override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Returns the number of bytes that can be read from this input
	* stream without blocking.
	*
	* @return     the number of bytes that can be read from this input
	*             stream without blocking.
	* @exception  IOException  if an I/O error occurs.
	* @see        java.io.FilterInputStream#in
	*/
	@:overload @:synchronized override public function available() : Int;
	
	/**
	* Close the stream by either returning the connection to the
	* keep alive cache or closing the underlying stream.
	* <p>
	* If the chunked response hasn't been completely read we
	* try to "hurry" to the end of the response. If this is
	* possible (without blocking) then the connection can be
	* returned to the keep alive cache.
	*
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload @:synchronized override public function close() : Void;
	
	/**
	* Hurry the input stream by reading everything from the underlying
	* stream. If the last chunk (and optional trailers) can be read without
	* blocking then the stream is considered hurried.
	* <p>
	* Note that if an error has occured or we can't get to last chunk
	* without blocking then this stream can't be hurried and should be
	* closed.
	*/
	@:overload @:synchronized public function hurry() : Bool;
	
	
}
