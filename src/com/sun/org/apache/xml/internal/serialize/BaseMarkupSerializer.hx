package com.sun.org.apache.xml.internal.serialize;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004,2005 The Apache Software Foundation.
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
//// Sep 14, 2000:
////  Fixed comments to preserve whitespaces and add a line break
////  when indenting. Reported by Gervase Markham <gerv@gerv.net>
//// Sep 14, 2000:
////  Fixed serializer to report IO exception directly, instead at
////  the end of document processing.
////  Reported by Patrick Higgins <phiggins@transzap.com>
//// Sep 13, 2000:
////   CR in character data will print as &#0D;
//// Aug 25, 2000:
////   Fixed processing instruction printing inside element content
////   to not escape content. Reported by Mikael Staldal
////   <d96-mst@d.kth.se>
//// Aug 25, 2000:
////   Added ability to omit comments.
////   Contributed by Anupam Bagchi <abagchi@jtcsv.com>
//// Aug 26, 2000:
////   Fixed bug in newline handling when preserving spaces.
////   Contributed by Mike Dusseault <mdusseault@home.com>
//// Aug 29, 2000:
////   Fixed state.unescaped not being set to false when
////   entering element state.
////   Reported by Lowell Vaughn <lvaughn@agillion.com>
extern class BaseMarkupSerializer implements org.xml.sax.ContentHandler implements org.xml.sax.DocumentHandler implements org.xml.sax.ext.LexicalHandler implements org.xml.sax.DTDHandler implements org.xml.sax.ext.DeclHandler implements com.sun.org.apache.xml.internal.serialize.DOMSerializer implements com.sun.org.apache.xml.internal.serialize.Serializer
{
	/**
	* Base class for a serializer supporting both DOM and SAX pretty
	* serializing of XML/HTML/XHTML documents. Derives classes perform
	* the method-specific serializing, this class provides the common
	* serializing mechanisms.
	* <p>
	* The serializer must be initialized with the proper writer and
	* output format before it can be used by calling {@link #setOutputCharStream}
	* or {@link #setOutputByteStream} for the writer and {@link #setOutputFormat}
	* for the output format.
	* <p>
	* The serializer can be reused any number of times, but cannot
	* be used concurrently by two threads.
	* <p>
	* If an output stream is used, the encoding is taken from the
	* output format (defaults to <tt>UTF-8</tt>). If a writer is
	* used, make sure the writer uses the same encoding (if applies)
	* as specified in the output format.
	* <p>
	* The serializer supports both DOM and SAX. DOM serializing is done
	* by calling {@link #serialize(Document)} and SAX serializing is done by firing
	* SAX events and using the serializer as a document handler.
	* This also applies to derived class.
	* <p>
	* If an I/O exception occurs while serializing, the serializer
	* will not throw an exception directly, but only throw it
	* at the end of serializing (either DOM or SAX's {@link
	* org.xml.sax.DocumentHandler#endDocument}.
	* <p>
	* For elements that are not specified as whitespace preserving,
	* the serializer will potentially break long text lines at space
	* boundaries, indent lines, and serialize elements on separate
	* lines. Line terminators will be regarded as spaces, and
	* spaces at beginning of line will be stripped.
	* <p>
	* When indenting, the serializer is capable of detecting seemingly
	* element content, and serializing these elements indented on separate
	* lines. An element is serialized indented when it is the first or
	* last child of an element, or immediate following or preceding
	* another element.
	*
	*
	* @author <a href="mailto:arkin@intalio.com">Assaf Arkin</a>
	* @author <a href="mailto:rahul.srivastava@sun.com">Rahul Srivastava</a>
	* @author Elena Litani, IBM
	* @author Sunitha Reddy, Sun Microsystems
	* @see Serializer
	* @see LSSerializer
	*/
	@:protected private var features : java.StdTypes.Int16;
	
	@:protected private var fDOMErrorHandler : org.w3c.dom.DOMErrorHandler;
	
	@:protected @:final private var fDOMError(default, null) : com.sun.org.apache.xerces.internal.dom.DOMErrorImpl;
	
	@:protected private var fDOMFilter : org.w3c.dom.ls.LSSerializerFilter;
	
	@:protected private var _encodingInfo : com.sun.org.apache.xml.internal.serialize.EncodingInfo;
	
	/**
	* If the document has been started (header serialized), this
	* flag is set to true so it's not started twice.
	*/
	@:protected private var _started : Bool;
	
	/**
	* Association between namespace URIs (keys) and prefixes (values).
	* Accumulated here prior to starting an element and placing this
	* list in the element state.
	*/
	@:protected private var _prefixes : java.util.Hashtable<Dynamic, Dynamic>;
	
	/**
	* The system identifier of the document type, if known.
	*/
	@:protected private var _docTypePublicId : String;
	
	/**
	* The system identifier of the document type, if known.
	*/
	@:protected private var _docTypeSystemId : String;
	
	/**
	* The output format associated with this serializer. This will never
	* be a null reference. If no format was passed to the constructor,
	* the default one for this document type will be used. The format
	* object is never changed by the serializer.
	*/
	@:protected private var _format : com.sun.org.apache.xml.internal.serialize.OutputFormat;
	
	/**
	* The printer used for printing text parts.
	*/
	@:protected private var _printer : com.sun.org.apache.xml.internal.serialize.Printer;
	
	/**
	* True if indenting printer.
	*/
	@:protected private var _indenting : Bool;
	
	/** Temporary buffer to store character data */
	@:protected @:final private var fStrBuffer(default, null) : java.lang.StringBuffer;
	
	/** Current node that is being processed  */
	@:protected private var fCurrentNode : org.w3c.dom.Node;
	
	/**
	* Protected constructor can only be used by derived class.
	* Must initialize the serializer before serializing any document,
	* by calling {@link #setOutputCharStream} or {@link #setOutputByteStream}
	* first
	*/
	@:overload @:protected private function new(format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	@:overload @:public public function asDocumentHandler() : org.xml.sax.DocumentHandler;
	
	@:overload @:public public function asContentHandler() : org.xml.sax.ContentHandler;
	
	@:overload @:public public function asDOMSerializer() : com.sun.org.apache.xml.internal.serialize.DOMSerializer;
	
	@:overload @:public public function setOutputByteStream(output : java.io.OutputStream) : Void;
	
	@:overload @:public public function setOutputCharStream(writer : java.io.Writer) : Void;
	
	@:overload @:public public function setOutputFormat(format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	@:overload @:public public function reset() : Bool;
	
	@:overload @:protected private function prepare() : Void;
	
	/**
	* Serializes the DOM element using the previously specified
	* writer and output format. Throws an exception only if
	* an I/O exception occured while serializing.
	*
	* @param elem The element to serialize
	* @throws IOException An I/O exception occured while
	*   serializing
	*/
	@:overload @:public public function serialize(elem : org.w3c.dom.Element) : Void;
	
	/**
	* Serializes a node using the previously specified
	* writer and output format. Throws an exception only if
	* an I/O exception occured while serializing.
	*
	* @param node Node to serialize
	* @throws IOException An I/O exception occured while serializing
	*/
	@:overload @:public public function serialize(node : org.w3c.dom.Node) : Void;
	
	/**
	* Serializes the DOM document fragmnt using the previously specified
	* writer and output format. Throws an exception only if
	* an I/O exception occured while serializing.
	*
	* @param elem The element to serialize
	* @throws IOException An I/O exception occured while
	*   serializing
	*/
	@:overload @:public public function serialize(frag : org.w3c.dom.DocumentFragment) : Void;
	
	/**
	* Serializes the DOM document using the previously specified
	* writer and output format. Throws an exception only if
	* an I/O exception occured while serializing.
	*
	* @param doc The document to serialize
	* @throws IOException An I/O exception occured while
	*   serializing
	*/
	@:overload @:public public function serialize(doc : org.w3c.dom.Document) : Void;
	
	@:overload @:public public function startDocument() : Void;
	
	@:overload @:public public function characters(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function ignorableWhitespace(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public @:final public function processingInstruction(target : String, code : String) : Void;
	
	@:overload @:public public function processingInstructionIO(target : String, code : String) : Void;
	
	@:overload @:public public function comment(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function comment(text : String) : Void;
	
	@:overload @:public public function startCDATA() : Void;
	
	@:overload @:public public function endCDATA() : Void;
	
	@:overload @:public public function startNonEscaping() : Void;
	
	@:overload @:public public function endNonEscaping() : Void;
	
	@:overload @:public public function startPreserving() : Void;
	
	@:overload @:public public function endPreserving() : Void;
	
	/**
	* Called at the end of the document to wrap it up.
	* Will flush the output stream and throw an exception
	* if any I/O error occured while serializing.
	*
	* @throws SAXException An I/O exception occured during
	*  serializing
	*/
	@:overload @:public public function endDocument() : Void;
	
	@:overload @:public public function startEntity(name : String) : Void;
	
	@:overload @:public public function endEntity(name : String) : Void;
	
	@:overload @:public public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload @:public public function skippedEntity(name : String) : Void;
	
	@:overload @:public public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload @:public public function endPrefixMapping(prefix : String) : Void;
	
	@:overload @:public @:final public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload @:public public function endDTD() : Void;
	
	@:overload @:public public function elementDecl(name : String, model : String) : Void;
	
	@:overload @:public public function attributeDecl(eName : String, aName : String, type : String, valueDefault : String, value : String) : Void;
	
	@:overload @:public public function internalEntityDecl(name : String, value : String) : Void;
	
	@:overload @:public public function externalEntityDecl(name : String, publicId : String, systemId : String) : Void;
	
	@:overload @:public public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	@:overload @:public public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Serialize the DOM node. This method is shared across XML, HTML and XHTML
	* serializers and the differences are masked out in a separate {@link
	* #serializeElement}.
	*
	* @param node The node to serialize
	* @see #serializeElement
	* @throws IOException An I/O exception occured while
	*   serializing
	*/
	@:overload @:protected private function serializeNode(node : org.w3c.dom.Node) : Void;
	
	/* Serializes XML Declaration, according to 'xml-declaration' property.
	*/
	@:overload @:protected private function serializeDocument() : Void;
	
	/* Serializes DTD, if present.
	*/
	@:overload @:protected private function serializeDTD(name : String) : Void;
	
	/**
	* Must be called by a method about to print any type of content.
	* If the element was just opened, the opening tag is closed and
	* will be matched to a closing tag. Returns the current element
	* state with <tt>empty</tt> and <tt>afterElement</tt> set to false.
	*
	* @return The current element state
	* @throws IOException An I/O exception occured while
	*   serializing
	*/
	@:overload @:protected private function content() : com.sun.org.apache.xml.internal.serialize.ElementState;
	
	/**
	* Called to print the text contents in the prevailing element format.
	* Since this method is capable of printing text as CDATA, it is used
	* for that purpose as well. White space handling is determined by the
	* current element state. In addition, the output format can dictate
	* whether the text is printed as CDATA or unescaped.
	*
	* @param text The text to print
	* @param unescaped True is should print unescaped
	* @throws IOException An I/O exception occured while
	*   serializing
	*/
	@:overload @:protected private function characters(text : String) : Void;
	
	/**
	* Returns the suitable entity reference for this character value,
	* or null if no such entity exists. Calling this method with <tt>'&amp;'</tt>
	* will return <tt>"&amp;amp;"</tt>.
	*
	* @param ch Character value
	* @return Character entity name, or null
	*/
	@:overload @:protected @:abstract private function getEntityRef(ch : Int) : String;
	
	/**
	* Called to serializee the DOM element. The element is serialized based on
	* the serializer's method (XML, HTML, XHTML).
	*
	* @param elem The element to serialize
	* @throws IOException An I/O exception occured while
	*   serializing
	*/
	@:overload @:protected @:abstract private function serializeElement(elem : org.w3c.dom.Element) : Void;
	
	/**
	* Comments and PIs cannot be serialized before the root element,
	* because the root element serializes the document type, which
	* generally comes first. Instead such PIs and comments are
	* accumulated inside a vector and serialized by calling this
	* method. Will be called when the root element is serialized
	* and when the document finished serializing.
	*
	* @throws IOException An I/O exception occured while
	*   serializing
	*/
	@:overload @:protected private function serializePreRoot() : Void;
	
	@:overload @:protected private function printCDATAText(text : String) : Void;
	
	@:overload @:protected private function surrogates(high : Int, low : Int) : Void;
	
	/**
	* Called to print additional text with whitespace handling.
	* If spaces are preserved, the text is printed as if by calling
	* {@link #printText(String,boolean,boolean)} with a call to {@link Printer#breakLine}
	* for each new line. If spaces are not preserved, the text is
	* broken at space boundaries if longer than the line width;
	* Multiple spaces are printed as such, but spaces at beginning
	* of line are removed.
	*
	* @param text The text to print
	* @param preserveSpace Space preserving flag
	* @param unescaped Print unescaped
	*/
	@:overload @:protected private function printText(chars : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int, preserveSpace : Bool, unescaped : Bool) : Void;
	
	@:overload @:protected private function printText(text : String, preserveSpace : Bool, unescaped : Bool) : Void;
	
	/**
	* Print a document type public or system identifier URL.
	* Encapsulates the URL in double quotes, escapes non-printing
	* characters and print it equivalent to {@link #printText}.
	*
	* @param url The document type url to print
	*/
	@:overload @:protected private function printDoctypeURL(url : String) : Void;
	
	@:overload @:protected private function printEscaped(ch : Int) : Void;
	
	/**
	* Escapes a string so it may be printed as text content or attribute
	* value. Non printable characters are escaped using character references.
	* Where the format specifies a deault entity reference, that reference
	* is used (e.g. <tt>&amp;lt;</tt>).
	*
	* @param source The string to escape
	*/
	@:overload @:protected private function printEscaped(source : String) : Void;
	
	/**
	* Return the state of the current element.
	*
	* @return Current element state
	*/
	@:overload @:protected private function getElementState() : com.sun.org.apache.xml.internal.serialize.ElementState;
	
	/**
	* Enter a new element state for the specified element.
	* Tag name and space preserving is specified, element
	* state is initially empty.
	*
	* @return Current element state, or null
	*/
	@:overload @:protected private function enterElementState(namespaceURI : String, localName : String, rawName : String, preserveSpace : Bool) : com.sun.org.apache.xml.internal.serialize.ElementState;
	
	/**
	* Leave the current element state and return to the
	* state of the parent element. If this was the root
	* element, return to the state of the document.
	*
	* @return Previous element state
	*/
	@:overload @:protected private function leaveElementState() : com.sun.org.apache.xml.internal.serialize.ElementState;
	
	/**
	* Returns true if in the state of the document.
	* Returns true before entering any element and after
	* leaving the root element.
	*
	* @return True if in the state of the document
	*/
	@:overload @:protected private function isDocumentState() : Bool;
	
	/**
	* Returns the namespace prefix for the specified URI.
	* If the URI has been mapped to a prefix, returns the
	* prefix, otherwise returns null.
	*
	* @param namespaceURI The namespace URI
	* @return The namespace prefix if known, or null
	*/
	@:overload @:protected private function getPrefix(namespaceURI : String) : String;
	
	/**
	* The method modifies global DOM error object
	*
	* @param message
	* @param severity
	* @param type
	* @return a DOMError
	*/
	@:overload @:protected private function modifyDOMError(message : String, severity : java.StdTypes.Int16, type : String, node : org.w3c.dom.Node) : org.w3c.dom.DOMError;
	
	@:overload @:protected private function fatalError(message : String) : Void;
	
	/**
	* DOM level 3:
	* Check a node to determine if it contains unbound namespace prefixes.
	*
	* @param node The node to check for unbound namespace prefices
	*/
	@:overload @:protected private function checkUnboundNamespacePrefixedNode(node : org.w3c.dom.Node) : Void;
	
	/**
	* Receive notification of the beginning of an element.
	*
	* <p>The Parser will invoke this method at the beginning of every
	* element in the XML document; there will be a corresponding
	* {@link #endElement endElement} event for every startElement event
	* (even when the element is empty). All of the element's content will be
	* reported, in order, before the corresponding endElement
	* event.</p>
	*
	* <p>This event allows up to three name components for each
	* element:</p>
	*
	* <ol>
	* <li>the Namespace URI;</li>
	* <li>the local name; and</li>
	* <li>the qualified (prefixed) name.</li>
	* </ol>
	*
	* <p>Any or all of these may be provided, depending on the
	* values of the <var>http://xml.org/sax/features/namespaces</var>
	* and the <var>http://xml.org/sax/features/namespace-prefixes</var>
	* properties:</p>
	*
	* <ul>
	* <li>the Namespace URI and local name are required when
	* the namespaces property is <var>true</var> (the default), and are
	* optional when the namespaces property is <var>false</var> (if one is
	* specified, both must be);</li>
	* <li>the qualified name is required when the namespace-prefixes property
	* is <var>true</var>, and is optional when the namespace-prefixes property
	* is <var>false</var> (the default).</li>
	* </ul>
	*
	* <p>Note that the attribute list provided will contain only
	* attributes with explicit values (specified or defaulted):
	* #IMPLIED attributes will be omitted.  The attribute list
	* will contain attributes used for Namespace declarations
	* (xmlns* attributes) only if the
	* <code>http://xml.org/sax/features/namespace-prefixes</code>
	* property is true (it is false by default, and support for a
	* true value is optional).</p>
	*
	* <p>Like {@link #characters characters()}, attribute values may have
	* characters that need more than one <code>char</code> value.  </p>
	*
	* @param uri the Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed
	* @param localName the local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed
	* @param qName the qualified name (with prefix), or the
	*        empty string if qualified names are not available
	* @param atts the attributes attached to the element.  If
	*        there are no attributes, it shall be an empty
	*        Attributes object.  The value of this object after
	*        startElement returns is undefined
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see #endElement
	* @see org.xml.sax.Attributes
	* @see org.xml.sax.helpers.AttributesImpl
	*/
	@:overload @:public public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
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
	* @param name The element type name
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	*/
	@:overload @:public @:abstract public function endElement(name : String) : Void;
	
	/**
	* Receive notification of the end of an element.
	*
	* <p>The SAX parser will invoke this method at the end of every
	* element in the XML document; there will be a corresponding
	* {@link #startElement startElement} event for every endElement
	* event (even when the element is empty).</p>
	*
	* <p>For information on the names, see startElement.</p>
	*
	* @param uri the Namespace URI, or the empty string if the
	*        element has no Namespace URI or if Namespace
	*        processing is not being performed
	* @param localName the local name (without prefix), or the
	*        empty string if Namespace processing is not being
	*        performed
	* @param qName the qualified XML name (with prefix), or the
	*        empty string if qualified names are not available
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload @:public public function endElement(uri : String, localName : String, qName : String) : Void;
	
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
	* @param name The element type name.
	* @param atts The attributes attached to the element, if any.
	* @exception org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see #endElement
	* @see org.xml.sax.AttributeList
	*/
	@:overload @:public @:abstract public function startElement(name : String, atts : org.xml.sax.AttributeList) : Void;
	
	
}
