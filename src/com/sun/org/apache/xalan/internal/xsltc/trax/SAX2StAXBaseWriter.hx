package com.sun.org.apache.xalan.internal.xsltc.trax;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class SAX2StAXBaseWriter extends org.xml.sax.helpers.DefaultHandler implements org.xml.sax.ext.LexicalHandler
{
	@:protected private var isCDATA : Bool;
	
	@:protected private var CDATABuffer : java.lang.StringBuffer;
	
	@:protected private var namespaces : java.util.Vector<Dynamic>;
	
	@:protected private var docLocator : org.xml.sax.Locator;
	
	@:protected private var reporter : javax.xml.stream.XMLReporter;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(reporter : javax.xml.stream.XMLReporter) : Void;
	
	@:overload @:public public function setXMLReporter(reporter : javax.xml.stream.XMLReporter) : Void;
	
	@:overload @:public override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload @:public public function getCurrentLocation() : javax.xml.stream.Location;
	
	@:overload @:public override public function error(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public override public function fatalError(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public override public function warning(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public override public function startDocument() : Void;
	
	@:overload @:public override public function endDocument() : Void;
	
	@:overload @:public override public function startElement(uri : String, localName : String, qName : String, attributes : org.xml.sax.Attributes) : Void;
	
	@:overload @:public override public function endElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload @:public override public function endPrefixMapping(prefix : String) : Void;
	
	@:overload @:public public function startCDATA() : Void;
	
	@:overload @:public override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function endCDATA() : Void;
	
	@:overload @:public public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function endDTD() : Void;
	
	@:overload @:public public function endEntity(name : String) : Void;
	
	@:overload @:public public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload @:public public function startEntity(name : String) : Void;
	
	/**
	* Used to report a {@link SAXException}to the {@link XMLReporter}
	* registered with this handler.
	*/
	@:overload @:protected private function reportException(type : String, e : org.xml.sax.SAXException) : Void;
	
	/**
	* Parses an XML qualified name, and places the resulting prefix and local
	* name in the provided String array.
	*
	* @param qName The qualified name to parse.
	* @param results An array where parse results will be placed. The prefix
	*            will be placed at <code>results[0]</code>, and the local
	*            part at <code>results[1]</code>
	*/
	@:overload @:public @:static @:final public static function parseQName(qName : String, results : java.NativeArray<String>) : Void;
	
	
}
/**
* {@Link Location}implementation used to expose details from a SAX
* {@link Locator}.
*
* @author christian
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$trax$SAX2StAXBaseWriter$SAXLocation') @:internal extern class SAX2StAXBaseWriter_SAXLocation implements javax.xml.stream.Location
{
	@:overload @:public public function getLineNumber() : Int;
	
	@:overload @:public public function getColumnNumber() : Int;
	
	@:overload @:public public function getCharacterOffset() : Int;
	
	@:overload @:public public function getPublicId() : String;
	
	@:overload @:public public function getSystemId() : String;
	
	
}
