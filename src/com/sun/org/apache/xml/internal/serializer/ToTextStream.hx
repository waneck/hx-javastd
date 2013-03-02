package com.sun.org.apache.xml.internal.serializer;
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
* $Id: ToTextStream.java,v 1.2.4.1 2005/09/21 10:35:34 pvedula Exp $
*/
extern class ToTextStream extends com.sun.org.apache.xml.internal.serializer.ToStream
{
	/**
	* Default constructor.
	*/
	@:overload public function new() : Void;
	
	/**
	* Receive notification of the beginning of a document.
	*
	* <p>The SAX parser will invoke this method only once, before any
	* other methods in this interface or in DTDHandler (except for
	* setDocumentLocator).</p>
	*
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload private function startDocumentInternal() : Void;
	
	/**
	* Receive notification of the end of a document.
	*
	* <p>The SAX parser will invoke this method only once, and it will
	* be the last method invoked during the parse.  The parser shall
	* not invoke this method until it has either abandoned parsing
	* (because of an unrecoverable error) or reached the end of
	* input.</p>
	*
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function endDocument() : Void;
	
	/**
	* Receive notification of the beginning of an element.
	*
	* <p>The Parser will invoke this method at the beginning of every
	* element in the XML document; there will be a corresponding
	* endElement() event for every startElement() event (even when the
	* element is empty). All of the element's content will be
	* reported, in order, before the corresponding endElement()
	* event.</p>
	*
	* <p>If the element name has a namespace prefix, the prefix will
	* still be attached.  Note that the attribute list provided will
	* contain only attributes with explicit values (specified or
	* defaulted): #IMPLIED attributes will be omitted.</p>
	*
	*
	* @param namespaceURI The Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed.
	* @param localName The local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed.
	* @param name The qualified name (with prefix), or the
	*        empty string if qualified names are not available.
	* @param atts The attributes attached to the element, if any.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see #endElement
	* @see org.xml.sax.AttributeList
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function startElement(namespaceURI : String, localName : String, name : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Receive notification of the end of an element.
	*
	* <p>The SAX parser will invoke this method at the end of every
	* element in the XML document; there will be a corresponding
	* startElement() event for every endElement() event (even when the
	* element is empty).</p>
	*
	* <p>If the element name has a namespace prefix, the prefix will
	* still be attached to the name.</p>
	*
	*
	* @param namespaceURI The Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed.
	* @param localName The local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed.
	* @param name The qualified name (with prefix), or the
	*        empty string if qualified names are not available.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function endElement(namespaceURI : String, localName : String, name : String) : Void;
	
	/**
	* Receive notification of character data.
	*
	* <p>The Parser will call this method to report each chunk of
	* character data.  SAX parsers may return all contiguous character
	* data in a single chunk, or they may split it into several
	* chunks; however, all of the characters in any single event
	* must come from the same external entity, so that the Locator
	* provides useful information.</p>
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Note that some parsers will report whitespace using the
	* ignorableWhitespace() method rather than this one (validating
	* parsers must do so).</p>
	*
	* @param ch The characters from the XML document.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see #ignorableWhitespace
	* @see org.xml.sax.Locator
	*/
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* If available, when the disable-output-escaping attribute is used,
	* output raw text without escaping.
	*
	* @param ch The characters from the XML document.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	*
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*/
	@:overload override public function charactersRaw(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of cdata.
	*
	* <p>The Parser will call this method to report each chunk of
	* character data.  SAX parsers may return all contiguous character
	* data in a single chunk, or they may split it into several
	* chunks; however, all of the characters in any single event
	* must come from the same external entity, so that the Locator
	* provides useful information.</p>
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Note that some parsers will report whitespace using the
	* ignorableWhitespace() method rather than this one (validating
	* parsers must do so).</p>
	*
	* @param ch The characters from the XML document.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see #ignorableWhitespace
	* @see org.xml.sax.Locator
	*/
	@:overload override public function cdata(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of ignorable whitespace in element content.
	*
	* <p>Validating Parsers must use this method to report each chunk
	* of ignorable whitespace (see the W3C XML 1.0 recommendation,
	* section 2.10): non-validating parsers may also use this method
	* if they are capable of parsing and using content models.</p>
	*
	* <p>SAX parsers may return all contiguous whitespace in a single
	* chunk, or they may split it into several chunks; however, all of
	* the characters in any single event must come from the same
	* external entity, so that the Locator provides useful
	* information.</p>
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* @param ch The characters from the XML document.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see #characters
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of a processing instruction.
	*
	* <p>The Parser will invoke this method once for each processing
	* instruction found: note that processing instructions may occur
	* before or after the main document element.</p>
	*
	* <p>A SAX parser should never report an XML declaration (XML 1.0,
	* section 2.8) or a text declaration (XML 1.0, section 4.3.1)
	* using this method.</p>
	*
	* @param target The processing instruction target.
	* @param data The processing instruction data, or null if
	*        none was supplied.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Called when a Comment is to be constructed.
	* Note that Xalan will normally invoke the other version of this method.
	* %REVIEW% In fact, is this one ever needed, or was it a mistake?
	*
	* @param   data  The comment data.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*/
	@:overload public function comment(data : String) : Void;
	
	/**
	* Report an XML comment anywhere in the document.
	*
	* This callback will be used for comments inside or outside the
	* document element, including comments in the external DTD
	* subset (if read).
	*
	* @param ch An array holding the characters in the comment.
	* @param start The starting position in the array.
	* @param length The number of characters to use from the array.
	* @throws org.xml.sax.SAXException The application may raise an exception.
	*/
	@:overload override public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notivication of a entityReference.
	*
	* @param name non-null reference to the name of the entity.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload public function entityReference(name : String) : Void;
	
	/**
	* @see ExtendedContentHandler#addAttribute(String, String, String, String, String)
	*/
	@:overload public function addAttribute(uri : String, localName : String, rawName : String, type : String, value : String, XSLAttribute : Bool) : Void;
	
	/**
	* @see org.xml.sax.ext.LexicalHandler#endCDATA()
	*/
	@:overload override public function endCDATA() : Void;
	
	/**
	* @see ExtendedContentHandler#endElement(String)
	*/
	@:overload override public function endElement(elemName : String) : Void;
	
	/**
	* From XSLTC
	*/
	@:overload override public function startElement(elementNamespaceURI : String, elementLocalName : String, elementName : String) : Void;
	
	/**
	* From XSLTC
	*/
	@:overload override public function characters(characters : String) : Void;
	
	/**
	* From XSLTC
	*/
	@:overload public function addAttribute(name : String, value : String) : Void;
	
	/**
	* Add a unique attribute
	*/
	@:overload override public function addUniqueAttribute(qName : String, value : String, flags : Int) : Void;
	
	@:overload override public function startPrefixMapping(prefix : String, uri : String, shouldFlush : Bool) : Bool;
	
	@:overload override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload public function namespaceAfterStartElement(prefix : String, uri : String) : Void;
	
	@:overload override public function flushPending() : Void;
	
	
}
