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
* $Id: ToHTMLSAXHandler.java,v 1.3 2005/09/28 13:49:07 pvedula Exp $
*/
extern class ToHTMLSAXHandler extends com.sun.org.apache.xml.internal.serializer.ToSAXHandler
{
	/**
	* Keeps track of whether output escaping is currently enabled
	*/
	@:protected private var m_escapeSetting : Bool;
	
	/**
	* Returns null.
	* @return null
	* @see Serializer#getOutputFormat()
	*/
	@:overload @:public override public function getOutputFormat() : java.util.Properties;
	
	/**
	* Reurns null
	* @return null
	* @see Serializer#getOutputStream()
	*/
	@:overload @:public override public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Returns null
	* @return null
	* @see Serializer#getWriter()
	*/
	@:overload @:public override public function getWriter() : java.io.Writer;
	
	/**
	* Does nothing.
	*
	*/
	@:overload @:public public function indent(n : Int) : Void;
	
	/**
	* Does nothing.
	* @see DOMSerializer#serialize(Node)
	*/
	@:overload @:public override public function serialize(node : org.w3c.dom.Node) : Void;
	
	/**
	* Turns special character escaping on/off.
	*
	*
	* @param escape true if escaping is to be set on.
	*
	* @see SerializationHandler#setEscaping(boolean)
	*/
	@:overload @:public override public function setEscaping(escape : Bool) : Bool;
	
	/**
	* Does nothing
	* @param indent the number of spaces to indent per indentation level
	* (ignored)
	* @see SerializationHandler#setIndent(boolean)
	*/
	@:overload @:public override public function setIndent(indent : Bool) : Void;
	
	/**
	* Does nothing.
	* @param format this parameter is not used
	* @see Serializer#setOutputFormat(Properties)
	*/
	@:overload @:public override public function setOutputFormat(format : java.util.Properties) : Void;
	
	/**
	* Does nothing.
	* @param output this parameter is ignored
	* @see Serializer#setOutputStream(OutputStream)
	*/
	@:overload @:public override public function setOutputStream(output : java.io.OutputStream) : Void;
	
	/**
	* Does nothing.
	* @param writer this parameter is ignored.
	* @see Serializer#setWriter(Writer)
	*/
	@:overload @:public override public function setWriter(writer : java.io.Writer) : Void;
	
	/**
	* Does nothing.
	*
	* @param eName this parameter is ignored
	* @param aName this parameter is ignored
	* @param type this parameter is ignored
	* @param valueDefault this parameter is ignored
	* @param value this parameter is ignored
	* @see org.xml.sax.ext.DeclHandler#attributeDecl(String, String, String,String,String)
	*/
	@:overload @:public override public function attributeDecl(eName : String, aName : String, type : String, valueDefault : String, value : String) : Void;
	
	/**
	* Does nothing.
	* @see org.xml.sax.ext.DeclHandler#elementDecl(String, String)
	*/
	@:overload @:public override public function elementDecl(name : String, model : String) : Void;
	
	/**
	* @see org.xml.sax.ext.DeclHandler#externalEntityDecl(String, String, String)
	*/
	@:overload @:public override public function externalEntityDecl(arg0 : String, arg1 : String, arg2 : String) : Void;
	
	/**
	* Does nothing.
	*
	* @see org.xml.sax.DTDHandler#unparsedEntityDecl
	*/
	@:overload @:public override public function internalEntityDecl(name : String, value : String) : Void;
	
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
	* @param uri The Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed.
	* @param localName The local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed.
	* @param qName The qualified name (with prefix), or the
	*        empty string if qualified names are not available.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#endElement(String, String, String)
	*/
	@:overload @:public override public function endElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* Does nothing.
	*/
	@:overload @:public override public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Does nothing.
	* @see org.xml.sax.ContentHandler#ignorableWhitespace(char[], int, int)
	*/
	@:overload @:public override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
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
	* @see org.xml.sax.ContentHandler#processingInstruction(String, String)
	*/
	@:overload @:public override public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Does nothing.
	* @see org.xml.sax.ContentHandler#setDocumentLocator(Locator)
	*/
	@:overload @:public override public function setDocumentLocator(arg0 : org.xml.sax.Locator) : Void;
	
	/**
	* Does nothing.
	* @see org.xml.sax.ContentHandler#skippedEntity(String)
	*/
	@:overload @:public override public function skippedEntity(arg0 : String) : Void;
	
	/**
	* Receive notification of the beginning of an element, although this is a
	* SAX method additional namespace or attribute information can occur before
	* or after this call, that is associated with this element.
	*
	*
	* @param namespaceURI The Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed.
	* @param localName The local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed.
	* @param qName The elements name.
	* @param atts The attributes attached to the element, if any.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#startElement
	* @see org.xml.sax.ContentHandler#endElement
	* @see org.xml.sax.AttributeList
	*
	* @throws org.xml.sax.SAXException
	*
	* @see org.xml.sax.ContentHandler#startElement(String, String, String, Attributes)
	*/
	@:overload @:public override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Receive notification of a comment anywhere in the document. This callback
	* will be used for comments inside or outside the document element.
	* @param ch An array holding the characters in the comment.
	* @param start The starting position in the array.
	* @param length The number of characters to use from the array.
	* @throws org.xml.sax.SAXException The application may raise an exception.
	*
	* @see org.xml.sax.ext.LexicalHandler#comment(char[], int, int)
	*/
	@:overload @:public override public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Does nothing.
	* @see org.xml.sax.ext.LexicalHandler#endCDATA()
	*/
	@:overload @:public override public function endCDATA() : Void;
	
	/**
	* Does nothing.
	* @see org.xml.sax.ext.LexicalHandler#endDTD()
	*/
	@:overload @:public override public function endDTD() : Void;
	
	/**
	* Does nothing.
	* @see org.xml.sax.ext.LexicalHandler#startCDATA()
	*/
	@:overload @:public override public function startCDATA() : Void;
	
	/**
	* Does nothing.
	* @see org.xml.sax.ext.LexicalHandler#startEntity(String)
	*/
	@:overload @:public override public function startEntity(arg0 : String) : Void;
	
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
	*
	*
	*/
	@:overload @:public override public function endDocument() : Void;
	
	/**
	* This method is called when all the data needed for a call to the
	* SAX handler's startElement() method has been gathered.
	*/
	@:overload @:protected override private function closeStartTag() : Void;
	
	/**
	* Do nothing.
	* @see SerializationHandler#close()
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* Receive notification of character data.
	*
	* @param chars The string of characters to process.
	*
	* @throws org.xml.sax.SAXException
	*
	* @see ExtendedContentHandler#characters(String)
	*/
	@:overload @:public override public function characters(chars : String) : Void;
	
	/**
	* A constructor
	* @param handler the wrapped SAX content handler
	* @param encoding the encoding of the output HTML document
	*/
	@:overload @:public public function new(handler : org.xml.sax.ContentHandler, encoding : String) : Void;
	
	/**
	* A constructor.
	* @param handler the wrapped SAX content handler
	* @param lex the wrapped lexical handler
	* @param encoding the encoding of the output HTML document
	*/
	@:overload @:public public function new(handler : org.xml.sax.ContentHandler, lex : org.xml.sax.ext.LexicalHandler, encoding : String) : Void;
	
	/**
	* An element starts, but attributes are not fully known yet.
	*
	* @param elementNamespaceURI the URI of the namespace of the element
	* (optional)
	* @param elementLocalName the element name, but without prefix
	* (optional)
	* @param elementName the element name, with prefix, if any (required)
	*
	* @see ExtendedContentHandler#startElement(String)
	*/
	@:overload @:public override public function startElement(elementNamespaceURI : String, elementLocalName : String, elementName : String) : Void;
	
	/**
	* An element starts, but attributes are not fully known yet.
	*
	* @param elementName the element name, with prefix, if any
	*
	* @see ExtendedContentHandler#startElement(String)
	*/
	@:overload @:public override public function startElement(elementName : String) : Void;
	
	/**
	* Receive notification of the end of an element.
	* @param elementName The element type name
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*     wrapping another exception.
	*
	* @see ExtendedContentHandler#endElement(String)
	*/
	@:overload @:public override public function endElement(elementName : String) : Void;
	
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
	* @param off The start position in the array.
	* @param len The number of characters to read from the array.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see #ignorableWhitespace
	* @see org.xml.sax.Locator
	*
	* @throws org.xml.sax.SAXException
	*
	* @see org.xml.sax.ContentHandler#characters(char[], int, int)
	*/
	@:overload @:public override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	/**
	* This method flushes any pending events, which can be startDocument()
	* closing the opening tag of an element, or closing an open CDATA section.
	*/
	@:overload @:public override public function flushPending() : Void;
	
	/**
	* Handle a prefix/uri mapping, which is associated with a startElement()
	* that is soon to follow. Need to close any open start tag to make
	* sure than any name space attributes due to this event are associated wih
	* the up comming element, not the current one.
	* @see ExtendedContentHandler#startPrefixMapping
	*
	* @param prefix The Namespace prefix being declared.
	* @param uri The Namespace URI the prefix is mapped to.
	* @param shouldFlush true if any open tags need to be closed first, this
	* will impact which element the mapping applies to (open parent, or its up
	* comming child)
	* @return returns true if the call made a change to the current
	* namespace information, false if it did not change anything, e.g. if the
	* prefix/namespace mapping was already in scope from before.
	*
	* @throws org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String, shouldFlush : Bool) : Bool;
	
	/**
	* Begin the scope of a prefix-URI Namespace mapping
	* just before another element is about to start.
	* This call will close any open tags so that the prefix mapping
	* will not apply to the current element, but the up comming child.
	*
	* @see org.xml.sax.ContentHandler#startPrefixMapping
	*
	* @param prefix The Namespace prefix being declared.
	* @param uri The Namespace URI the prefix is mapped to.
	*
	* @throws org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*
	*/
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* This method is used when a prefix/uri namespace mapping
	* is indicated after the element was started with a
	* startElement() and before and endElement().
	* startPrefixMapping(prefix,uri) would be used before the
	* startElement() call.
	* @param prefix the prefix associated with the given URI.
	* @param uri the URI of the namespace
	*
	* @see ExtendedContentHandler#namespaceAfterStartElement(String, String)
	*/
	@:overload @:public override public function namespaceAfterStartElement(prefix : String, uri : String) : Void;
	
	/**
	* Try's to reset the super class and reset this class for
	* re-use, so that you don't need to create a new serializer
	* (mostly for performance reasons).
	*
	* @return true if the class was successfuly reset.
	* @see Serializer#reset()
	*/
	@:overload @:public override public function reset() : Bool;
	
	
}
