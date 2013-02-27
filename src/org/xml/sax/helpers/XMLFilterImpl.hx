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
//// XMLFilterImpl.java - base SAX2 filter implementation.
//// http://www.saxproject.org
//// Written by David Megginson
//// NO WARRANTY!  This class is in the Public Domain.
//// $Id: XMLFilterImpl.java,v 1.3 2004/11/03 22:53:09 jsuttor Exp $
extern class XMLFilterImpl implements org.xml.sax.XMLFilter implements org.xml.sax.EntityResolver implements org.xml.sax.DTDHandler implements org.xml.sax.ContentHandler implements org.xml.sax.ErrorHandler
{
	/**
	* Construct an empty XML filter, with no parent.
	*
	* <p>This filter will have no parent: you must assign a parent
	* before you start a parse or do any configuration with
	* setFeature or setProperty, unless you use this as a pure event
	* consumer rather than as an {@link XMLReader}.</p>
	*
	* @see org.xml.sax.XMLReader#setFeature
	* @see org.xml.sax.XMLReader#setProperty
	* @see #setParent
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct an XML filter with the specified parent.
	*
	* @see #setParent
	* @see #getParent
	*/
	@:overload public function new(parent : org.xml.sax.XMLReader) : Void;
	
	/**
	* Set the parent reader.
	*
	* <p>This is the {@link org.xml.sax.XMLReader XMLReader} from which
	* this filter will obtain its events and to which it will pass its
	* configuration requests.  The parent may itself be another filter.</p>
	*
	* <p>If there is no parent reader set, any attempt to parse
	* or to set or get a feature or property will fail.</p>
	*
	* @param parent The parent XML reader.
	* @see #getParent
	*/
	@:overload public function setParent(parent : org.xml.sax.XMLReader) : Void;
	
	/**
	* Get the parent reader.
	*
	* @return The parent XML reader, or null if none is set.
	* @see #setParent
	*/
	@:overload public function getParent() : org.xml.sax.XMLReader;
	
	/**
	* Set the value of a feature.
	*
	* <p>This will always fail if the parent is null.</p>
	*
	* @param name The feature name.
	* @param value The requested feature value.
	* @exception org.xml.sax.SAXNotRecognizedException If the feature
	*            value can't be assigned or retrieved from the parent.
	* @exception org.xml.sax.SAXNotSupportedException When the
	*            parent recognizes the feature name but
	*            cannot set the requested value.
	*/
	@:overload public function setFeature(name : String, value : Bool) : Void;
	
	/**
	* Look up the value of a feature.
	*
	* <p>This will always fail if the parent is null.</p>
	*
	* @param name The feature name.
	* @return The current value of the feature.
	* @exception org.xml.sax.SAXNotRecognizedException If the feature
	*            value can't be assigned or retrieved from the parent.
	* @exception org.xml.sax.SAXNotSupportedException When the
	*            parent recognizes the feature name but
	*            cannot determine its value at this time.
	*/
	@:overload public function getFeature(name : String) : Bool;
	
	/**
	* Set the value of a property.
	*
	* <p>This will always fail if the parent is null.</p>
	*
	* @param name The property name.
	* @param value The requested property value.
	* @exception org.xml.sax.SAXNotRecognizedException If the property
	*            value can't be assigned or retrieved from the parent.
	* @exception org.xml.sax.SAXNotSupportedException When the
	*            parent recognizes the property name but
	*            cannot set the requested value.
	*/
	@:overload public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* Look up the value of a property.
	*
	* @param name The property name.
	* @return The current value of the property.
	* @exception org.xml.sax.SAXNotRecognizedException If the property
	*            value can't be assigned or retrieved from the parent.
	* @exception org.xml.sax.SAXNotSupportedException When the
	*            parent recognizes the property name but
	*            cannot determine its value at this time.
	*/
	@:overload public function getProperty(name : String) : Dynamic;
	
	/**
	* Set the entity resolver.
	*
	* @param resolver The new entity resolver.
	*/
	@:overload public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	/**
	* Get the current entity resolver.
	*
	* @return The current entity resolver, or null if none was set.
	*/
	@:overload public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	/**
	* Set the DTD event handler.
	*
	* @param handler the new DTD handler
	*/
	@:overload public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	/**
	* Get the current DTD event handler.
	*
	* @return The current DTD handler, or null if none was set.
	*/
	@:overload public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	/**
	* Set the content event handler.
	*
	* @param handler the new content handler
	*/
	@:overload public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Get the content event handler.
	*
	* @return The current content handler, or null if none was set.
	*/
	@:overload public function getContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Set the error event handler.
	*
	* @param handler the new error handler
	*/
	@:overload public function setErrorHandler(handler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Get the current error event handler.
	*
	* @return The current error handler, or null if none was set.
	*/
	@:overload public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* Parse a document.
	*
	* @param input The input source for the document entity.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @exception java.io.IOException An IO exception from the parser,
	*            possibly from a byte stream or character stream
	*            supplied by the application.
	*/
	@:overload public function parse(input : org.xml.sax.InputSource) : Void;
	
	/**
	* Parse a document.
	*
	* @param systemId The system identifier as a fully-qualified URI.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @exception java.io.IOException An IO exception from the parser,
	*            possibly from a byte stream or character stream
	*            supplied by the application.
	*/
	@:overload public function parse(systemId : String) : Void;
	
	/**
	* Filter an external entity resolution.
	*
	* @param publicId The entity's public identifier, or null.
	* @param systemId The entity's system identifier.
	* @return A new InputSource or null for the default.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	* @exception java.io.IOException The client may throw an
	*            I/O-related exception while obtaining the
	*            new InputSource.
	*/
	@:overload public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	/**
	* Filter a notation declaration event.
	*
	* @param name The notation name.
	* @param publicId The notation's public identifier, or null.
	* @param systemId The notation's system identifier, or null.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Filter an unparsed entity declaration event.
	*
	* @param name The entity name.
	* @param publicId The entity's public identifier, or null.
	* @param systemId The entity's system identifier, or null.
	* @param notationName The name of the associated notation.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	/**
	* Filter a new document locator event.
	*
	* @param locator The document locator.
	*/
	@:overload public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/**
	* Filter a start document event.
	*
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function startDocument() : Void;
	
	/**
	* Filter an end document event.
	*
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function endDocument() : Void;
	
	/**
	* Filter a start Namespace prefix mapping event.
	*
	* @param prefix The Namespace prefix.
	* @param uri The Namespace URI.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* Filter an end Namespace prefix mapping event.
	*
	* @param prefix The Namespace prefix.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Filter a start element event.
	*
	* @param uri The element's Namespace URI, or the empty string.
	* @param localName The element's local name, or the empty string.
	* @param qName The element's qualified (prefixed) name, or the empty
	*        string.
	* @param atts The element's attributes.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Filter an end element event.
	*
	* @param uri The element's Namespace URI, or the empty string.
	* @param localName The element's local name, or the empty string.
	* @param qName The element's qualified (prefixed) name, or the empty
	*        string.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function endElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* Filter a character data event.
	*
	* @param ch An array of characters.
	* @param start The starting position in the array.
	* @param length The number of characters to use from the array.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Filter an ignorable whitespace event.
	*
	* @param ch An array of characters.
	* @param start The starting position in the array.
	* @param length The number of characters to use from the array.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Filter a processing instruction event.
	*
	* @param target The processing instruction target.
	* @param data The text following the target.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Filter a skipped entity event.
	*
	* @param name The name of the skipped entity.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function skippedEntity(name : String) : Void;
	
	/**
	* Filter a warning event.
	*
	* @param e The warning as an exception.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function warning(e : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Filter an error event.
	*
	* @param e The error as an exception.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function error(e : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Filter a fatal error event.
	*
	* @param e The error as an exception.
	* @exception org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload public function fatalError(e : org.xml.sax.SAXParseException) : Void;
	
	
}
