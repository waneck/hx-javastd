package javax.xml.validation;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class ValidatorHandler implements org.xml.sax.ContentHandler
{
	/**
	* <p>Constructor for derived classes.</p>
	*
	* <p>The constructor does nothing.</p>
	*
	* <p>Derived classes must create {@link ValidatorHandler} objects that have
	* <code>null</code> {@link ErrorHandler} and
	* <code>null</code> {@link LSResourceResolver}.</p>
	*/
	@:overload private function new() : Void;
	
	/**
	* Sets the {@link ContentHandler} which receives
	* the augmented validation result.
	*
	* <p>
	* When a {@link ContentHandler} is specified, a
	* {@link ValidatorHandler} will work as a filter
	* and basically copy the incoming events to the
	* specified {@link ContentHandler}.
	*
	* <p>
	* In doing so, a {@link ValidatorHandler} may modify
	* the events, for example by adding defaulted attributes.
	*
	* <p>
	* A {@link ValidatorHandler} may buffer events to certain
	* extent, but to allow {@link ValidatorHandler} to be used
	* by a parser, the following requirement has to be met.
	*
	* <ol>
	*  <li>When
	*      {@link ContentHandler#startElement(String, String, String, Attributes)},
	*      {@link ContentHandler#endElement(String, String, String)},
	*      {@link ContentHandler#startDocument()}, or
	*      {@link ContentHandler#endDocument()}
	*      are invoked on a {@link ValidatorHandler},
	*      the same method on the user-specified {@link ContentHandler}
	*      must be invoked for the same event before the callback
	*      returns.
	*  <li>{@link ValidatorHandler} may not introduce new elements that
	*      were not present in the input.
	*
	*  <li>{@link ValidatorHandler} may not remove attributes that were
	*      present in the input.
	* </ol>
	*
	* <p>
	* When a callback method on the specified {@link ContentHandler}
	* throws an exception, the same exception object must be thrown
	* from the {@link ValidatorHandler}. The {@link ErrorHandler}
	* should not be notified of such an exception.
	*
	* <p>
	* This method can be called even during a middle of a validation.
	*
	* @param receiver
	*      A {@link ContentHandler} or a null value.
	*/
	@:overload @:abstract public function setContentHandler(receiver : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Gets the {@link ContentHandler} which receives the
	* augmented validation result.
	*
	* @return
	*      This method returns the object that was last set through
	*      the {@link #getContentHandler()} method, or null
	*      if that method has never been called since this {@link ValidatorHandler}
	*      has created.
	*
	* @see #setContentHandler(ContentHandler)
	*/
	@:overload @:abstract public function getContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Sets the {@link ErrorHandler} to receive errors encountered
	* during the validation.
	*
	* <p>
	* Error handler can be used to customize the error handling process
	* during a validation. When an {@link ErrorHandler} is set,
	* errors found during the validation will be first sent
	* to the {@link ErrorHandler}.
	*
	* <p>
	* The error handler can abort further validation immediately
	* by throwing {@link org.xml.sax.SAXException} from the handler. Or for example
	* it can print an error to the screen and try to continue the
	* validation by returning normally from the {@link ErrorHandler}
	*
	* <p>
	* If any {@link Throwable} is thrown from an {@link ErrorHandler},
	* the same {@link Throwable} object will be thrown toward the
	* root of the call stack.
	*
	* <p>
	* {@link ValidatorHandler} is not allowed to
	* throw {@link org.xml.sax.SAXException} without first reporting it to
	* {@link ErrorHandler}.
	*
	* <p>
	* When the {@link ErrorHandler} is null, the implementation will
	* behave as if the following {@link ErrorHandler} is set:
	* <pre>
	* class DraconianErrorHandler implements {@link ErrorHandler} {
	*     public void fatalError( {@link org.xml.sax.SAXParseException} e ) throws {@link org.xml.sax.SAXException} {
	*         throw e;
	*     }
	*     public void error( {@link org.xml.sax.SAXParseException} e ) throws {@link org.xml.sax.SAXException} {
	*         throw e;
	*     }
	*     public void warning( {@link org.xml.sax.SAXParseException} e ) throws {@link org.xml.sax.SAXException} {
	*         // noop
	*     }
	* }
	* </pre>
	*
	* <p>
	* When a new {@link ValidatorHandler} object is created, initially
	* this field is set to null.
	*
	* @param   errorHandler
	*      A new error handler to be set. This parameter can be null.
	*/
	@:overload @:abstract public function setErrorHandler(errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Gets the current {@link ErrorHandler} set to this {@link ValidatorHandler}.
	*
	* @return
	*      This method returns the object that was last set through
	*      the {@link #setErrorHandler(ErrorHandler)} method, or null
	*      if that method has never been called since this {@link ValidatorHandler}
	*      has created.
	*
	* @see #setErrorHandler(ErrorHandler)
	*/
	@:overload @:abstract public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	/**
	* Sets the {@link LSResourceResolver} to customize
	* resource resolution while in a validation episode.
	*
	* <p>
	* {@link ValidatorHandler} uses a {@link LSResourceResolver}
	* when it needs to locate external resources while a validation,
	* although exactly what constitutes "locating external resources" is
	* up to each schema language.
	*
	* <p>
	* When the {@link LSResourceResolver} is null, the implementation will
	* behave as if the following {@link LSResourceResolver} is set:
	* <pre>
	* class DumbLSResourceResolver implements {@link LSResourceResolver} {
	*     public {@link org.w3c.dom.ls.LSInput} resolveResource(
	*         String publicId, String systemId, String baseURI) {
	*
	*         return null; // always return null
	*     }
	* }
	* </pre>
	*
	* <p>
	* If a {@link LSResourceResolver} throws a {@link RuntimeException}
	*  (or instances of its derived classes),
	* then the {@link ValidatorHandler} will abort the parsing and
	* the caller of the <code>validate</code> method will receive
	* the same {@link RuntimeException}.
	*
	* <p>
	* When a new {@link ValidatorHandler} object is created, initially
	* this field is set to null.
	*
	* @param   resourceResolver
	*      A new resource resolver to be set. This parameter can be null.
	*/
	@:overload @:abstract public function setResourceResolver(resourceResolver : org.w3c.dom.ls.LSResourceResolver) : Void;
	
	/**
	* Gets the current {@link LSResourceResolver} set to this {@link ValidatorHandler}.
	*
	* @return
	*      This method returns the object that was last set through
	*      the {@link #setResourceResolver(LSResourceResolver)} method, or null
	*      if that method has never been called since this {@link ValidatorHandler}
	*      has created.
	*
	* @see #setErrorHandler(ErrorHandler)
	*/
	@:overload @:abstract public function getResourceResolver() : org.w3c.dom.ls.LSResourceResolver;
	
	/**
	* Obtains the {@link TypeInfoProvider} implementation of this
	* {@link ValidatorHandler}.
	*
	* <p>
	* The obtained {@link TypeInfoProvider} can be queried during a parse
	* to access the type information determined by the validator.
	*
	* <p>
	* Some schema languages do not define the notion of type,
	* for those languages, this method may not be supported.
	* However, to be compliant with this specification, implementations
	* for W3C XML Schema 1.0 must support this operation.
	*
	* @return
	*      null if the validator / schema language does not support
	*      the notion of {@link org.w3c.dom.TypeInfo}.
	*      Otherwise a non-null valid {@link TypeInfoProvider}.
	*/
	@:overload @:abstract public function getTypeInfoProvider() : javax.xml.validation.TypeInfoProvider;
	
	/**
	* Look up the value of a feature flag.
	*
	* <p>The feature name is any fully-qualified URI.  It is
	* possible for a {@link ValidatorHandler} to recognize a feature name but
	* temporarily be unable to return its value.
	* Some feature values may be available only in specific
	* contexts, such as before, during, or after a validation.
	*
	* <p>Implementors are free (and encouraged) to invent their own features,
	* using names built on their own URIs.</p>
	*
	* @param name The feature name, which is a non-null fully-qualified URI.
	*
	* @return The current value of the feature (true or false).
	*
	* @throws SAXNotRecognizedException If the feature
	*   value can't be assigned or retrieved.
	* @throws SAXNotSupportedException When the
	*   {@link ValidatorHandler} recognizes the feature name but
	*   cannot determine its value at this time.
	* @throws NullPointerException When <code>name</code> is <code>null</code>.
	*
	* @see #setFeature(String, boolean)
	*/
	@:overload public function getFeature(name : String) : Bool;
	
	/**
	* <p>Set a feature for this <code>ValidatorHandler</code>.</p>
	*
	* <p>Feature can be used to control the way a
	* {@link ValidatorHandler} parses schemas. The feature name is
	* any fully-qualified URI. It is possible for a
	* {@link SchemaFactory} to
	* expose a feature value but to be unable to change the current
	* value. Some feature values may be immutable or mutable only in
	* specific contexts, such as before, during, or after a
	* validation.</p>
	*
	* <p>All implementations are required to support the {@link javax.xml.XMLConstants#FEATURE_SECURE_PROCESSING} feature.
	* When the feature is:</p>
	* <ul>
	*   <li>
	*     <code>true</code>: the implementation will limit XML processing to conform to implementation limits.
	*     Examples include enity expansion limits and XML Schema constructs that would consume large amounts of resources.
	*     If XML processing is limited for security reasons, it will be reported via a call to the registered
	*    {@link ErrorHandler#fatalError(SAXParseException exception)}.
	*     See {@link #setErrorHandler(ErrorHandler errorHandler)}.
	*   </li>
	*   <li>
	*     <code>false</code>: the implementation will processing XML according to the XML specifications without
	*     regard to possible implementation limits.
	*   </li>
	* </ul>
	*
	* @param name The feature name, which is a non-null fully-qualified URI.
	* @param value The requested value of the feature (true or false).
	*
	* @throws SAXNotRecognizedException If the feature
	*   value can't be assigned or retrieved.
	* @throws SAXNotSupportedException When the
	*   {@link ValidatorHandler} recognizes the feature name but
	*   cannot set the requested value.
	* @throws NullPointerException When <code>name</code> is <code>null</code>.
	*
	* @see #getFeature(String)
	*/
	@:overload public function setFeature(name : String, value : Bool) : Void;
	
	/**
	* Set the value of a property.
	*
	* <p>The property name is any fully-qualified URI.  It is
	* possible for a {@link ValidatorHandler} to recognize a property name but
	* to be unable to change the current value.
	* Some property values may be immutable or mutable only
	* in specific contexts, such as before, during, or after
	* a validation.</p>
	*
	* <p>{@link ValidatorHandler}s are not required to recognize setting
	* any specific property names.</p>
	*
	* @param name The property name, which is a non-null fully-qualified URI.
	* @param object The requested value for the property.
	*
	* @throws SAXNotRecognizedException If the property
	*   value can't be assigned or retrieved.
	* @throws SAXNotSupportedException When the
	*   {@link ValidatorHandler} recognizes the property name but
	*   cannot set the requested value.
	* @throws NullPointerException When <code>name</code> is <code>null</code>.
	*/
	@:overload public function setProperty(name : String, object : Dynamic) : Void;
	
	/**
	* Look up the value of a property.
	*
	* <p>The property name is any fully-qualified URI.  It is
	* possible for a {@link ValidatorHandler} to recognize a property name but
	* temporarily be unable to return its value.
	* Some property values may be available only in specific
	* contexts, such as before, during, or after a validation.</p>
	*
	* <p>{@link ValidatorHandler}s are not required to recognize any specific
	* property names.</p>
	*
	* <p>Implementors are free (and encouraged) to invent their own properties,
	* using names built on their own URIs.</p>
	*
	* @param name The property name, which is a non-null fully-qualified URI.
	*
	* @return The current value of the property.
	*
	* @throws SAXNotRecognizedException If the property
	*   value can't be assigned or retrieved.
	* @throws SAXNotSupportedException When the
	*   XMLReader recognizes the property name but
	*   cannot determine its value at this time.
	* @throws NullPointerException When <code>name</code> is <code>null</code>.
	*
	* @see #setProperty(String, Object)
	*/
	@:overload public function getProperty(name : String) : Dynamic;
	
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
	@:overload override public function startDocument() : Void;
	
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
	@:overload override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
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
	@:overload override public function skippedEntity(name : String) : Void;
	
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
	@:overload override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
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
	@:overload override public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
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
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
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
	@:overload override public function processingInstruction(target : String, data : String) : Void;
	
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
	@:overload override public function endPrefixMapping(prefix : String) : Void;
	
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
	@:overload override public function endElement(uri : String, localName : String, qName : String) : Void;
	
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
	@:overload override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
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
	@:overload override public function endDocument() : Void;
	
	
}
