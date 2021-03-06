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
* @(#)QPDecoderStream.java   1.9 02/04/02
*/
/**
* This class implements a QP Decoder. It is implemented as
* a FilterInputStream, so one can just wrap this class around
* any input stream and read bytes from this filter. The decoding
* is done as the bytes are read out.
*
* @author John Mani
*/
extern class QPDecoderStream extends java.io.FilterInputStream
{
	@:protected private var ba : java.NativeArray<java.StdTypes.Int8>;
	
	@:protected private var spaces : Int;
	
	/**
	* Create a Quoted Printable decoder that decodes the specified
	* input stream.
	* @param in        the input stream
	*/
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Read the next decoded byte from this input stream. The byte
	* is returned as an <code>int</code> in the range <code>0</code>
	* to <code>255</code>. If no byte is available because the end of
	* the stream has been reached, the value <code>-1</code> is returned.
	* This method blocks until input data is available, the end of the
	* stream is detected, or an exception is thrown.
	*
	* @return     the next byte of data, or <code>-1</code> if the end of the
	*             stream is reached.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload @:public override public function read() : Int;
	
	/**
	* Reads up to <code>len</code> decoded bytes of data from this input stream
	* into an array of bytes. This method blocks until some input is
	* available.
	* <p>
	*
	* @param      buf   the buffer into which the data is read.
	* @param      off   the start offset of the data.
	* @param      len   the maximum number of bytes read.
	* @return     the total number of bytes read into the buffer, or
	*             <code>-1</code> if there is no more data because the end of
	*             the stream has been reached.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload @:public override public function read(buf : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Tests if this input stream supports marks. Currently this class
	* does not support marks
	*/
	@:overload @:public override public function markSupported() : Bool;
	
	/**
	* Returns the number of bytes that can be read from this input
	* stream without blocking. The QP algorithm does not permit
	* a priori knowledge of the number of bytes after decoding, so
	* this method just invokes the <code>available</code> method
	* of the original input stream.
	*/
	@:overload @:public override public function available() : Int;
	
	
}
