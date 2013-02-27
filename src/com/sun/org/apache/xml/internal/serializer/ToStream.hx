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
* $Id: ToStream.java,v 1.4 2005/11/10 06:43:26 suresh_emailid Exp $
*/
extern class ToStream extends com.sun.org.apache.xml.internal.serializer.SerializerBase
{
	/** Stack to keep track of disabling output escaping. */
	private var m_disableOutputEscapingStates : ToStream_BoolStack;
	
	/**
	* Stack to keep track of whether or not we need to
	* preserve whitespace.
	*
	* Used to push/pop values used for the field m_ispreserve, but
	* m_ispreserve is only relevant if m_doIndent is true.
	* If m_doIndent is false this field has no impact.
	*
	*/
	private var m_preserves : ToStream_BoolStack;
	
	/**
	* State flag to tell if preservation of whitespace
	* is important.
	*
	* Used only in shouldIndent() but only if m_doIndent is true.
	* If m_doIndent is false this flag has no impact.
	*
	*/
	private var m_ispreserve : Bool;
	
	/**
	* State flag that tells if the previous node processed
	* was text, so we can tell if we should preserve whitespace.
	*
	* Used in endDocument() and shouldIndent() but
	* only if m_doIndent is true.
	* If m_doIndent is false this flag has no impact.
	*/
	private var m_isprevtext : Bool;
	
	/**
	* The maximum character size before we have to resort
	* to escaping.
	*/
	private var m_maxCharacter : Int;
	
	/**
	* The system line separator for writing out line breaks.
	* The default value is from the system property,
	* but this value can be set through the xsl:output
	* extension attribute xalan:line-separator.
	*/
	private var m_lineSep : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* True if the the system line separator is to be used.
	*/
	private var m_lineSepUse : Bool;
	
	/**
	* The length of the line seperator, since the write is done
	* one character at a time.
	*/
	private var m_lineSepLen : Int;
	
	/**
	* Map that tells which characters should have special treatment, and it
	*  provides character to entity name lookup.
	*/
	private var m_charInfo : com.sun.org.apache.xml.internal.serializer.CharInfo;
	
	/**
	* Add space before '/>' for XHTML.
	*/
	private var m_spaceBeforeClose : Bool;
	
	/**
	* Tells if we're in an internal document type subset.
	*/
	private var m_inDoctype : Bool;
	
	/** The xsl:output properties. */
	private var m_format : java.util.Properties;
	
	/**
	* remembers if we are in between the startCDATA() and endCDATA() callbacks
	*/
	private var m_cdataStartCalled : Bool;
	
	/**
	* Default constructor
	*/
	@:overload public function new() : Void;
	
	/**
	* This helper method to writes out "]]>" when closing a CDATA section.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload private function closeCDATA() : Void;
	
	/**
	* Serializes the DOM node. Throws an exception only if an I/O
	* exception occured while serializing.
	*
	* @param node Node to serialize.
	* @throws IOException An I/O exception occured while serializing
	*/
	@:overload override public function serialize(node : org.w3c.dom.Node) : Void;
	
	/**
	* Flush the formatter's result stream.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:final private function flushWriter() : Void;
	
	/**
	* Get the output stream where the events will be serialized to.
	*
	* @return reference to the result stream, or null of only a writer was
	* set.
	*/
	@:overload override public function getOutputStream() : java.io.OutputStream;
	
	/**
	*   Report an element type declaration.
	*
	*   <p>The content model will consist of the string "EMPTY", the
	*   string "ANY", or a parenthesised group, optionally followed
	*   by an occurrence indicator.  The model will be normalized so
	*   that all whitespace is removed,and will include the enclosing
	*   parentheses.</p>
	*
	*   @param name The element type name.
	*   @param model The content model as a normalized string.
	*   @exception SAXException The application may raise an exception.
	*/
	@:overload override public function elementDecl(name : String, model : String) : Void;
	
	/**
	* Report an internal entity declaration.
	*
	* <p>Only the effective (first) declaration for each entity
	* will be reported.</p>
	*
	* @param name The name of the entity.  If it is a parameter
	*        entity, the name will begin with '%'.
	* @param value The replacement text of the entity.
	* @exception SAXException The application may raise an exception.
	* @see #externalEntityDecl
	* @see org.xml.sax.DTDHandler#unparsedEntityDecl
	*/
	@:overload override public function internalEntityDecl(name : String, value : String) : Void;
	
	/**
	* Output a system-dependent line break.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload @:final private function outputLineSep() : Void;
	
	/**
	* Specifies an output format for this serializer. It the
	* serializer has already been associated with an output format,
	* it will switch to the new format. This method should not be
	* called while the serializer is in the process of serializing
	* a document.
	*
	* @param format The output format to use
	*/
	@:overload override public function setOutputFormat(format : java.util.Properties) : Void;
	
	/**
	* Initialize the serializer with the specified output stream and output
	* format. Must be called before calling any of the serialize methods.
	*
	* @param output The output stream to use
	* @param format The output format
	* @param defaultProperties true if the properties are the default
	* properties
	*
	* @throws UnsupportedEncodingException The encoding specified   in the
	* output format is not supported
	*/
	@:overload @:synchronized private function init(output : java.io.OutputStream, format : java.util.Properties, defaultProperties : Bool) : Void;
	
	/**
	* Returns the output format for this serializer.
	*
	* @return The output format in use
	*/
	@:overload override public function getOutputFormat() : java.util.Properties;
	
	/**
	* Specifies a writer to which the document should be serialized.
	* This method should not be called while the serializer is in
	* the process of serializing a document.
	*
	* @param writer The output writer stream
	*/
	@:overload override public function setWriter(writer : java.io.Writer) : Void;
	
	/**
	* Set if the operating systems end-of-line line separator should
	* be used when serializing.  If set false NL character
	* (decimal 10) is left alone, otherwise the new-line will be replaced on
	* output with the systems line separator. For example on UNIX this is
	* NL, while on Windows it is two characters, CR NL, where CR is the
	* carriage-return (decimal 13).
	*
	* @param use_sytem_line_break True if an input NL is replaced with the
	* operating systems end-of-line separator.
	* @return The previously set value of the serializer.
	*/
	@:overload public function setLineSepUse(use_sytem_line_break : Bool) : Bool;
	
	/**
	* Specifies an output stream to which the document should be
	* serialized. This method should not be called while the
	* serializer is in the process of serializing a document.
	* <p>
	* The encoding specified in the output properties is used, or
	* if no encoding was specified, the default for the selected
	* output method.
	*
	* @param output The output stream
	*/
	@:overload override public function setOutputStream(output : java.io.OutputStream) : Void;
	
	/**
	* @see SerializationHandler#setEscaping(boolean)
	*/
	@:overload override public function setEscaping(escape : Bool) : Bool;
	
	/**
	* Might print a newline character and the indentation amount
	* of the given depth.
	*
	* @param depth the indentation depth (element nesting depth)
	*
	* @throws org.xml.sax.SAXException if an error occurs during writing.
	*/
	@:overload private function indent(depth : Int) : Void;
	
	/**
	* Indent at the current element nesting depth.
	* @throws IOException
	*/
	@:overload private function indent() : Void;
	
	/**
	* Report an attribute type declaration.
	*
	* <p>Only the effective (first) declaration for an attribute will
	* be reported.  The type will be one of the strings "CDATA",
	* "ID", "IDREF", "IDREFS", "NMTOKEN", "NMTOKENS", "ENTITY",
	* "ENTITIES", or "NOTATION", or a parenthesized token group with
	* the separator "|" and all whitespace removed.</p>
	*
	* @param eName The name of the associated element.
	* @param aName The name of the attribute.
	* @param type A string representing the attribute type.
	* @param valueDefault A string representing the attribute default
	*        ("#IMPLIED", "#REQUIRED", or "#FIXED") or null if
	*        none of these applies.
	* @param value A string representing the attribute's default value,
	*        or null if there is none.
	* @exception SAXException The application may raise an exception.
	*/
	@:overload override public function attributeDecl(eName : String, aName : String, type : String, valueDefault : String, value : String) : Void;
	
	/**
	* Get the character stream where the events will be serialized to.
	*
	* @return Reference to the result Writer, or null.
	*/
	@:overload override public function getWriter() : java.io.Writer;
	
	/**
	* Report a parsed external entity declaration.
	*
	* <p>Only the effective (first) declaration for each entity
	* will be reported.</p>
	*
	* @param name The name of the entity.  If it is a parameter
	*        entity, the name will begin with '%'.
	* @param publicId The declared public identifier of the entity, or
	*        null if none was declared.
	* @param systemId The declared system identifier of the entity.
	* @exception SAXException The application may raise an exception.
	* @see #internalEntityDecl
	* @see org.xml.sax.DTDHandler#unparsedEntityDecl
	*/
	@:overload override public function externalEntityDecl(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Tell if this character can be written without escaping.
	*/
	@:overload private function escapingNotNeeded(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Once a surrogate has been detected, write out the pair of
	* characters if it is in the encoding, or if there is no
	* encoding, otherwise write out an entity reference
	* of the value of the unicode code point of the character
	* represented by the high/low surrogate pair.
	* <p>
	* An exception is thrown if there is no low surrogate in the pair,
	* because the array ends unexpectely, or if the low char is there
	* but its value is such that it is not a low surrogate.
	*
	* @param c the first (high) part of the surrogate, which
	* must be confirmed before calling this method.
	* @param ch Character array.
	* @param i position Where the surrogate was detected.
	* @param end The end index of the significant characters.
	* @return 0 if the pair of characters was written out as-is,
	* the unicode code point of the character represented by
	* the surrogate pair if an entity reference with that value
	* was written out.
	*
	* @throws IOException
	* @throws org.xml.sax.SAXException if invalid UTF-16 surrogate detected.
	*/
	@:overload private function writeUTF16Surrogate(c : java.StdTypes.Char16, ch : java.NativeArray<java.StdTypes.Char16>, i : Int, end : Int) : Int;
	
	/**
	* Handle one of the default entities, return false if it
	* is not a default entity.
	*
	* @param ch character to be escaped.
	* @param i index into character array.
	* @param chars non-null reference to character array.
	* @param len length of chars.
	* @param fromTextNode true if the characters being processed
	* are from a text node, false if they are from an attribute value
	* @param escLF true if the linefeed should be escaped.
	*
	* @return i+1 if the character was written, else i.
	*
	* @throws java.io.IOException
	*/
	@:overload private function accumDefaultEntity(writer : java.io.Writer, ch : java.StdTypes.Char16, i : Int, chars : java.NativeArray<java.StdTypes.Char16>, len : Int, fromTextNode : Bool, escLF : Bool) : Int;
	
	/**
	* Ends an un-escaping section.
	*
	* @see #startNonEscaping
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload public function endNonEscaping() : Void;
	
	/**
	* Starts an un-escaping section. All characters printed within an un-
	* escaping section are printed as is, without escaping special characters
	* into entity references. Only XML and HTML serializers need to support
	* this method.
	* <p> The contents of the un-escaping section will be delivered through the
	* regular <tt>characters</tt> event.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload public function startNonEscaping() : Void;
	
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
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload private function cdata(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* If available, when the disable-output-escaping attribute is used,
	* output raw text without escaping.
	*
	* @param ch The characters from the XML document.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload private function charactersRaw(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
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
	* @param chars The characters from the XML document.
	* @param start The start position in the array.
	* @param length The number of characters to read from the array.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see #ignorableWhitespace
	* @see org.xml.sax.Locator
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function characters(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of character data.
	*
	* @param s The string of characters to process.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function characters(s : String) : Void;
	
	/**
	* Escape and writer.write a character.
	*
	* @param ch character to be escaped.
	* @param i index into character array.
	* @param chars non-null reference to character array.
	* @param len length of chars.
	* @param fromTextNode true if the characters being processed are
	* from a text node, false if the characters being processed are from
	* an attribute value.
	* @param escLF true if the linefeed should be escaped.
	*
	* @return i+1 if a character was written, i+2 if two characters
	* were written out, else return i.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload private function accumDefaultEscape(writer : java.io.Writer, ch : java.StdTypes.Char16, i : Int, chars : java.NativeArray<java.StdTypes.Char16>, len : Int, fromTextNode : Bool, escLF : Bool) : Int;
	
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
	* @param name The element type name.
	* @param atts The attributes attached to the element, if any.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#startElement
	* @see org.xml.sax.ContentHandler#endElement
	* @see org.xml.sax.AttributeList
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function startElement(namespaceURI : String, localName : String, name : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Receive notification of the beginning of an element, additional
	* namespace or attribute information can occur before or after this call,
	* that is associated with this element.
	*
	*
	* @param elementNamespaceURI The Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed.
	* @param elementLocalName The local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed.
	* @param elementName The element type name.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#startElement
	* @see org.xml.sax.ContentHandler#endElement
	* @see org.xml.sax.AttributeList
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function startElement(elementNamespaceURI : String, elementLocalName : String, elementName : String) : Void;
	
	@:overload override public function startElement(elementName : String) : Void;
	
	/**
	* Process the attributes, which means to write out the currently
	* collected attributes to the writer. The attributes are not
	* cleared by this method
	*
	* @param writer the writer to write processed attributes to.
	* @param nAttrs the number of attributes in m_attributes
	* to be processed
	*
	* @throws java.io.IOException
	* @throws org.xml.sax.SAXException
	*/
	@:overload public function processAttributes(writer : java.io.Writer, nAttrs : Int) : Void;
	
	/**
	* Returns the specified <var>string</var> after substituting <VAR>specials</VAR>,
	* and UTF-16 surrogates for chracter references <CODE>&amp;#xnn</CODE>.
	*
	* @param   string      String to convert to XML format.
	* @param   encoding    CURRENTLY NOT IMPLEMENTED.
	*
	* @throws java.io.IOException
	*/
	@:overload public function writeAttrString(writer : java.io.Writer, string : String, encoding : String) : Void;
	
	/**
	* Receive notification of the end of an element.
	*
	*
	* @param namespaceURI The Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed.
	* @param localName The local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed.
	* @param name The element type name
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload override public function endElement(namespaceURI : String, localName : String, name : String) : Void;
	
	/**
	* Receive notification of the end of an element.
	* @param name The element type name
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*     wrapping another exception.
	*/
	@:overload override public function endElement(name : String) : Void;
	
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
	@:overload override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
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
	*
	*
	*/
	@:overload override public function startPrefixMapping(prefix : String, uri : String, shouldFlush : Bool) : Bool;
	
	/**
	* Receive notification of an XML comment anywhere in the document. This
	* callback will be used for comments inside or outside the document
	* element, including comments in the external DTD subset (if read).
	* @param ch An array holding the characters in the comment.
	* @param start The starting position in the array.
	* @param length The number of characters to use from the array.
	* @throws org.xml.sax.SAXException The application may raise an exception.
	*/
	@:overload override public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Report the end of a CDATA section.
	* @throws org.xml.sax.SAXException The application may raise an exception.
	*
	*  @see  #startCDATA
	*/
	@:overload override public function endCDATA() : Void;
	
	/**
	* Report the end of DTD declarations.
	* @throws org.xml.sax.SAXException The application may raise an exception.
	* @see #startDTD
	*/
	@:overload override public function endDTD() : Void;
	
	/**
	* End the scope of a prefix-URI Namespace mapping.
	* @see org.xml.sax.ContentHandler#endPrefixMapping
	*
	* @param prefix The prefix that was being mapping.
	* @throws org.xml.sax.SAXException The client may throw
	*            an exception during processing.
	*/
	@:overload override public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Receive notification of ignorable whitespace in element content.
	*
	* Not sure how to get this invoked quite yet.
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
	* Receive notification of a skipped entity.
	* @see org.xml.sax.ContentHandler#skippedEntity
	*
	* @param name The name of the skipped entity.  If it is a
	*       parameter                   entity, the name will begin with '%',
	* and if it is the external DTD subset, it will be the string
	* "[dtd]".
	* @throws org.xml.sax.SAXException Any SAX exception, possibly wrapping
	* another exception.
	*/
	@:overload override public function skippedEntity(name : String) : Void;
	
	/**
	* Report the start of a CDATA section.
	*
	* @throws org.xml.sax.SAXException The application may raise an exception.
	* @see #endCDATA
	*/
	@:overload override public function startCDATA() : Void;
	
	/**
	* Report the beginning of an entity.
	*
	* The start and end of the document entity are not reported.
	* The start and end of the external DTD subset are reported
	* using the pseudo-name "[dtd]".  All other events must be
	* properly nested within start/end entity events.
	*
	* @param name The name of the entity.  If it is a parameter
	*        entity, the name will begin with '%'.
	* @throws org.xml.sax.SAXException The application may raise an exception.
	* @see #endEntity
	* @see org.xml.sax.ext.DeclHandler#internalEntityDecl
	* @see org.xml.sax.ext.DeclHandler#externalEntityDecl
	*/
	@:overload override public function startEntity(name : String) : Void;
	
	/**
	* For the enclosing elements starting tag write out
	* out any attributes followed by ">"
	*
	* @throws org.xml.sax.SAXException
	*/
	@:overload private function closeStartTag() : Void;
	
	/**
	* Report the start of DTD declarations, if any.
	*
	* Any declarations are assumed to be in the internal subset unless
	* otherwise indicated.
	*
	* @param name The document type name.
	* @param publicId The declared public identifier for the
	*        external DTD subset, or null if none was declared.
	* @param systemId The declared system identifier for the
	*        external DTD subset, or null if none was declared.
	* @throws org.xml.sax.SAXException The application may raise an
	*            exception.
	* @see #endDTD
	* @see #startEntity
	*/
	@:overload override public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Returns the m_indentAmount.
	* @return int
	*/
	@:overload override public function getIndentAmount() : Int;
	
	/**
	* Sets the m_indentAmount.
	*
	* @param m_indentAmount The m_indentAmount to set
	*/
	@:overload override public function setIndentAmount(m_indentAmount : Int) : Void;
	
	/**
	* Tell if, based on space preservation constraints and the doIndent property,
	* if an indent should occur.
	*
	* @return True if an indent should occur.
	*/
	@:overload private function shouldIndent() : Bool;
	
	/**
	* Remembers the cdata sections specified in the cdata-section-elements.
	* The "official way to set URI and localName pairs.
	* This method should be used by both Xalan and XSLTC.
	*
	* @param URI_and_localNames a vector of pairs of Strings (URI/local)
	*/
	@:overload override public function setCdataSectionElements(URI_and_localNames : java.util.Vector<Dynamic>) : Void;
	
	/**
	* Makes sure that the namespace URI for the given qualified attribute name
	* is declared.
	* @param ns the namespace URI
	* @param rawName the qualified name
	* @return returns null if no action is taken, otherwise it returns the
	* prefix used in declaring the namespace.
	* @throws SAXException
	*/
	@:overload private function ensureAttributesNamespaceIsDeclared(ns : String, localName : String, rawName : String) : String;
	
	/**
	* This method flushes any pending events, which can be startDocument()
	* closing the opening tag of an element, or closing an open CDATA section.
	*/
	@:overload override public function flushPending() : Void;
	
	@:overload override public function setContentHandler(ch : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Adds the given attribute to the set of attributes, even if there is
	* no currently open element. This is useful if a SAX startPrefixMapping()
	* should need to add an attribute before the element name is seen.
	*
	* This method is a copy of its super classes method, except that some
	* tracing of events is done.  This is so the tracing is only done for
	* stream serializers, not for SAX ones.
	*
	* @param uri the URI of the attribute
	* @param localName the local name of the attribute
	* @param rawName   the qualified name of the attribute
	* @param type the type of the attribute (probably CDATA)
	* @param value the value of the attribute
	* @param xslAttribute true if this attribute is coming from an xsl:attribute element.
	* @return true if the attribute value was added,
	* false if the attribute already existed and the value was
	* replaced with the new value.
	*/
	@:overload override public function addAttributeAlways(uri : String, localName : String, rawName : String, type : String, value : String, xslAttribute : Bool) : Bool;
	
	/**
	* To fire off the pseudo characters of attributes, as they currently
	* exist. This method should be called everytime an attribute is added,
	* or when an attribute value is changed, or an element is created.
	*/
	@:overload private function firePseudoAttributes() : Void;
	
	/**
	* @see SerializationHandler#setTransformer(Transformer)
	*/
	@:overload override public function setTransformer(transformer : javax.xml.transform.Transformer) : Void;
	
	/**
	* Try's to reset the super class and reset this class for
	* re-use, so that you don't need to create a new serializer
	* (mostly for performance reasons).
	*
	* @return true if the class was successfuly reset.
	*/
	@:overload override public function reset() : Bool;
	
	/**
	* Sets the character encoding coming from the xsl:output encoding stylesheet attribute.
	* @param encoding the character encoding
	*/
	@:overload override public function setEncoding(encoding : String) : Void;
	
	/**
	* If this method is called, the serializer is used as a
	* DTDHandler, which changes behavior how the serializer
	* handles document entities.
	* @see org.xml.sax.DTDHandler#notationDecl(java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload override public function notationDecl(name : String, pubID : String, sysID : String) : Void;
	
	/**
	* If this method is called, the serializer is used as a
	* DTDHandler, which changes behavior how the serializer
	* handles document entities.
	* @see org.xml.sax.DTDHandler#unparsedEntityDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String)
	*/
	@:overload override public function unparsedEntityDecl(name : String, pubID : String, sysID : String, notationName : String) : Void;
	
	/**
	* If set to false the serializer does not expand DTD entities,
	* but leaves them as is, the default value is true;
	*/
	@:overload override public function setDTDEntityExpansion(expand : Bool) : Void;
	
	
}
/**
* This inner class is used only to collect attribute values
* written by the method writeAttrString() into a string buffer.
* In this manner trace events, and the real writing of attributes will use
* the same code.
*/
@:native('com$sun$org$apache$xml$internal$serializer$ToStream$WritertoStringBuffer') @:internal extern class ToStream_WritertoStringBuffer extends java.io.Writer
{
	@:overload override public function write(arg0 : java.NativeArray<java.StdTypes.Char16>, arg1 : Int, arg2 : Int) : Void;
	
	/**
	* @see java.io.Writer#flush()
	*/
	@:overload override public function flush() : Void;
	
	/**
	* @see java.io.Writer#close()
	*/
	@:overload override public function close() : Void;
	
	@:overload override public function write(i : Int) : Void;
	
	@:overload override public function write(s : String) : Void;
	
	
}
/**
* Simple stack for boolean values.
*
* This class is a copy of the one in com.sun.org.apache.xml.internal.utils.
* It exists to cut the serializers dependancy on that package.
* A minor changes from that package are:
* doesn't implement Clonable
*
* @xsl.usage internal
*/
@:native('com$sun$org$apache$xml$internal$serializer$ToStream$BoolStack') @:internal extern class ToStream_BoolStack
{
	/**
	* Default constructor.  Note that the default
	* block size is very small, for small lists.
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a IntVector, using the given block size.
	*
	* @param size array size to allocate
	*/
	@:overload public function new(size : Int) : Void;
	
	/**
	* Get the length of the list.
	*
	* @return Current length of the list
	*/
	@:overload @:final public function size() : Int;
	
	/**
	* Clears the stack.
	*
	*/
	@:overload @:final public function clear() : Void;
	
	/**
	* Pushes an item onto the top of this stack.
	*
	*
	* @param val the boolean to be pushed onto this stack.
	* @return  the <code>item</code> argument.
	*/
	@:overload @:final public function push(val : Bool) : Bool;
	
	/**
	* Removes the object at the top of this stack and returns that
	* object as the value of this function.
	*
	* @return     The object at the top of this stack.
	* @throws  EmptyStackException  if this stack is empty.
	*/
	@:overload @:final public function pop() : Bool;
	
	/**
	* Removes the object at the top of this stack and returns the
	* next object at the top as the value of this function.
	*
	*
	* @return Next object to the top or false if none there
	*/
	@:overload @:final public function popAndTop() : Bool;
	
	/**
	* Set the item at the top of this stack
	*
	*
	* @param b Object to set at the top of this stack
	*/
	@:overload @:final public function setTop(b : Bool) : Void;
	
	/**
	* Looks at the object at the top of this stack without removing it
	* from the stack.
	*
	* @return     the object at the top of this stack.
	* @throws  EmptyStackException  if this stack is empty.
	*/
	@:overload @:final public function peek() : Bool;
	
	/**
	* Looks at the object at the top of this stack without removing it
	* from the stack.  If the stack is empty, it returns false.
	*
	* @return     the object at the top of this stack.
	*/
	@:overload @:final public function peekOrFalse() : Bool;
	
	/**
	* Looks at the object at the top of this stack without removing it
	* from the stack.  If the stack is empty, it returns true.
	*
	* @return     the object at the top of this stack.
	*/
	@:overload @:final public function peekOrTrue() : Bool;
	
	/**
	* Tests if this stack is empty.
	*
	* @return  <code>true</code> if this stack is empty;
	*          <code>false</code> otherwise.
	*/
	@:overload public function isEmpty() : Bool;
	
	
}
