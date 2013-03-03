package com.sun.tools.internal.ws.wsdl.parser;
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
extern class DOMForestScanner
{
	/**
	* Scans DOM nodes of the given forest.
	*
	* DOM node parameters to the scan method must be a part of
	* this forest.
	*/
	@:overload @:public public function new(_forest : com.sun.tools.internal.ws.wsdl.parser.DOMForest) : Void;
	
	/**
	* Generates the whole set of SAX events by treating
	* element e as if it's a root element.
	*/
	@:overload @:public public function scan(e : org.w3c.dom.Element, contentHandler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Generates the whole set of SAX events from the given Document
	* in the DOMForest.
	*/
	@:overload @:public public function scan(d : org.w3c.dom.Document, contentHandler : org.xml.sax.ContentHandler) : Void;
	
	
}
/**
* Intercepts the invocation of the setDocumentLocator method
* and passes itself as the locator.
*
* If the client calls one of the methods on the Locator interface,
* use the LocatorTable to resolve the source location.
*/
@:native('com$sun$tools$internal$ws$wsdl$parser$DOMForestScanner$LocationResolver') @:internal extern class DOMForestScanner_LocationResolver extends org.xml.sax.helpers.XMLFilterImpl implements org.xml.sax.Locator
{
	@:overload @:public override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload @:public override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	@:overload @:public override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:public public function getColumnNumber() : Int;
	
	@:overload @:public public function getLineNumber() : Int;
	
	@:overload @:public public function getPublicId() : String;
	
	@:overload @:public public function getSystemId() : String;
	
	
}
