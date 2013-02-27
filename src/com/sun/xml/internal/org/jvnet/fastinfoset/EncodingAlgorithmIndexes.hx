package com.sun.xml.internal.org.jvnet.fastinfoset;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
/**
* The indexes of built-in encoding algorithms.
*
* <p>The indexes of the built-in encoding algorithms are specified
* in ITU-T Rec. X.891 | ISO/IEC 24824-1 (Fast Infoset), clause
* 10. The indexes start from 0 instead of 1 as specified.<p>
*
* @see com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmContentHandler
* @see com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmAttributes
*/
extern class EncodingAlgorithmIndexes
{
	public static var HEXADECIMAL(default, null) : Int;
	
	public static var BASE64(default, null) : Int;
	
	public static var SHORT(default, null) : Int;
	
	public static var INT(default, null) : Int;
	
	public static var LONG(default, null) : Int;
	
	public static var BOOLEAN(default, null) : Int;
	
	public static var FLOAT(default, null) : Int;
	
	public static var DOUBLE(default, null) : Int;
	
	public static var UUID(default, null) : Int;
	
	public static var CDATA(default, null) : Int;
	
	
}
