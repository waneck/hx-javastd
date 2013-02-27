package com.sun.xml.internal.ws.util.xml;
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
extern class ContentHandlerToXMLStreamWriter extends org.xml.sax.helpers.DefaultHandler
{
	@:overload public function new(staxCore : javax.xml.stream.XMLStreamWriter) : Void;
	
	/*
	* (non-Javadoc)
	*
	* @see org.xml.sax.ContentHandler#endDocument()
	*/
	@:overload override public function endDocument() : Void;
	
	/*
	* (non-Javadoc)
	*
	* @see org.xml.sax.ContentHandler#startDocument()
	*/
	@:overload override public function startDocument() : Void;
	
	/*
	* (non-Javadoc)
	*
	* @see org.xml.sax.ContentHandler#characters(char[], int, int)
	*/
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/*
	* (non-Javadoc)
	*
	* @see org.xml.sax.ContentHandler#ignorableWhitespace(char[], int, int)
	*/
	@:overload override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/*
	* (non-Javadoc)
	*
	* @see org.xml.sax.ContentHandler#endPrefixMapping(java.lang.String)
	*/
	@:overload override public function endPrefixMapping(prefix : String) : Void;
	
	/*
	* (non-Javadoc)
	*
	* @see org.xml.sax.ContentHandler#skippedEntity(java.lang.String)
	*/
	@:overload override public function skippedEntity(name : String) : Void;
	
	/*
	* (non-Javadoc)
	*
	* @see org.xml.sax.ContentHandler#setDocumentLocator(org.xml.sax.Locator)
	*/
	@:overload override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/*
	* (non-Javadoc)
	*
	* @see org.xml.sax.ContentHandler#processingInstruction(java.lang.String,
	*      java.lang.String)
	*/
	@:overload override public function processingInstruction(target : String, data : String) : Void;
	
	/*
	* (non-Javadoc)
	*
	* @see org.xml.sax.ContentHandler#startPrefixMapping(java.lang.String,
	*      java.lang.String)
	*/
	@:overload override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/*
	* (non-Javadoc)
	*
	* @see org.xml.sax.ContentHandler#endElement(java.lang.String,
	*      java.lang.String, java.lang.String)
	*/
	@:overload override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	/*
	* (non-Javadoc)
	*
	* @see org.xml.sax.ContentHandler#startElement(java.lang.String,
	*      java.lang.String, java.lang.String, org.xml.sax.Attributes)
	*/
	@:overload override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	
}
