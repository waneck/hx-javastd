package com.sun.org.apache.xerces.internal.impl;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLStreamReaderImpl implements javax.xml.stream.XMLStreamReader
{
	/** Property identifier: entity manager. */
	@:protected @:static @:final private static var ENTITY_MANAGER(default, null) : String;
	
	/** Property identifier: Error Reporter. */
	@:protected @:static @:final private static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: Symbol table. */
	@:protected @:static @:final private static var SYMBOL_TABLE(default, null) : String;
	
	@:protected @:static @:final private static var READER_IN_DEFINED_STATE(default, null) : String;
	
	/** Document scanner. */
	@:protected private var fScanner : com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl;
	
	@:protected private var fNamespaceContextWrapper : com.sun.org.apache.xerces.internal.util.NamespaceContextWrapper;
	
	@:protected private var fEntityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
	
	@:protected private var fErrorReporter : com.sun.xml.internal.stream.StaxErrorReporter;
	
	/** Entity scanner, this alwasy works on last entity that was opened. */
	@:protected private var fEntityScanner : com.sun.org.apache.xerces.internal.impl.XMLEntityScanner;
	
	/** Input Source */
	@:protected private var fInputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource;
	
	/** Store properties*/
	@:protected private var fPropertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager;
	
	/**
	* @param inputStream
	* @param props
	* @throws XMLStreamException
	*/
	@:overload @:public public function new(inputStream : java.io.InputStream, props : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	@:overload @:public public function getScanner() : com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl;
	
	/**
	* @param systemid
	* @param props
	* @throws XMLStreamException
	*/
	@:overload @:public public function new(systemid : String, props : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* @param inputStream
	* @param encoding
	* @param props
	* @throws XMLStreamException
	*/
	@:overload @:public public function new(inputStream : java.io.InputStream, encoding : String, props : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* @param reader
	* @param props
	* @throws XMLStreamException
	*/
	@:overload @:public public function new(reader : java.io.Reader, props : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* @param inputSource
	* @param props
	* @throws XMLStreamException
	*/
	@:overload @:public public function new(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource, props : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* @param inputSource
	* @throws XMLStreamException
	*/
	@:overload @:public public function setInputSource(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/** This function tells if this instances is available for reuse.
	* One must call reset() and setInputSource() to be able to reuse
	* this instance.
	*/
	@:overload @:public public function canReuse() : Bool;
	
	/**
	* Resets this instance so that this instance is ready for reuse.
	*/
	@:overload @:public public function reset() : Void;
	
	/** Frees any resources associated with this Reader. This method does not close the underlying input source.
	* @throws XMLStreamException if there are errors freeing associated resources
	*/
	@:overload @:public public function close() : Void;
	
	/** Returns the character encoding declared on the xml declaration Returns null if none was declared
	* @return the encoding declared in the document or null
	*/
	@:overload @:public public function getCharacterEncodingScheme() : String;
	
	/**
	* @return
	*/
	@:overload @:public public function getColumnNumber() : Int;
	
	/** Return input encoding if known or null if unknown.
	* @return the encoding of this instance or null
	*/
	@:overload @:public public function getEncoding() : String;
	
	/** Returns the current value of the parse event as a string, this returns the string value of a CHARACTERS event, returns the value of a COMMENT, the replacement value for an ENTITY_REFERENCE, the string value of a CDATA section, the string value for a SPACE event, or the String value of the internal subset of the DTD. If an ENTITY_REFERENCE has been resolved, any character data will be reported as CHARACTERS events.
	* @return the current text or null
	*/
	@:overload @:public public function getEventType() : Int;
	
	/**
	* @return
	*/
	@:overload @:public public function getLineNumber() : Int;
	
	@:overload @:public public function getLocalName() : String;
	
	/**
	* @return
	*/
	@:overload @:public public function getNamespaceURI() : String;
	
	/** Get the data section of a processing instruction
	* @return the data or null
	*/
	@:overload @:public public function getPIData() : String;
	
	/** Get the target of a processing instruction
	* @return the target or null
	*/
	@:overload @:public public function getPITarget() : String;
	
	/**
	* @return the prefix of the current event, or null if the event does
	* not have a prefix. For START_ELEMENT and END_ELEMENT, return
	* XMLConstants.DEFAULT_NS_PREFIX when no prefix is available.
	*/
	@:overload @:public public function getPrefix() : String;
	
	/**
	* @return
	*/
	@:overload @:public public function getTextCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* @return
	*/
	@:overload @:public public function getTextLength() : Int;
	
	/**
	* @return
	*/
	@:overload @:public public function getTextStart() : Int;
	
	/**
	* @return
	*/
	@:overload @:public public function getValue() : String;
	
	/** Get the XML language version of the current document being parsed */
	@:overload @:public public function getVersion() : String;
	
	/**
	* @return
	*/
	@:overload @:public public function hasAttributes() : Bool;
	
	/** this Funtion returns true if the current event has name */
	@:overload @:public public function hasName() : Bool;
	
	/**
	* @throws XMLStreamException
	* @return
	*/
	@:overload @:public public function hasNext() : Bool;
	
	/**
	* @return
	*/
	@:overload @:public public function hasValue() : Bool;
	
	/**
	* @return
	*/
	@:overload @:public public function isEndElement() : Bool;
	
	/**
	* @return
	*/
	@:overload @:public public function isStandalone() : Bool;
	
	/**
	* @return
	*/
	@:overload @:public public function isStartElement() : Bool;
	
	/**
	*  Returns true if the cursor points to a character data event that consists of all whitespace
	*  Application calling this method needs to cache the value and avoid calling this method again
	*  for the same event.
	* @return
	*/
	@:overload @:public public function isWhiteSpace() : Bool;
	
	/**
	* @throws XMLStreamException
	* @return
	*/
	@:overload @:public public function next() : Int;
	
	/** Returns the count of attributes on this START_ELEMENT,
	* this method is only valid on a START_ELEMENT or ATTRIBUTE.  This
	* count excludes namespace definitions.  Attribute indices are
	* zero-based.
	* @return returns the number of attributes
	* @throws IllegalStateException if this is not a START_ELEMENT or ATTRIBUTE
	*/
	@:overload @:public public function getAttributeCount() : Int;
	
	/** Returns the localName of the attribute at the provided
	* index
	* @param index the position of the attribute
	* @return the localName of the attribute
	* @throws IllegalStateException if this is not a START_ELEMENT or ATTRIBUTE
	*/
	@:overload @:public public function getAttributeName(index : Int) : javax.xml.namespace.QName;
	
	/**
	* @param index
	* @return
	*/
	@:overload @:public public function getAttributeLocalName(index : Int) : String;
	
	/** Returns the namespace of the attribute at the provided
	* index
	* @param index the position of the attribute
	* @return the namespace URI (can be null)
	* @throws IllegalStateException if this is not a START_ELEMENT or ATTRIBUTE
	*/
	@:overload @:public public function getAttributeNamespace(index : Int) : String;
	
	/** Returns the prefix of this attribute at the
	* provided index
	* @param index the position of the attribute
	* @return the prefix of the attribute
	* @throws IllegalStateException if this is not a START_ELEMENT or ATTRIBUTE
	*/
	@:overload @:public public function getAttributePrefix(index : Int) : String;
	
	/** Returns the qname of the attribute at the provided index
	*
	* @param index the position of the attribute
	* @return the QName of the attribute
	* @throws IllegalStateException if this is not a START_ELEMENT or ATTRIBUTE
	*/
	@:overload @:public public function getAttributeQName(index : Int) : javax.xml.namespace.QName;
	
	/** Returns the XML type of the attribute at the provided
	* index
	* @param index the position of the attribute
	* @return the XML type of the attribute
	* @throws IllegalStateException if this is not a START_ELEMENT or ATTRIBUTE
	*/
	@:overload @:public public function getAttributeType(index : Int) : String;
	
	/** Returns the value of the attribute at the
	* index
	* @param index the position of the attribute
	* @return the attribute value
	* @throws IllegalStateException if this is not a START_ELEMENT or ATTRIBUTE
	*/
	@:overload @:public public function getAttributeValue(index : Int) : String;
	
	/**
	* @param namespaceURI
	* @param localName
	* @return
	*/
	@:overload @:public public function getAttributeValue(namespaceURI : String, localName : String) : String;
	
	/** Reads the content of a text-only element. Precondition:
	* the current event is START_ELEMENT. Postcondition:
	* The current event is the corresponding END_ELEMENT.
	* @throws XMLStreamException if the current event is not a START_ELEMENT or if
	* a non text element is encountered
	*/
	@:overload @:public public function getElementText() : String;
	
	/** Return the current location of the processor.
	* If the Location is unknown the processor should return
	* an implementation of Location that returns -1 for the
	* location and null for the publicId and systemId.
	* The location information is only valid until next() is
	* called.
	*/
	@:overload @:public public function getLocation() : javax.xml.stream.Location;
	
	/** Returns a QName for the current START_ELEMENT or END_ELEMENT event
	* @return the QName for the current START_ELEMENT or END_ELEMENT event
	*/
	@:overload @:public public function getName() : javax.xml.namespace.QName;
	
	/** Returns a read only namespace context for the current
	* position.  The context is transient and only valid until
	* a call to next() changes the state of the reader.
	* @return return a namespace context
	*/
	@:overload @:public public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	/** Returns the count of namespaces declared on this START_ELEMENT or END_ELEMENT,
	* this method is only valid on a START_ELEMENT, END_ELEMENT or NAMESPACE. On
	* an END_ELEMENT the count is of the namespaces that are about to go
	* out of scope.  This is the equivalent of the information reported
	* by SAX callback for an end element event.
	* @return returns the number of namespace declarations on this specific element
	* @throws IllegalStateException if this is not a START_ELEMENT, END_ELEMENT or NAMESPACE
	*/
	@:overload @:public public function getNamespaceCount() : Int;
	
	/** Returns the prefix for the namespace declared at the
	* index.  Returns null if this is the default namespace
	* declaration
	*
	* @param index the position of the namespace declaration
	* @return returns the namespace prefix
	* @throws IllegalStateException if this is not a START_ELEMENT, END_ELEMENT or NAMESPACE
	*/
	@:overload @:public public function getNamespacePrefix(index : Int) : String;
	
	/** Returns the uri for the namespace declared at the
	* index.
	*
	* @param index the position of the namespace declaration
	* @return returns the namespace uri
	* @throws IllegalStateException if this is not a START_ELEMENT, END_ELEMENT or NAMESPACE
	*/
	@:overload @:public public function getNamespaceURI(index : Int) : String;
	
	/** Get the value of a feature/property from the underlying implementation
	* @param name The name of the property, may not be null
	* @return The value of the property
	* @throws IllegalArgumentException if name is null
	*/
	@:overload @:public public function getProperty(name : String) : Dynamic;
	
	/** Returns the current value of the parse event as a string,
	* this returns the string value of a CHARACTERS event,
	* returns the value of a COMMENT, the replacement value
	* for an ENTITY_REFERENCE,
	* or the String value of the DTD
	* @return the current text or null
	* @throws java.lang.IllegalStateException if this state is not
	* a valid text state.
	*/
	@:overload @:public public function getText() : String;
	
	/** Test if the current event is of the given type and if the namespace and name match the current namespace and name of the current event.
	* If the namespaceURI is null it is not checked for equality, if the localName is null it is not checked for equality.
	* @param type the event type
	* @param namespaceURI the uri of the event, may be null
	* @param localName the localName of the event, may be null
	* @throws XMLStreamException if the required values are not matched.
	*/
	@:overload @:public public function require(type : Int, namespaceURI : String, localName : String) : Void;
	
	/** Gets the the text associated with a CHARACTERS, SPACE or CDATA event.
	* Text starting a "sourceStart" is copied into "destination" starting at "targetStart".
	* Up to "length" characters are copied.  The number of characters actually copied is returned.
	*
	* The "sourceStart" argument must be greater or equal to 0 and less than or equal to
	* the number of characters associated with the event.  Usually, one requests text starting at a "sourceStart" of 0.
	* If the number of characters actually copied is less than the "length", then there is no more text.
	* Otherwise, subsequent calls need to be made until all text has been retrieved. For example:
	*
	* <code>
	* int length = 1024;
	* char[] myBuffer = new char[ length ];
	*
	* for ( int sourceStart = 0 ; ; sourceStart += length )
	* {
	*    int nCopied = stream.getTextCharacters( sourceStart, myBuffer, 0, length );
	*
	*   if (nCopied < length)
	*       break;
	* }
	* </code>
	* XMLStreamException may be thrown if there are any XML errors in the underlying source.
	* The "targetStart" argument must be greater than or equal to 0 and less than the length of "target",
	* Length must be greater than 0 and "targetStart + length" must be less than or equal to length of "target".
	*
	* @param sourceStart the index of the first character in the source array to copy
	* @param target the destination array
	* @param targetStart the start offset in the target array
	* @param length the number of characters to copy
	* @return the number of characters actually copied
	* @throws XMLStreamException if the underlying XML source is not well-formed
	* @throws IndexOutOfBoundsException if targetStart < 0 or > than the length of target
	* @throws IndexOutOfBoundwhile(isCharacters()) ;sException if length < 0 or targetStart + length > length of target
	* @throws UnsupportedOperationException if this method is not supported
	* @throws NullPointerException is if target is null
	*/
	@:overload @:public public function getTextCharacters(sourceStart : Int, target : java.NativeArray<java.StdTypes.Char16>, targetStart : Int, length : Int) : Int;
	
	/** Return true if the current event has text, false otherwise
	* The following events have text:
	* CHARACTERS,DTD ,ENTITY_REFERENCE, COMMENT
	*/
	@:overload @:public public function hasText() : Bool;
	
	/** Returns a boolean which indicates if this
	* attribute was created by default
	* @param index the position of the attribute
	* @return true if this is a default attribute
	* @throws IllegalStateException if this is not a START_ELEMENT or ATTRIBUTE
	*/
	@:overload @:public public function isAttributeSpecified(index : Int) : Bool;
	
	/** Returns true if the cursor points to a character data event
	* @return true if the cursor points to character data, false otherwise
	*/
	@:overload @:public public function isCharacters() : Bool;
	
	/** Skips any insignificant events (COMMENT and PROCESSING_INSTRUCTION)
	* until a START_ELEMENT or
	* END_ELEMENT is reached. If other than space characters are
	* encountered, an exception is thrown. This method should
	* be used when processing element-only content because
	* the parser is not able to recognize ignorable whitespace if
	* then DTD is missing or not interpreted.
	* @return the event type of the element read
	* @throws XMLStreamException if the current event is not white space
	*/
	@:overload @:public public function nextTag() : Int;
	
	/** Checks if standalone was set in the document
	* @return true if standalone was set in the document, or false otherwise
	*/
	@:overload @:public public function standaloneSet() : Bool;
	
	/**
	* @param qname
	* @return
	*/
	@:overload @:public public function convertXNIQNametoJavaxQName(qname : com.sun.org.apache.xerces.internal.xni.QName) : javax.xml.namespace.QName;
	
	/** Return the uri for the given prefix.
	* The uri returned depends on the current state of the processor.
	*
	* <p><strong>NOTE:</strong>The 'xml' prefix is bound as defined in
	* <a href="http://www.w3.org/TR/REC-xml-names/#ns-using">Namespaces in XML</a>
	* specification to "http://www.w3.org/XML/1998/namespace".
	*
	* <p><strong>NOTE:</strong> The 'xmlns' prefix must be resolved to following namespace
	* <a href="http://www.w3.org/2000/xmlns/">http://www.w3.org/2000/xmlns/</a>
	* @return the uri bound to the given prefix or null if it is not bound
	* @param prefix The prefix to lookup, may not be null
	* @throws IllegalStateException - if the prefix is null
	*/
	@:overload @:public public function getNamespaceURI(prefix : String) : String;
	
	@:overload @:protected private function setPropertyManager(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* @return returns the reference to property manager.
	*/
	@:overload @:protected private function getPropertyManager() : com.sun.org.apache.xerces.internal.impl.PropertyManager;
	
	@:overload @:protected private function getEntityDecls() : java.util.List<Dynamic>;
	
	@:overload @:protected private function getNotationDecls() : java.util.List<Dynamic>;
	
	
}
