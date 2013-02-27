package com.sun.xml.internal.txw2.output;
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
extern class DomSerializer implements com.sun.xml.internal.txw2.output.XmlSerializer
{
	@:overload public function new(node : org.w3c.dom.Node) : Void;
	
	@:overload public function new(domResult : javax.xml.transform.dom.DOMResult) : Void;
	
	@:overload public function startDocument() : Void;
	
	@:overload public function beginStartTag(uri : String, localName : String, prefix : String) : Void;
	
	@:overload public function writeAttribute(uri : String, localName : String, prefix : String, value : java.lang.StringBuilder) : Void;
	
	@:overload public function writeXmlns(prefix : String, uri : String) : Void;
	
	@:overload public function endStartTag(uri : String, localName : String, prefix : String) : Void;
	
	@:overload public function endTag() : Void;
	
	@:overload public function text(text : java.lang.StringBuilder) : Void;
	
	@:overload public function cdata(text : java.lang.StringBuilder) : Void;
	
	@:overload public function comment(comment : java.lang.StringBuilder) : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function flush() : Void;
	
	
}
@:internal extern class Dom2SaxAdapter implements org.xml.sax.ContentHandler implements org.xml.sax.ext.LexicalHandler
{
	@:overload @:final public function getCurrentElement() : org.w3c.dom.Element;
	
	/**
	* @param   node
	*      Nodes will be created and added under this object.
	*/
	@:overload public function new(node : org.w3c.dom.Node) : Void;
	
	/**
	* Creates a fresh empty DOM document and adds nodes under this document.
	*/
	@:overload public function new() : Void;
	
	@:overload public function getDOM() : org.w3c.dom.Node;
	
	@:overload public function startDocument() : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function startElement(namespace : String, localName : String, qName : String, attrs : org.xml.sax.Attributes) : Void;
	
	@:overload public function endElement(namespace : String, localName : String, qName : String) : Void;
	
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	@:overload public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload public function skippedEntity(name : String) : Void;
	
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	@:overload public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload public function endDTD() : Void;
	
	@:overload public function startEntity(name : String) : Void;
	
	@:overload public function endEntity(name : String) : Void;
	
	@:overload public function startCDATA() : Void;
	
	@:overload public function endCDATA() : Void;
	
	
}
