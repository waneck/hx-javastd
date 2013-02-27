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
@:internal extern class DOMBuilder extends com.sun.xml.internal.bind.marshaller.SAX2DOMEx implements org.xml.sax.ext.LexicalHandler
{
	/**
	* Grows a DOM tree under the given document, and
	* stores location information to the given table.
	*
	* @param outerMostBindings
	*      This set will receive newly found outermost
	*      jaxb:bindings customizations.
	*/
	@:overload public function new(dom : org.w3c.dom.Document, ltable : com.sun.tools.internal.xjc.reader.internalizer.LocatorTable, outerMostBindings : java.util.Set<Dynamic>) : Void;
	
	@:overload override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	@:overload public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload public function endDTD() : Void;
	
	@:overload public function startEntity(name : String) : Void;
	
	@:overload public function endEntity(name : String) : Void;
	
	@:overload public function startCDATA() : Void;
	
	@:overload public function endCDATA() : Void;
	
	@:overload public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	
}
