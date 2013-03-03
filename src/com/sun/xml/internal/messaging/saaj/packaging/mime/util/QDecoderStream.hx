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
* @(#)QDecoderStream.java    1.5 02/03/27
*/
extern class QDecoderStream extends com.sun.xml.internal.messaging.saaj.packaging.mime.util.QPDecoderStream
{
	/**
	* Create a Q-decoder that decodes the specified input stream.
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
	
	
}
