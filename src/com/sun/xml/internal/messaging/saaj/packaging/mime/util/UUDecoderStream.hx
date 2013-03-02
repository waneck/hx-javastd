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
* @(#)UUDecoderStream.java   1.8 02/07/08
*/
/**
* This class implements a UUDecoder. It is implemented as
* a FilterInputStream, so one can just wrap this class around
* any input stream and read bytes from this filter. The decoding
* is done as the bytes are read out.
*
* @author John Mani
* @author Bill Shannon
*/
extern class UUDecoderStream extends java.io.FilterInputStream
{
	/**
	* Create a UUdecoder that decodes the specified input stream
	* @param in        the input stream
	*/
	@:overload public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Read the next decoded byte from this input stream. The byte
	* is returned as an <code>int</code> in the range <code>0</code>
	* to <code>255</code>. If no byte is available because the end of
	* the stream has been reached, the value <code>-1</code> is returned.
	* This method blocks until input data is available, the end of the
	* stream is detected, or an exception is thrown.
	*
	* @return     next byte of data, or <code>-1</code> if the end of
	*             stream is reached.
	* @exception  IOException  if an I/O error occurs.
	* @see        java.io.FilterInputStream#in
	*/
	@:overload public function read() : Int;
	
	@:overload public function read(buf : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload public function markSupported() : Bool;
	
	@:overload public function available() : Int;
	
	/**
	* Get the "name" field from the prefix. This is meant to
	* be the pathname of the decoded file
	*
	* @return     name of decoded file
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload public function getName() : String;
	
	/**
	* Get the "mode" field from the prefix. This is the permission
	* mode of the source file.
	*
	* @return     permission mode of source file
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload public function getMode() : Int;
	
	
}
