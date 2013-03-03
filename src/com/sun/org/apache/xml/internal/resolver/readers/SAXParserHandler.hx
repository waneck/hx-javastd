package com.sun.org.apache.xml.internal.resolver.readers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// SAXParserHandler.java - An entity-resolving DefaultHandler
/*
* Copyright 2001-2004 The Apache Software Foundation or its licensors,
* as applicable.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/**
* An entity-resolving DefaultHandler.
*
* <p>This class provides a SAXParser DefaultHandler that performs
* entity resolution.
* </p>
*
* @author Norman Walsh
* <a href="mailto:Norman.Walsh@Sun.COM">Norman.Walsh@Sun.COM</a>
*/
extern class SAXParserHandler extends org.xml.sax.helpers.DefaultHandler
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function setEntityResolver(er : org.xml.sax.EntityResolver) : Void;
	
	@:overload @:public public function setContentHandler(ch : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:public override public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	@:overload @:public override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public override public function endDocument() : Void;
	
	@:overload @:public override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	@:overload @:public override public function endPrefixMapping(prefix : String) : Void;
	
	@:overload @:public override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public override public function processingInstruction(target : String, data : String) : Void;
	
	@:overload @:public override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload @:public override public function skippedEntity(name : String) : Void;
	
	@:overload @:public override public function startDocument() : Void;
	
	@:overload @:public override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	
}
