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
extern interface ExtendedContentHandler extends org.xml.sax.ContentHandler
{
	/**
	* Receive notification of character data.
	*
	* @param ch the characters from the XML document
	* @param start the start position in the array
	* @param length the number of characters to read from the array
	* @param index true if the characters are indexed, otherwise false.
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see ContentHandler#characters
	*/
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int, index : Bool) : Void;
	
	
}
