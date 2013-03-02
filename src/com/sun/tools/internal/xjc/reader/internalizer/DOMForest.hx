package com.sun.tools.internal.xjc.reader.internalizer;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class DOMForest
{
	/** Stores location information for all the trees in this forest. */
	public var locatorTable(default, null) : com.sun.tools.internal.xjc.reader.internalizer.LocatorTable;
	
	/** Stores all the outer-most &lt;jaxb:bindings> customizations. */
	public var outerMostBindings(default, null) : java.util.Set<org.w3c.dom.Element>;
	
	/** Schema language dependent part of the processing. */
	private var logic(default, null) : com.sun.tools.internal.xjc.reader.internalizer.InternalizationLogic;
	
	@:overload public function new(parserFactory : javax.xml.parsers.SAXParserFactory, documentBuilder : javax.xml.parsers.DocumentBuilder, logic : com.sun.tools.internal.xjc.reader.internalizer.InternalizationLogic) : Void;
	
	@:overload public function new(logic : com.sun.tools.internal.xjc.reader.internalizer.InternalizationLogic) : Void;
	
	/**
	* Gets the DOM tree associated with the specified system ID,
	* or null if none is found.
	*/
	@:overload public function get(systemId : String) : org.w3c.dom.Document;
	
	/**
	* Returns a read-only set of root document system IDs.
	*/
	@:overload public function getRootDocuments() : java.util.Set<String>;
	
	/**
	* Picks one document at random and returns it.
	*/
	@:overload public function getOneDocument() : org.w3c.dom.Document;
	
	/**
	* Checks the correctness of the XML Schema documents and return true
	* if it's OK.
	*
	* <p>
	* This method performs a weaker version of the tests where error messages
	* are provided without line number information. So whenever possible
	* use {@link SchemaConstraintChecker}.
	*
	* @see SchemaConstraintChecker
	*/
	@:overload public function checkSchemaCorrectness(errorHandler : com.sun.tools.internal.xjc.ErrorReceiver) : Bool;
	
	/**
	* Gets the system ID from which the given DOM is parsed.
	* <p>
	* Poor-man's base URI.
	*/
	@:overload public function getSystemId(dom : org.w3c.dom.Document) : String;
	
	@:overload public function parse(source : org.xml.sax.InputSource, root : Bool) : org.w3c.dom.Document;
	
	/**
	* Parses an XML at the given location (
	* and XMLs referenced by it) into DOM trees
	* and stores them to this forest.
	*
	* @return the parsed DOM document object.
	*/
	@:overload public function parse(systemId : String, root : Bool) : org.w3c.dom.Document;
	
	/**
	* Returns a {@link ContentHandler} to feed SAX events into.
	*
	* <p>
	* The client of this class can feed SAX events into the handler
	* to parse a document into this DOM forest.
	*/
	@:overload public function getParserHandler(systemId : String, root : Bool) : com.sun.tools.internal.xjc.reader.internalizer.DOMForest.DOMForest_Handler;
	
	/**
	* Parses the given document and add it to the DOM forest.
	*
	* @return
	*      null if there was a parse error. otherwise non-null.
	*/
	@:overload public function parse(systemId : String, inputSource : org.xml.sax.InputSource, root : Bool) : org.w3c.dom.Document;
	
	@:overload public function parse(systemId : String, parser : javax.xml.stream.XMLStreamReader, root : Bool) : org.w3c.dom.Document;
	
	/**
	* Performs internalization.
	*
	* This method should be called only once, only after all the
	* schemas are parsed.
	*
	* @return
	*      the returned bindings need to be applied after schema
	*      components are built.
	*/
	@:overload public function transform(enableSCD : Bool) : com.sun.tools.internal.xjc.reader.internalizer.SCDBasedBindingSet;
	
	/**
	* Performs the schema correctness check by using JAXP 1.3.
	*
	* <p>
	* This is "weak", because {@link SchemaFactory#newSchema(Source[])}
	* doesn't handle inclusions very correctly (it ends up parsing it
	* from its original source, not in this tree), and because
	* it doesn't handle two documents for the same namespace very
	* well.
	*
	* <p>
	* We should eventually fix JAXP (and Xerces), but meanwhile
	* this weaker and potentially wrong correctness check is still
	* better than nothing when used inside JAX-WS (JAXB CLI and Ant
	* does a better job of checking this.)
	*
	* <p>
	* To receive errors, use {@link SchemaFactory#setErrorHandler(ErrorHandler)}.
	*/
	@:overload public function weakSchemaCorrectnessCheck(sf : javax.xml.validation.SchemaFactory) : Void;
	
	/**
	* Creates a {@link SAXSource} that, when parsed, reads from this {@link DOMForest}
	* (instead of parsing the original source identified by the system ID.)
	*/
	@:overload public function createSAXSource(systemId : String) : javax.xml.transform.sax.SAXSource;
	
	/**
	* Creates {@link XMLParser} for XSOM which reads documents from
	* this DOMForest rather than doing a fresh parse.
	*
	* The net effect is that XSOM will read transformed XML Schemas
	* instead of the original documents.
	*/
	@:overload public function createParser() : com.sun.xml.internal.xsom.parser.XMLParser;
	
	@:overload public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	@:overload public function setEntityResolver(entityResolver : org.xml.sax.EntityResolver) : Void;
	
	@:overload public function getErrorHandler() : com.sun.tools.internal.xjc.ErrorReceiver;
	
	@:overload public function setErrorHandler(errorHandler : com.sun.tools.internal.xjc.ErrorReceiver) : Void;
	
	/**
	* Gets all the parsed documents.
	*/
	@:overload public function listDocuments() : java.NativeArray<org.w3c.dom.Document>;
	
	/**
	* Gets all the system IDs of the documents.
	*/
	@:overload public function listSystemIDs() : java.NativeArray<String>;
	
	/**
	* Dumps the contents of the forest to the specified stream.
	*
	* This is a debug method. As such, error handling is sloppy.
	*/
	@:overload public function dump(out : java.io.OutputStream) : Void;
	
	
}
@:native('com$sun$tools$internal$xjc$reader$internalizer$DOMForest$Handler') extern interface DOMForest_Handler extends org.xml.sax.ContentHandler
{
	/**
	* Gets the DOM that was built.
	*/
	@:overload @:public public function getDocument() : org.w3c.dom.Document;
	
	
}
@:native('com$sun$tools$internal$xjc$reader$internalizer$DOMForest$HandlerImpl') @:internal extern class DOMForest_HandlerImpl extends org.xml.sax.helpers.XMLFilterImpl implements com.sun.tools.internal.xjc.reader.internalizer.DOMForest.DOMForest_Handler
{
	/**
	* Receive notification of the beginning of a document.
	*
	* <p>The SAX parser will invoke this method only once, before any
	* other event callbacks (except for {@link #setDocumentLocator
	* setDocumentLocator}).</p>
	*
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see #endDocument
	*/
	@:overload @:public override public function startDocument() : Void;
	
	/**
	* Begin the scope of a prefix-URI Namespace mapping.
	*
	* <p>The information from this event is not necessary for
	* normal Namespace processing: the SAX XML reader will
	* automatically replace prefixes for element and attribute
	* names when the <code>http://xml.org/sax/features/namespaces</code>
	* feature is <var>true</var> (the default).</p>
	*
	* <p>There are cases, however, when applications need to
	* use prefixes in character data or in attribute values,
	* where they cannot safely be expanded automatically; the
	* start/endPrefixMapping event supplies the information
	* to the application to expand prefixes in those contexts
	* itself, if necessary.</p>
	*
	* <p>Note that start/endPrefixMapping events are not
	* guaranteed to be properly nested relative to each other:
	* all startPrefixMapping events will occur immediately before the
	* corresponding {@link #startElement startElement} event,
	* and all {@link #endPrefixMapping endPrefixMapping}
	* events will occur immediately after the corresponding
	* {@link #endElement endElement} event,
	* but their order is not otherwise
	* guaranteed.</p>
	*
	* <p>There should never be start/endPrefixMapping events for the
	* "xml" prefix, since it is predeclared and immutable.</p>
	*
	* @param prefix the Namespace prefix being declared.
	*  An empty string is used for the default element namespace,
	*  which has no prefix.
	* @param uri the Namespace URI the prefix is mapped to
	* @throws org.xml.sax.SAXException the client may throw
	*            an exception during processing
	* @see #endPrefixMapping
	* @see #startElement
	*/
	@:overload @:public override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* Receive notification of a skipped entity.
	* This is not called for entity references within markup constructs
	* such as element start tags or markup declarations.  (The XML
	* recommendation requires reporting skipped external entities.
	* SAX also reports internal entity expansion/non-expansion, except
	* within markup constructs.)
	*
	* <p>The Parser will invoke this method each time the entity is
	* skipped.  Non-validating processors may skip entities if they
	* have not seen the declarations (because, for example, the
	* entity was declared in an external DTD subset).  All processors
	* may skip external entities, depending on the values of the
	* <code>http://xml.org/sax/features/external-general-entities</code>
	* and the
	* <code>http://xml.org/sax/features/external-parameter-entities</code>
	* properties.</p>
	*
	* @param name the name of the skipped entity.  If it is a
	*        parameter entity, the name will begin with '%', and if
	*        it is the external DTD subset, it will be the string
	*        "[dtd]"
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload @:public override public function skippedEntity(name : String) : Void;
	
	/**
	* Receive an object for locating the origin of SAX document events.
	*
	* <p>SAX parsers are strongly encouraged (though not absolutely
	* required) to supply a locator: if it does so, it must supply
	* the locator to the application by invoking this method before
	* invoking any of the other methods in the ContentHandler
	* interface.</p>
	*
	* <p>The locator allows the application to determine the end
	* position of any document-related event, even if the parser is
	* not reporting an error.  Typically, the application will
	* use this information for reporting its own errors (such as
	* character content that does not match an application's
	* business rules).  The information returned by the locator
	* is probably not sufficient for use with a search engine.</p>
	*
	* <p>Note that the locator will return correct information only
	* during the invocation SAX event callbacks after
	* {@link #startDocument startDocument} returns and before
	* {@link #endDocument endDocument} is called.  The
	* application should not attempt to use it at any other time.</p>
	*
	* @param locator an object that can return the location of
	*                any SAX document event
	* @see org.xml.sax.Locator
	*/
	@:overload @:public override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
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
	@:overload @:public override public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Receive notification of character data.
	*
	* <p>The Parser will call this method to report each chunk of
	* character data.  SAX parsers may return all contiguous character
	* data in a single chunk, or they may split it into several
	* chunks; however, all of the characters in any single event
	* must come from the same external entity so that the Locator
	* provides useful information.</p>
	*
	* <p>The application must not attempt to read from the array
	* outside of the specified range.</p>
	*
	* <p>Individual characters may consist of more than one Java
	* <code>char</code> value.  There are two important cases where this
	* happens, because characters can't be represented in just sixteen bits.
	* In one case, characters are represented in a <em>Surrogate Pair</em>,
	* using two special Unicode values. Such characters are in the so-called
	* "Astral Planes", with a code point above U+FFFF.  A second case involves
	* composite characters, such as a base character combining with one or
	* more accent characters. </p>
	*
	* <p> Your code should not assume that algorithms using
	* <code>char</code>-at-a-time idioms will be working in character
	* units; in some cases they will split characters.  This is relevant
	* wherever XML permits arbitrary characters, such as attribute values,
	* processing instruction data, and comments as well as in data reported
	* from this method.  It's also generally relevant whenever Java code
	* manipulates internationalized text; the issue isn't unique to XML.</p>
	*
	* <p>Note that some parsers will report whitespace in element
	* content using the {@link #ignorableWhitespace ignorableWhitespace}
	* method rather than this one (validating parsers <em>must</em>
	* do so).</p>
	*
	* @param ch the characters from the XML document
	* @param start the start position in the array
	* @param length the number of characters to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see #ignorableWhitespace
	* @see org.xml.sax.Locator
	*/
	@:overload @:public override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of a processing instruction.
	*
	* <p>The Parser will invoke this method once for each processing
	* instruction found: note that processing instructions may occur
	* before or after the main document element.</p>
	*
	* <p>A SAX parser must never report an XML declaration (XML 1.0,
	* section 2.8) or a text declaration (XML 1.0, section 4.3.1)
	* using this method.</p>
	*
	* <p>Like {@link #characters characters()}, processing instruction
	* data may have characters that need more than one <code>char</code>
	* value. </p>
	*
	* @param target the processing instruction target
	* @param data the processing instruction data, or null if
	*        none was supplied.  The data does not include any
	*        whitespace separating it from the target
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	*/
	@:overload @:public override public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* End the scope of a prefix-URI mapping.
	*
	* <p>See {@link #startPrefixMapping startPrefixMapping} for
	* details.  These events will always occur immediately after the
	* corresponding {@link #endElement endElement} event, but the order of
	* {@link #endPrefixMapping endPrefixMapping} events is not otherwise
	* guaranteed.</p>
	*
	* @param prefix the prefix that was being mapped.
	*  This is the empty string when a default mapping scope ends.
	* @throws org.xml.sax.SAXException the client may throw
	*            an exception during processing
	* @see #startPrefixMapping
	* @see #endElement
	*/
	@:overload @:public override public function endPrefixMapping(prefix : String) : Void;
	
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
	@:overload @:public override public function endElement(uri : String, localName : String, qName : String) : Void;
	
	/**
	* Receive notification of ignorable whitespace in element content.
	*
	* <p>Validating Parsers must use this method to report each chunk
	* of whitespace in element content (see the W3C XML 1.0
	* recommendation, section 2.10): non-validating parsers may also
	* use this method if they are capable of parsing and using
	* content models.</p>
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
	* @param ch the characters from the XML document
	* @param start the start position in the array
	* @param length the number of characters to read from the array
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see #characters
	*/
	@:overload @:public override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Receive notification of the end of a document.
	*
	* <p><strong>There is an apparent contradiction between the
	* documentation for this method and the documentation for {@link
	* org.xml.sax.ErrorHandler#fatalError}.  Until this ambiguity is
	* resolved in a future major release, clients should make no
	* assumptions about whether endDocument() will or will not be
	* invoked when the parser has reported a fatalError() or thrown
	* an exception.</strong></p>
	*
	* <p>The SAX parser will invoke this method only once, and it will
	* be the last method invoked during the parse.  The parser shall
	* not invoke this method until it has either abandoned parsing
	* (because of an unrecoverable error) or reached the end of
	* input.</p>
	*
	* @throws org.xml.sax.SAXException any SAX exception, possibly
	*            wrapping another exception
	* @see #startDocument
	*/
	@:overload @:public override public function endDocument() : Void;
	
	/**
	* Gets the DOM that was built.
	*/
	@:overload public function getDocument() : org.w3c.dom.Document;
	
	
}
