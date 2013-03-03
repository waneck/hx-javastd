package com.sun.xml.internal.org.jvnet.fastinfoset.sax;
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
extern interface EncodingAlgorithmContentHandler
{
	/**
	* Receive notification of encoding algorithm data as an array
	* of byte.
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Such notifications will occur for a Fast Infoset SAX parser
	* when processing encoding algorithm data.<p>
	*
	* <p>The Parser will call the method of this interface to report each
	* encoding algorithm data. Parsers MUST return all contiguous
	* characters in a single chunk</p>
	*
	* <p>Parsers may return all contiguous bytes in a single chunk, or
	* they may split it into several chunks providing that the length of
	* each chunk is of the required length to successfully apply the
	* encoding algorithm to the chunk.</p>
	*
	* @param URI the URI of the encoding algorithm
	* @param algorithm the encoding algorithm index
	* @param b the array of byte
	* @param start the start position in the array
	* @param length the number of byte to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see com.sun.xml.internal.org.jvnet.fastinfoset.EncodingAlgorithmIndexes
	*/
	@:overload @:public public function octets(URI : String, algorithm : Int, b : java.NativeArray<java.StdTypes.Int8>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of encoding algorithm data as an object.
	*
	* <p>Such notifications will occur for a Fast Infoset SAX parser
	* when processing encoding algorithm data that is converted from an
	* array of byte to an object more suitable for processing.<p>
	*
	* @param URI the URI of the encoding algorithm
	* @param algorithm the encoding algorithm index
	* @param o the encoding algorithm object
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see com.sun.xml.internal.org.jvnet.fastinfoset.EncodingAlgorithmIndexes
	*/
	@:overload @:public public function object(URI : String, algorithm : Int, o : Dynamic) : Void;
	
	
}
