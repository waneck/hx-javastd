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
* @(#)LineInputStream.java   1.7 03/01/07
*/
/**
* This class is to support reading CRLF terminated lines that
* contain only US-ASCII characters from an input stream. Provides
* functionality that is similar to the deprecated
* <code>DataInputStream.readLine()</code>. Expected use is to read
* lines as String objects from a RFC822 stream.
*
* It is implemented as a FilterInputStream, so one can just wrap
* this class around any input stream and read bytes from this filter.
*
* @author John Mani
*/
extern class LineInputStream extends java.io.FilterInputStream
{
	@:overload public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Read a line containing only ASCII characters from the input
	* stream. A line is terminated by a CR or NL or CR-NL sequence.
	* A common error is a CR-CR-NL sequence, which will also terminate
	* a line.
	* The line terminator is not returned as part of the returned
	* String. Returns null if no data is available. <p>
	*
	* This class is similar to the deprecated
	* <code>DataInputStream.readLine()</code>
	*/
	@:overload public function readLine() : String;
	
	
}
