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
extern class SAXBufferProcessor extends com.sun.xml.internal.stream.buffer.AbstractProcessor implements org.xml.sax.XMLReader
{
	/**
	* Reference to entity resolver.
	*/
	@:protected private var _entityResolver : org.xml.sax.EntityResolver;
	
	/**
	* Reference to dtd handler.
	*/
	@:protected private var _dtdHandler : org.xml.sax.DTDHandler;
	
	/**
	* Reference to content handler.
	*/
	@:protected private var _contentHandler : org.xml.sax.ContentHandler;
	
	/**
	* Reference to error handler.
	*/
	@:protected private var _errorHandler : org.xml.sax.ErrorHandler;
	
	/**
	* Reference to lexical handler.
	*/
	@:protected private var _lexicalHandler : org.xml.sax.ext.LexicalHandler;
	
	/**
	* SAX Namespace attributes features
	*/
	@:protected private var _namespacePrefixesFeature : Bool;
	
	@:protected private var _attributes : com.sun.xml.internal.stream.buffer.AttributesHolder;
	
	@:protected private var _namespacePrefixes : java.NativeArray<String>;
	
	@:protected private var _namespacePrefixesIndex : Int;
	
	@:protected private var _namespaceAttributesStack : java.NativeArray<Int>;
	
	@:protected private var _namespaceAttributesStackIndex : Int;
	
	@:overload @:public public function new() : Void;
	
	/**
	* @deprecated
	*      Use {@link #SAXBufferProcessor(XMLStreamBuffer, boolean)}
	*/
	@:overload @:public public function new(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
	/**
	* @param produceFragmentEvent
	*      True to generate fragment SAX events without start/endDocument.
	*      False to generate a full document SAX events.
	*/
	@:overload @:public public function new(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer, produceFragmentEvent : Bool) : Void;
	
	@:overload @:public public function getFeature(name : String) : Bool;
	
	@:overload @:public public function setFeature(name : String, value : Bool) : Void;
	
	@:overload @:public public function getProperty(name : String) : Dynamic;
	
	@:overload @:public public function setProperty(name : String, value : Dynamic) : Void;
	
	@:overload @:public public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	@:overload @:public public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	@:overload @:public public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	@:overload @:public public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	@:overload @:public public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:public public function getContentHandler() : org.xml.sax.ContentHandler;
	
	@:overload @:public public function setErrorHandler(handler : org.xml.sax.ErrorHandler) : Void;
	
	@:overload @:public public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	@:overload @:public public function setLexicalHandler(handler : org.xml.sax.ext.LexicalHandler) : Void;
	
	@:overload @:public public function getLexicalHandler() : org.xml.sax.ext.LexicalHandler;
	
	@:overload @:public public function parse(input : org.xml.sax.InputSource) : Void;
	
	@:overload @:public public function parse(systemId : String) : Void;
	
	/**
	* Short-hand for {@link #setXMLStreamBuffer(XMLStreamBuffer)} then {@link #process()}.
	*
	* @deprecated
	*      Use {@link #process(XMLStreamBuffer, boolean)}
	*/
	@:overload @:public @:final public function process(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
	/**
	* Short-hand for {@link #setXMLStreamBuffer(XMLStreamBuffer,boolean)} then {@link #process()}.
	*
	* @param produceFragmentEvent
	*      True to generate fragment SAX events without start/endDocument.
	*      False to generate a full document SAX events.
	*/
	@:overload @:public @:final public function process(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer, produceFragmentEvent : Bool) : Void;
	
	/**
	* Resets the parser to read from the beginning of the given {@link XMLStreamBuffer}.
	*
	* @deprecated
	*      Use {@link #setXMLStreamBuffer(XMLStreamBuffer, boolean)}.
	*/
	@:overload @:public public function setXMLStreamBuffer(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
	/**
	* Resets the parser to read from the beginning of the given {@link XMLStreamBuffer}.
	*
	* @param produceFragmentEvent
	*      True to generate fragment SAX events without start/endDocument.
	*      False to generate a full document SAX events.
	*/
	@:overload @:public public function setXMLStreamBuffer(buffer : com.sun.xml.internal.stream.buffer.XMLStreamBuffer, produceFragmentEvent : Bool) : Void;
	
	/**
	* Parse the sub-tree (or a whole document) that {@link XMLStreamBuffer}
	* points to, and sends events to handlers.
	*
	* <p>
	* TODO:
	* We probably need two modes for a sub-tree event generation. One for
	* firing a sub-tree as if it's a whole document (in which case start/endDocument
	* and appropriate additional namespace bindings are necessary), and the other
	* mode for firing a subtree as a subtree, like it does today.
	* A stream buffer SAX feature could be used to specify this.
	*
	* @throws SAXException
	*      Follow the same semantics as {@link XMLReader#parse(InputSource)}.
	*/
	@:overload @:public @:final public function process() : Void;
	
	@:overload @:protected private function processElement(uri : String, localName : String, qName : String) : Void;
	
	
}
