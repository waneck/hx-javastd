package com.sun.xml.internal.stream.buffer.sax;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SAXBufferCreator extends com.sun.xml.internal.stream.buffer.AbstractCreator implements org.xml.sax.EntityResolver implements org.xml.sax.DTDHandler implements org.xml.sax.ContentHandler implements org.xml.sax.ErrorHandler implements org.xml.sax.ext.LexicalHandler
{
	/**
	* Writes into {@link MutableXMLStreamBuffer} from SAX.
	*
	* TODO
	* Implement the marking the stream on the element when an ID
	* attribute on the element is defined
	*/
	private var _namespaceAttributes : java.NativeArray<String>;
	
	private var _namespaceAttributesPtr : Int;
	
	@:overload public function new() : Void;
	
	@:overload public function new(buffer : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer) : Void;
	
	@:overload public function create(reader : org.xml.sax.XMLReader, _in : java.io.InputStream) : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer;
	
	@:overload public function create(reader : org.xml.sax.XMLReader, _in : java.io.InputStream, systemId : String) : com.sun.xml.internal.stream.buffer.MutableXMLStreamBuffer;
	
	@:overload public function reset() : Void;
	
	@:overload public function startDocument() : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload public function startElement(uri : String, localName : String, qName : String, attributes : org.xml.sax.Attributes) : Void;
	
	@:overload public function endElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	@:overload public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	@:overload public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	@:overload public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	@:overload public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	@:overload public function skippedEntity(name : String) : Void;
	
	@:overload public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload public function endDTD() : Void;
	
	@:overload public function startEntity(name : String) : Void;
	
	@:overload public function endEntity(name : String) : Void;
	
	@:overload public function startCDATA() : Void;
	
	@:overload public function endCDATA() : Void;
	
	@:overload public function warning(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload public function error(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload public function fatalError(e : org.xml.sax.SAXParseException) : Void;
	
	
}