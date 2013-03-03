package org.xml.sax.helpers;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
//// ParserAdapter.java - adapt a SAX1 Parser to a SAX2 XMLReader.
//// http://www.saxproject.org
//// Written by David Megginson
//// NO WARRANTY!  This class is in the public domain.
//// $Id: ParserAdapter.java,v 1.3 2004/11/03 22:53:09 jsuttor Exp $
extern class ParserAdapter implements org.xml.sax.XMLReader implements org.xml.sax.DocumentHandler
{
	/**
	* Construct a new parser adapter.
	*
	* <p>Use the "org.xml.sax.parser" property to locate the
	* embedded SAX1 driver.</p>
	*
	* @exception SAXException If the embedded driver
	*            cannot be instantiated or if the
	*            org.xml.sax.parser property is not specified.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Construct a new parser adapter.
	*
	* <p>Note that the embedded parser cannot be changed once the
	* adapter is created; to embed a different parser, allocate
	* a new ParserAdapter.</p>
	*
	* @param parser The SAX1 parser to embed.
	* @exception java.lang.NullPointerException If the parser parameter
	*            is null.
	*/
	@:overload @:public public function new(parser : org.xml.sax.Parser) : Void;
	
	/**
	* Set a feature flag for the parser.
	*
	* <p>The only features recognized are namespaces and
	* namespace-prefixes.</p>
	*
	* @param name The feature name, as a complete URI.
	* @param value The requested feature value.
	* @exception SAXNotRecognizedException If the feature
	*            can't be assigned or retrieved.
	* @exception SAXNotSupportedException If the feature
	*            can't be assigned that value.
	* @see org.xml.sax.XMLReader#setFeature
	*/
	@:overload @:public public function setFeature(name : String, value : Bool) : Void;
	
	/**
	* Check a parser feature flag.
	*
	* <p>The only features recognized are namespaces and
	* namespace-prefixes.</p>
	*
	* @param name The feature name, as a complete URI.
	* @return The current feature value.
	* @exception SAXNotRecognizedException If the feature
	*            value can't be assigned or retrieved.
	* @exception SAXNotSupportedException If the
	*            feature is not currently readable.
	* @see org.xml.sax.XMLReader#setFeature
	*/
	@:overload @:public public function getFeature(name : String) : Bool;
	
	/**
	* Set a parser property.
	*
	* <p>No properties are currently recognized.</p>
	*
	* @param name The property name.
	* @param value The property value.
	* @exception SAXNotRecognizedException If the property
	*            value can't be assigned or retrieved.
	* @exception SAXNotSupportedException If the property
	*            can't be assigned that value.
	* @see org.xml.sax.XMLReader#setProperty
	*/
	@:overload @:public public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* Get a parser property.
	*
	* <p>No properties are currently recognized.</p>
	*
	* @param name The property name.
	* @return The property value.
	* @exception SAXNotRecognizedException If the property
	*            value can't be assigned or retrieved.
	* @exception SAXNotSupportedException If the property
	*            value is not currently readable.
	* @see org.xml.sax.XMLReader#getProperty
	*/
	@:overload @:public public function getProperty(name : String) : Dynamic;
	
	/**
	* Set the entity resolver.
	*
	* @param resolver The new entity resolver.
	* @see org.xml.sax.XMLReader#setEntityResolver
	*/
	@:overload @:public public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	/**
	* Return the current entity resolver.
	*
	* @return The current entity resolver, or null if none was supplied.
	* @see org.xml.sax.XMLReader#getEntityResolver
	*/
	@:overload @:public public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	/**
	* Set the DTD handler.
	*
	* @param handler the new DTD handler
	* @see org.xml.sax.XMLReader#setEntityResolver
	*/
	@:overload @:public public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	/**
	* Return the current DTD handler.
	*
	* @return the current DTD handler, or null if none was supplied
	* @see org.xml.sax.XMLReader#getEntityResolver
	*/
	@:overload @:public public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	/**
	* Set the content handler.
	*
	* @param handler the new content handler
	* @see org.xml.sax.XMLReader#setEntityResolver
	*/
	@:overload @:public public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Return the current content handler.
	*
	* @return The current content handler, or null if none was supplied.
	* @see org.xml.sax.XMLReader#getEntityResolver
	*/
	@:overload @:public public function getContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Set the error handler.
	*
	* @param handler The new error handler.
	* @see org.xml.sax.XMLReader#setEntityResolver
	*/
	@:overload @:public public function setErrorHandler(handler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Return the current error handler.
	*
	* @return The current error handler, or null if none was supplied.
	* @see org.xml.sax.XMLReader#getEntityResolver
	*/
	@:overload @:public public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* Parse an XML document.
	*
	* @param systemId The absolute URL of the document.
	* @exception java.io.IOException If there is a problem reading
	*            the raw content of the document.
	* @exception SAXException If there is a problem
	*            processing the document.
	* @see #parse(org.xml.sax.InputSource)
	* @see org.xml.sax.Parser#parse(java.lang.String)
	*/
	@:overload @:public public function parse(systemId : String) : Void;
	
	/**
	* Parse an XML document.
	*
	* @param input An input source for the document.
	* @exception java.io.IOException If there is a problem reading
	*            the raw content of the document.
	* @exception SAXException If there is a problem
	*            processing the document.
	* @see #parse(java.lang.String)
	* @see org.xml.sax.Parser#parse(org.xml.sax.InputSource)
	*/
	@:overload @:public public function parse(input : org.xml.sax.InputSource) : Void;
	
	/**
	* Adapter implementation method; do not call.
	* Adapt a SAX1 document locator event.
	*
	* @param locator A document locator.
	* @see org.xml.sax.ContentHandler#setDocumentLocator
	*/
	@:overload @:public public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/**
	* Adapter implementation method; do not call.
	* Adapt a SAX1 start document event.
	*
	* @exception SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.DocumentHandler#startDocument
	*/
	@:overload @:public public function startDocument() : Void;
	
	/**
	* Adapter implementation method; do not call.
	* Adapt a SAX1 end document event.
	*
	* @exception SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.DocumentHandler#endDocument
	*/
	@:overload @:public public function endDocument() : Void;
	
	/**
	* Adapter implementation method; do not call.
	* Adapt a SAX1 startElement event.
	*
	* <p>If necessary, perform Namespace processing.</p>
	*
	* @param qName The qualified (prefixed) name.
	* @param qAtts The XML attribute list (with qnames).
	* @exception SAXException The client may raise a
	*            processing exception.
	*/
	@:overload @:public public function startElement(qName : String, qAtts : org.xml.sax.AttributeList) : Void;
	
	/**
	* Adapter implementation method; do not call.
	* Adapt a SAX1 end element event.
	*
	* @param qName The qualified (prefixed) name.
	* @exception SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.DocumentHandler#endElement
	*/
	@:overload @:public public function endElement(qName : String) : Void;
	
	/**
	* Adapter implementation method; do not call.
	* Adapt a SAX1 characters event.
	*
	* @param ch An array of characters.
	* @param start The starting position in the array.
	* @param length The number of characters to use.
	* @exception SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.DocumentHandler#characters
	*/
	@:overload @:public public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Adapter implementation method; do not call.
	* Adapt a SAX1 ignorable whitespace event.
	*
	* @param ch An array of characters.
	* @param start The starting position in the array.
	* @param length The number of characters to use.
	* @exception SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.DocumentHandler#ignorableWhitespace
	*/
	@:overload @:public public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Adapter implementation method; do not call.
	* Adapt a SAX1 processing instruction event.
	*
	* @param target The processing instruction target.
	* @param data The remainder of the processing instruction
	* @exception SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.DocumentHandler#processingInstruction
	*/
	@:overload @:public public function processingInstruction(target : String, data : String) : Void;
	
	
}
/**
* Adapt a SAX1 AttributeList as a SAX2 Attributes object.
*
* <p>This class is in the Public Domain, and comes with NO
* WARRANTY of any kind.</p>
*
* <p>This wrapper class is used only when Namespace support
* is disabled -- it provides pretty much a direct mapping
* from SAX1 to SAX2, except that names and types are
* interned whenever requested.</p>
*/
@:native('org$xml$sax$helpers$ParserAdapter$AttributeListAdapter') @:internal extern class ParserAdapter_AttributeListAdapter implements org.xml.sax.Attributes
{
	/**
	* Return the length of the attribute list.
	*
	* @return The number of attributes in the list.
	* @see org.xml.sax.Attributes#getLength
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Return the Namespace URI of the specified attribute.
	*
	* @param The attribute's index.
	* @return Always the empty string.
	* @see org.xml.sax.Attributes#getURI
	*/
	@:overload @:public public function getURI(i : Int) : String;
	
	/**
	* Return the local name of the specified attribute.
	*
	* @param The attribute's index.
	* @return Always the empty string.
	* @see org.xml.sax.Attributes#getLocalName
	*/
	@:overload @:public public function getLocalName(i : Int) : String;
	
	/**
	* Return the qualified (prefixed) name of the specified attribute.
	*
	* @param The attribute's index.
	* @return The attribute's qualified name, internalized.
	*/
	@:overload @:public public function getQName(i : Int) : String;
	
	/**
	* Return the type of the specified attribute.
	*
	* @param The attribute's index.
	* @return The attribute's type as an internalized string.
	*/
	@:overload @:public public function getType(i : Int) : String;
	
	/**
	* Return the value of the specified attribute.
	*
	* @param The attribute's index.
	* @return The attribute's value.
	*/
	@:overload @:public public function getValue(i : Int) : String;
	
	/**
	* Look up an attribute index by Namespace name.
	*
	* @param uri The Namespace URI or the empty string.
	* @param localName The local name.
	* @return The attributes index, or -1 if none was found.
	* @see org.xml.sax.Attributes#getIndex(java.lang.String,java.lang.String)
	*/
	@:overload @:public public function getIndex(uri : String, localName : String) : Int;
	
	/**
	* Look up an attribute index by qualified (prefixed) name.
	*
	* @param qName The qualified name.
	* @return The attributes index, or -1 if none was found.
	* @see org.xml.sax.Attributes#getIndex(java.lang.String)
	*/
	@:overload @:public public function getIndex(qName : String) : Int;
	
	/**
	* Look up the type of an attribute by Namespace name.
	*
	* @param uri The Namespace URI
	* @param localName The local name.
	* @return The attribute's type as an internalized string.
	*/
	@:overload @:public public function getType(uri : String, localName : String) : String;
	
	/**
	* Look up the type of an attribute by qualified (prefixed) name.
	*
	* @param qName The qualified name.
	* @return The attribute's type as an internalized string.
	*/
	@:overload @:public public function getType(qName : String) : String;
	
	/**
	* Look up the value of an attribute by Namespace name.
	*
	* @param uri The Namespace URI
	* @param localName The local name.
	* @return The attribute's value.
	*/
	@:overload @:public public function getValue(uri : String, localName : String) : String;
	
	/**
	* Look up the value of an attribute by qualified (prefixed) name.
	*
	* @param qName The qualified name.
	* @return The attribute's value.
	*/
	@:overload @:public public function getValue(qName : String) : String;
	
	
}
