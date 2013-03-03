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
//// XMLReaderAdapter.java - adapt an SAX2 XMLReader to a SAX1 Parser
//// http://www.saxproject.org
//// Written by David Megginson
//// NO WARRANTY!  This class is in the public domain.
//// $Id: XMLReaderAdapter.java,v 1.3 2004/11/03 22:53:09 jsuttor Exp $
extern class XMLReaderAdapter implements org.xml.sax.Parser implements org.xml.sax.ContentHandler
{
	/**
	* Create a new adapter.
	*
	* <p>Use the "org.xml.sax.driver" property to locate the SAX2
	* driver to embed.</p>
	*
	* @exception org.xml.sax.SAXException If the embedded driver
	*            cannot be instantiated or if the
	*            org.xml.sax.driver property is not specified.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Create a new adapter.
	*
	* <p>Create a new adapter, wrapped around a SAX2 XMLReader.
	* The adapter will make the XMLReader act like a SAX1
	* Parser.</p>
	*
	* @param xmlReader The SAX2 XMLReader to wrap.
	* @exception java.lang.NullPointerException If the argument is null.
	*/
	@:overload @:public public function new(xmlReader : org.xml.sax.XMLReader) : Void;
	
	/**
	* Set the locale for error reporting.
	*
	* <p>This is not supported in SAX2, and will always throw
	* an exception.</p>
	*
	* @param locale the locale for error reporting.
	* @see org.xml.sax.Parser#setLocale
	* @exception org.xml.sax.SAXException Thrown unless overridden.
	*/
	@:overload @:public public function setLocale(locale : java.util.Locale) : Void;
	
	/**
	* Register the entity resolver.
	*
	* @param resolver The new resolver.
	* @see org.xml.sax.Parser#setEntityResolver
	*/
	@:overload @:public public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	/**
	* Register the DTD event handler.
	*
	* @param handler The new DTD event handler.
	* @see org.xml.sax.Parser#setDTDHandler
	*/
	@:overload @:public public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	/**
	* Register the SAX1 document event handler.
	*
	* <p>Note that the SAX1 document handler has no Namespace
	* support.</p>
	*
	* @param handler The new SAX1 document event handler.
	* @see org.xml.sax.Parser#setDocumentHandler
	*/
	@:overload @:public public function setDocumentHandler(handler : org.xml.sax.DocumentHandler) : Void;
	
	/**
	* Register the error event handler.
	*
	* @param handler The new error event handler.
	* @see org.xml.sax.Parser#setErrorHandler
	*/
	@:overload @:public public function setErrorHandler(handler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Parse the document.
	*
	* <p>This method will throw an exception if the embedded
	* XMLReader does not support the
	* http://xml.org/sax/features/namespace-prefixes property.</p>
	*
	* @param systemId The absolute URL of the document.
	* @exception java.io.IOException If there is a problem reading
	*            the raw content of the document.
	* @exception org.xml.sax.SAXException If there is a problem
	*            processing the document.
	* @see #parse(org.xml.sax.InputSource)
	* @see org.xml.sax.Parser#parse(java.lang.String)
	*/
	@:overload @:public public function parse(systemId : String) : Void;
	
	/**
	* Parse the document.
	*
	* <p>This method will throw an exception if the embedded
	* XMLReader does not support the
	* http://xml.org/sax/features/namespace-prefixes property.</p>
	*
	* @param input An input source for the document.
	* @exception java.io.IOException If there is a problem reading
	*            the raw content of the document.
	* @exception org.xml.sax.SAXException If there is a problem
	*            processing the document.
	* @see #parse(java.lang.String)
	* @see org.xml.sax.Parser#parse(org.xml.sax.InputSource)
	*/
	@:overload @:public public function parse(input : org.xml.sax.InputSource) : Void;
	
	/**
	* Set a document locator.
	*
	* @param locator The document locator.
	* @see org.xml.sax.ContentHandler#setDocumentLocator
	*/
	@:overload @:public public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/**
	* Start document event.
	*
	* @exception org.xml.sax.SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.ContentHandler#startDocument
	*/
	@:overload @:public public function startDocument() : Void;
	
	/**
	* End document event.
	*
	* @exception org.xml.sax.SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.ContentHandler#endDocument
	*/
	@:overload @:public public function endDocument() : Void;
	
	/**
	* Adapt a SAX2 start prefix mapping event.
	*
	* @param prefix The prefix being mapped.
	* @param uri The Namespace URI being mapped to.
	* @see org.xml.sax.ContentHandler#startPrefixMapping
	*/
	@:overload @:public public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* Adapt a SAX2 end prefix mapping event.
	*
	* @param prefix The prefix being mapped.
	* @see org.xml.sax.ContentHandler#endPrefixMapping
	*/
	@:overload @:public public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Adapt a SAX2 start element event.
	*
	* @param uri The Namespace URI.
	* @param localName The Namespace local name.
	* @param qName The qualified (prefixed) name.
	* @param atts The SAX2 attributes.
	* @exception org.xml.sax.SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.ContentHandler#endDocument
	*/
	@:overload @:public public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Adapt a SAX2 end element event.
	*
	* @param uri The Namespace URI.
	* @param localName The Namespace local name.
	* @param qName The qualified (prefixed) name.
	* @exception org.xml.sax.SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.ContentHandler#endElement
	*/
	@:overload @:public public function endElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* Adapt a SAX2 characters event.
	*
	* @param ch An array of characters.
	* @param start The starting position in the array.
	* @param length The number of characters to use.
	* @exception org.xml.sax.SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.ContentHandler#characters
	*/
	@:overload @:public public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Adapt a SAX2 ignorable whitespace event.
	*
	* @param ch An array of characters.
	* @param start The starting position in the array.
	* @param length The number of characters to use.
	* @exception org.xml.sax.SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.ContentHandler#ignorableWhitespace
	*/
	@:overload @:public public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Adapt a SAX2 processing instruction event.
	*
	* @param target The processing instruction target.
	* @param data The remainder of the processing instruction
	* @exception org.xml.sax.SAXException The client may raise a
	*            processing exception.
	* @see org.xml.sax.ContentHandler#processingInstruction
	*/
	@:overload @:public public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Adapt a SAX2 skipped entity event.
	*
	* @param name The name of the skipped entity.
	* @see org.xml.sax.ContentHandler#skippedEntity
	* @exception org.xml.sax.SAXException Throwable by subclasses.
	*/
	@:overload @:public public function skippedEntity(name : String) : Void;
	
	
}
/**
* Internal class to wrap a SAX2 Attributes object for SAX1.
*/
@:native('org$xml$sax$helpers$XMLReaderAdapter$AttributesAdapter') @:internal extern class XMLReaderAdapter_AttributesAdapter implements org.xml.sax.AttributeList
{
	/**
	* Return the number of attributes.
	*
	* @return The length of the attribute list.
	* @see org.xml.sax.AttributeList#getLength
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Return the qualified (prefixed) name of an attribute by position.
	*
	* @return The qualified name.
	* @see org.xml.sax.AttributeList#getName
	*/
	@:overload @:public public function getName(i : Int) : String;
	
	/**
	* Return the type of an attribute by position.
	*
	* @return The type.
	* @see org.xml.sax.AttributeList#getType(int)
	*/
	@:overload @:public public function getType(i : Int) : String;
	
	/**
	* Return the value of an attribute by position.
	*
	* @return The value.
	* @see org.xml.sax.AttributeList#getValue(int)
	*/
	@:overload @:public public function getValue(i : Int) : String;
	
	/**
	* Return the type of an attribute by qualified (prefixed) name.
	*
	* @return The type.
	* @see org.xml.sax.AttributeList#getType(java.lang.String)
	*/
	@:overload @:public public function getType(qName : String) : String;
	
	/**
	* Return the value of an attribute by qualified (prefixed) name.
	*
	* @return The value.
	* @see org.xml.sax.AttributeList#getValue(java.lang.String)
	*/
	@:overload @:public public function getValue(qName : String) : String;
	
	
}
