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
* @(#)BEncoderStream.java    1.3 02/03/27
*/
extern class BEncoderStream extends com.sun.xml.internal.messaging.saaj.packaging.mime.util.BASE64EncoderStream
{
	/**
	* Create a 'B' encoder that encodes the specified input stream.
	* @param out        the output stream
	*/
	@:overload public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Returns the length of the encoded version of this byte array.
	*/
	@:overload public static function encodedLength(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	
}