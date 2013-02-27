package org.xml.sax.helpers;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
//// DefaultHandler.java - default implementation of the core handlers.
//// http://www.saxproject.org
//// Written by David Megginson
//// NO WARRANTY!  This class is in the public domain.
//// $Id: DefaultHandler.java,v 1.3 2006/04/13 02:06:32 jeffsuttor Exp $
extern class DefaultHandler implements org.xml.sax.EntityResolver implements org.xml.sax.DTDHandler implements org.xml.sax.ContentHandler implements org.xml.sax.ErrorHandler
{
	/**
	* Resolve an external entity.
	*
	* <p>Always return null, so that the parser will use the system
	* identifier provided in the XML document.  This method implements
	* the SAX default behaviour: application writers can override it
	* in a subclass to do special translations such as catalog lookups
	* or URI redirection.</p>
	*
	* @param publicId The public identifier, or null if none is
	*                 available.
	* @param systemId The system identifier provided in the XML
	*                 document.
	* @return The new input source, or null to require the
	*         default behaviour.
	* @exception java.io.IOException If there is an error setting
	*            up the new input source.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.EntityResolver#resolveEntity
	*/
	@:overload public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	/**
	* Receive notification of a notation declaration.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass if they wish to keep track of the notations
	* declared in a document.</p>
	*
	* @param name The notation name.
	* @param publicId The notation public identifier, or null if not
	*                 available.
	* @param systemId The notation system identifier.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.DTDHandler#notationDecl
	*/
	@:overload public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Receive notification of an unparsed entity declaration.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass to keep track of the unparsed entities
	* declared in a document.</p>
	*
	* @param name The entity name.
	* @param publicId The entity public identifier, or null if not
	*                 available.
	* @param systemId The entity system identifier.
	* @param notationName The name of the associated notation.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.DTDHandler#unparsedEntityDecl
	*/
	@:overload public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	/**
	* Receive a Locator object for document events.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass if they wish to store the locator for use
	* with other document events.</p>
	*
	* @param locator A locator for all SAX document events.
	* @see org.xml.sax.ContentHandler#setDocumentLocator
	* @see org.xml.sax.Locator
	*/
	@:overload public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/**
	* Receive notification of the beginning of the document.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass to take specific actions at the beginning
	* of a document (such as allocating the root node of a tree or
	* creating an output file).</p>
	*
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#startDocument
	*/
	@:overload public function startDocument() : Void;
	
	/**
	* Receive notification of the end of the document.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass to take specific actions at the end
	* of a document (such as finalising a tree or closing an output
	* file).</p>
	*
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#endDocument
	*/
	@:overload public function endDocument() : Void;
	
	/**
	* Receive notification of the start of a Namespace mapping.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass to take specific actions at the start of
	* each Namespace prefix scope (such as storing the prefix mapping).</p>
	*
	* @param prefix The Namespace prefix being declared.
	* @param uri The Namespace URI mapped to the prefix.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#startPrefixMapping
	*/
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* Receive notification of the end of a Namespace mapping.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass to take specific actions at the end of
	* each prefix mapping.</p>
	*
	* @param prefix The Namespace prefix being declared.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#endPrefixMapping
	*/
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Receive notification of the start of an element.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass to take specific actions at the start of
	* each element (such as allocating a new tree node or writing
	* output to a file).</p>
	*
	* @param uri The Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed.
	* @param localName The local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed.
	* @param qName The qualified name (with prefix), or the
	*        empty string if qualified names are not available.
	* @param attributes The attributes attached to the element.  If
	*        there are no attributes, it shall be an empty
	*        Attributes object.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#startElement
	*/
	@:overload public function startElement(uri : String, localName : String, qName : String, attributes : org.xml.sax.Attributes) : Void;
	
	/**
	* Receive notification of the end of an element.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass to take specific actions at the end of
	* each element (such as finalising a tree node or writing
	* output to a file).</p>
	*
	* @param uri The Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed.
	* @param localName The local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed.
	* @param qName The qualified name (with prefix), or the
	*        empty string if qualified names are not available.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#endElement
	*/
	@:overload public function endElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* Receive notification of character data inside an element.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method to take specific actions for each chunk of character data
	* (such as adding the data to a node or buffer, or printing it to
	* a file).</p>
	*
	* @param ch The characters.
	* @param start The start position in the character array.
	* @param length The number of characters to use from the
	*               character array.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#characters
	*/
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of ignorable whitespace in element content.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method to take specific actions for each chunk of ignorable
	* whitespace (such as adding data to a node or buffer, or printing
	* it to a file).</p>
	*
	* @param ch The whitespace characters.
	* @param start The start position in the character array.
	* @param length The number of characters to use from the
	*               character array.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#ignorableWhitespace
	*/
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of a processing instruction.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass to take specific actions for each
	* processing instruction, such as setting status variables or
	* invoking other methods.</p>
	*
	* @param target The processing instruction target.
	* @param data The processing instruction data, or null if
	*             none is supplied.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#processingInstruction
	*/
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Receive notification of a skipped entity.
	*
	* <p>By default, do nothing.  Application writers may override this
	* method in a subclass to take specific actions for each
	* processing instruction, such as setting status variables or
	* invoking other methods.</p>
	*
	* @param name The name of the skipped entity.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#processingInstruction
	*/
	@:overload public function skippedEntity(name : String) : Void;
	
	/**
	* Receive notification of a parser warning.
	*
	* <p>The default implementation does nothing.  Application writers
	* may override this method in a subclass to take specific actions
	* for each warning, such as inserting the message in a log file or
	* printing it to the console.</p>
	*
	* @param e The warning information encoded as an exception.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ErrorHandler#warning
	* @see org.xml.sax.SAXParseException
	*/
	@:overload public function warning(e : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Receive notification of a recoverable parser error.
	*
	* <p>The default implementation does nothing.  Application writers
	* may override this method in a subclass to take specific actions
	* for each error, such as inserting the message in a log file or
	* printing it to the console.</p>
	*
	* @param e The error information encoded as an exception.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ErrorHandler#warning
	* @see org.xml.sax.SAXParseException
	*/
	@:overload public function error(e : org.xml.sax.SAXParseException) : Void;
	
	/**
	* Report a fatal XML parsing error.
	*
	* <p>The default implementation throws a SAXParseException.
	* Application writers may override this method in a subclass if
	* they need to take specific actions for each fatal error (such as
	* collecting all of the errors into a single report): in any case,
	* the application must stop all regular processing when this
	* method is invoked, since the document is no longer reliable, and
	* the parser may no longer report parsing events.</p>
	*
	* @param e The error information encoded as an exception.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ErrorHandler#fatalError
	* @see org.xml.sax.SAXParseException
	*/
	@:overload public function fatalError(e : org.xml.sax.SAXParseException) : Void;
	
	
}
