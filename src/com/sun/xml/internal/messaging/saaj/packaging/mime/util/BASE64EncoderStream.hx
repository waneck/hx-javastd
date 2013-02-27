package com.sun.xml.internal.messaging.saaj.packaging.mime.util;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
/*
* @(#)BASE64EncoderStream.java       1.6 02/03/27
*/
/**
* This class implements a BASE64 Encoder. It is implemented as
* a FilterOutputStream, so one can just wrap this class around
* any output stream and write bytes into this filter. The Encoding
* is done as the bytes are written out.
*
* @author John Mani
* @author Bill Shannon
*/
extern class BASE64EncoderStream extends java.io.FilterOutputStream
{
	/**
	* Create a BASE64 encoder that encodes the specified input stream
	* @param out        the output stream
	* @param bytesPerLine  number of bytes per line. The encoder inserts
	*                   a CRLF sequence after the specified number of bytes
	*/
	@:overload public function new(out : java.io.OutputStream, bytesPerLine : Int) : Void;
	
	/**
	* Create a BASE64 encoder that encodes the specified input stream.
	* Inserts the CRLF sequence after outputting 76 bytes.
	* @param out        the output stream
	*/
	@:overload public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Encodes <code>len</code> bytes from the specified
	* <code>byte</code> array starting at offset <code>off</code> to
	* this output stream.
	*
	* @param      b     the data.
	* @param      off   the start offset in the data.
	* @param      len   the number of bytes to write.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Encodes <code>b.length</code> bytes to this output stream.
	* @param      b   the data to be written.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Encodes the specified <code>byte</code> to this output stream.
	* @param      c   the <code>byte</code>.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload override public function write(c : Int) : Void;
	
	/**
	* Flushes this output stream and forces any buffered output bytes
	* to be encoded out to the stream.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload override public function flush() : Void;
	
	/**
	* Forces any buffered output bytes to be encoded out to the stream
	* and closes this output stream
	*/
	@:overload override public function close() : Void;
	
	/**
	* Base64 encode a byte array.  No line breaks are inserted.
	* This method is suitable for short strings, such as those
	* in the IMAP AUTHENTICATE protocol, but not to encode the
	* entire content of a MIME part.
	*/
	@:native('encode') @:overload public static function _encode(inbuf : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}