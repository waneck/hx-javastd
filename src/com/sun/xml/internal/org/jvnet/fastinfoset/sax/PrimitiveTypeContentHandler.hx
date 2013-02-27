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
extern interface PrimitiveTypeContentHandler
{
	/**
	* Receive notification of character data as an array of boolean.
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Such notifications will occur for a Fast Infoset SAX parser
	* when processing data encoded using the "boolean" encoding
	* algorithm, see subclause 10.7<p>.
	*
	* @param b the array of boolean
	* @param start the start position in the array
	* @param length the number of boolean to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload public function booleans(b : java.NativeArray<Bool>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of character data as an array of byte.
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Such notifications will occur for a Fast Infoset SAX parser
	* when processing data encoded using the "base64" encoding
	* algorithm, see subclause 10.3, or the "hexadecimal" encoding
	* algorithm, see subclause 10.2.
	*
	* <p>Such a notification may occur for binary data that would
	* normally require base 64 encoding and reported as character data
	* using the {@link org.xml.sax.ContentHandler#characters characters}
	* method <p>.
	*
	* @param b the array of byte
	* @param start the start position in the array
	* @param length the number of byte to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload public function bytes(b : java.NativeArray<java.StdTypes.Int8>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of character data as an array of short.
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Such notifications will occur for a Fast Infoset SAX parser
	* when processing data encoded using the "short" encoding
	* algorithm, see subclause 10.4<p>.
	*
	* @param s the array of short
	* @param start the start position in the array
	* @param length the number of short to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload public function shorts(s : java.NativeArray<java.StdTypes.Int16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of character data as an array of int.
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Such notifications will occur for a Fast Infoset SAX parser
	* when processing data encoded using the "int" encoding
	* algorithm, see subclause 10.5<p>.
	*
	* @param i the array of int
	* @param start the start position in the array
	* @param length the number of int to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload public function ints(i : java.NativeArray<Int>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of character data as an array of long.
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Such notifications will occur for a Fast Infoset SAX parser
	* when processing data encoded using the "long" encoding
	* algorithm, see subclause 10.6<p>.
	*
	* @param l the array of long
	* @param start the start position in the array
	* @param length the number of long to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload public function longs(l : java.NativeArray<haxe.Int64>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of character data as an array of float.
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Such notifications will occur for a Fast Infoset SAX parser
	* when processing data encoded using the "float" encoding
	* algorithm, see subclause 10.8<p>.
	*
	* @param f the array of float
	* @param start the start position in the array
	* @param length the number of float to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload public function floats(f : java.NativeArray<Single>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of character data as an array of double.
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Such notifications will occur for a Fast Infoset SAX parser
	* when processing data encoded using the "double" encoding
	* algorithm, see subclause 10.9<p>.
	*
	* @param d the array of double
	* @param start the start position in the array
	* @param length the number of double to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload public function doubles(d : java.NativeArray<Float>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of character data as an two array of UUID.
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Such notifications will occur for a Fast Infoset SAX parser
	* when processing data encoded using the "uuid" encoding
	* algorithm, see subclause 10.10<p>.
	*
	* @param msblsb the array of long containing pairs of most signficant
	* bits and least significant bits of the UUIDs
	* @param start the start position in the array
	* @param length the number of long to read from the array. This will
	* be twice the number of UUIDs, which are pairs of two long values
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload public function uuids(msblsb : java.NativeArray<haxe.Int64>, start : Int, length : Int) : Void;
	
	
}
