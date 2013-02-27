package com.sun.org.apache.xalan.internal.xsltc.trax;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: SAX2DOM.java,v 1.8.2.1 2006/12/04 18:45:41 spericas Exp $
*/
extern class SAX2DOM implements org.xml.sax.ContentHandler implements org.xml.sax.ext.LexicalHandler implements com.sun.org.apache.xalan.internal.xsltc.runtime.Constants
{
	@:overload public function new(useServicesMachnism : Bool) : Void;
	
	@:overload public function new(root : org.w3c.dom.Node, nextSibling : org.w3c.dom.Node, useServicesMachnism : Bool) : Void;
	
	@:overload public function new(root : org.w3c.dom.Node, useServicesMachnism : Bool) : Void;
	
	@:overload public function getDOM() : org.w3c.dom.Node;
	
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function startDocument() : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function startElement(namespace : String, localName : String, qName : String, attrs : org.xml.sax.Attributes) : Void;
	
	@:overload public function endElement(namespace : String, localName : String, qName : String) : Void;
	
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* adds processing instruction node to DOM.
	*/
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/**
	* This class is only used internally so this method should never
	* be called.
	*/
	@:overload public function skippedEntity(name : String) : Void;
	
	/**
	* Lexical Handler method to create comment node in DOM tree.
	*/
	@:overload public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload public function startCDATA() : Void;
	
	@:overload public function endCDATA() : Void;
	
	@:overload public function startEntity(name : String) : Void;
	
	@:overload public function endDTD() : Void;
	
	@:overload public function endEntity(name : String) : Void;
	
	@:overload public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	
}
