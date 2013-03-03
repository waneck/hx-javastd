package com.sun.tools.internal.xjc.util;
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
extern class ForkContentHandler implements org.xml.sax.ContentHandler
{
	/**
	* Creates a ForkContentHandler.
	*
	* @param first
	*     This handler will receive a SAX event first.
	* @param second
	*     This handler will receive a SAX event after the first handler
	*     receives it.
	*/
	@:overload @:public public function new(first : org.xml.sax.ContentHandler, second : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Creates ForkContentHandlers so that the specified handlers
	* will receive SAX events in the order of the array.
	*/
	@:overload @:public @:static public static function create(handlers : java.NativeArray<org.xml.sax.ContentHandler>) : org.xml.sax.ContentHandler;
	
	@:overload @:public public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload @:public public function startDocument() : Void;
	
	@:overload @:public public function endDocument() : Void;
	
	@:overload @:public public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload @:public public function endPrefixMapping(prefix : String) : Void;
	
	@:overload @:public public function startElement(uri : String, localName : String, qName : String, attributes : org.xml.sax.Attributes) : Void;
	
	@:overload @:public public function endElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload @:public public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function processingInstruction(target : String, data : String) : Void;
	
	@:overload @:public public function skippedEntity(name : String) : Void;
	
	
}
