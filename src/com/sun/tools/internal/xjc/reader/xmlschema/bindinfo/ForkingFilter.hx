package com.sun.tools.internal.xjc.reader.xmlschema.bindinfo;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ForkingFilter extends org.xml.sax.helpers.XMLFilterImpl
{
	@:overload public function new() : Void;
	
	@:overload public function new(next : org.xml.sax.ContentHandler) : Void;
	
	@:overload public function getSideHandler() : org.xml.sax.ContentHandler;
	
	@:overload override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload public function getDocumentLocator() : org.xml.sax.Locator;
	
	@:overload override public function startDocument() : Void;
	
	@:overload override public function endDocument() : Void;
	
	@:overload override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload override public function endPrefixMapping(prefix : String) : Void;
	
	@:overload override public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Starts the event forking.
	*/
	@:overload public function startForking(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes, side : org.xml.sax.ContentHandler) : Void;
	
	@:overload override public function endElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	
}
