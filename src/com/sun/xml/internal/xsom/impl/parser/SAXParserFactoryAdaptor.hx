package com.sun.xml.internal.xsom.impl.parser;
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
extern class SAXParserFactoryAdaptor extends javax.xml.parsers.SAXParserFactory
{
	@:overload @:public public function new(_parser : com.sun.xml.internal.xsom.parser.XMLParser) : Void;
	
	@:overload @:public override public function newSAXParser() : javax.xml.parsers.SAXParser;
	
	@:overload @:public override public function setFeature(name : String, value : Bool) : Void;
	
	@:overload @:public override public function getFeature(name : String) : Bool;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$parser$SAXParserFactoryAdaptor$SAXParserImpl') @:internal extern class SAXParserFactoryAdaptor_SAXParserImpl extends javax.xml.parsers.SAXParser
{
	/**
	* @deprecated
	*/
	@:overload @:public override public function getParser() : org.xml.sax.Parser;
	
	@:overload @:public override public function getXMLReader() : org.xml.sax.XMLReader;
	
	@:overload @:public override public function isNamespaceAware() : Bool;
	
	@:overload @:public override public function isValidating() : Bool;
	
	@:overload @:public override public function setProperty(name : String, value : Dynamic) : Void;
	
	@:overload @:public override public function getProperty(name : String) : Dynamic;
	
	
}
@:native('com$sun$xml$internal$xsom$impl$parser$SAXParserFactoryAdaptor$XMLReaderImpl') @:internal extern class SAXParserFactoryAdaptor_XMLReaderImpl extends org.xml.sax.helpers.XMLFilterImpl
{
	@:overload @:public override public function parse(input : org.xml.sax.InputSource) : Void;
	
	@:overload @:public override public function parse(systemId : String) : Void;
	
	
}
