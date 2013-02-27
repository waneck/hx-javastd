package com.sun.org.apache.xerces.internal.impl;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
/**
* Implements the entity scanner methods.
*
* @author Neeraj Bajaj, Sun Microsystems
* @author Andy Clark, IBM
* @author Arnaud  Le Hors, IBM
* @author K.Venugopal Sun Microsystems
*
*/
extern class XMLEntityScanner implements com.sun.org.apache.xerces.internal.xni.XMLLocator
{
	private var fCurrentEntity : com.sun.xml.internal.stream.Entity.Entity_ScannedEntity;
	
	private var fBufferSize : Int;
	
	private var fEntityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
	
	public static var VALID_NAMES(default, null) : java.NativeArray<Bool>;
	
	private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/**
	* Allow Java encoding names. This feature identifier is:
	* http://apache.org/xml/features/allow-java-encodings
	*/
	private var fAllowJavaEncodings : Bool;
	
	/** Property identifier: symbol table. */
	private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error reporter. */
	private static var ERROR_REPORTER(default, null) : String;
	
	/** Feature identifier: allow Java encodings. */
	private static var ALLOW_JAVA_ENCODINGS(default, null) : String;
	
	private var fPropertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/**  private constructor, this class can only be instantiated within this class. Instance of this class should
	*    be obtained using getEntityScanner() or getEntityScanner(ScannedEntity scannedEntity)
	*    @see getEntityScanner()
	*    @see getEntityScanner(ScannedEntity)
	*/
	@:overload public function new(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager, entityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager) : Void;
	
	@:overload @:final public function setBufferSize(size : Int) : Void;
	
	/**
	* Resets the components.
	*/
	@:overload public function reset(propertyManager : com.sun.org.apache.xerces.internal.impl.PropertyManager) : Void;
	
	/**
	* Resets the component. The component can query the component manager
	* about any features and properties that affect the operation of the
	* component.
	*
	* @param componentManager The component manager.
	*
	* @throws SAXException Thrown by component on initialization error.
	*                      For example, if a feature or property is
	*                      required for the operation of the component, the
	*                      component manager may throw a
	*                      SAXNotRecognizedException or a
	*                      SAXNotSupportedException.
	*/
	@:overload public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	@:overload @:final public function reset(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, entityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager, reporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter) : Void;
	
	/**
	* Returns the XML version of the current entity. This will normally be the
	* value from the XML or text declaration or defaulted by the parser. Note that
	* that this value may be different than the version of the processing rules
	* applied to the current entity. For instance, an XML 1.1 document may refer to
	* XML 1.0 entities. In such a case the rules of XML 1.1 are applied to the entire
	* document. Also note that, for a given entity, this value can only be considered
	* final once the XML or text declaration has been read or once it has been
	* determined that there is no such declaration.
	*/
	@:overload @:final public function getXMLVersion() : String;
	
	/**
	* Sets the XML version. This method is used by the
	* scanners to report the value of the version pseudo-attribute
	* in an XML or text declaration.
	*
	* @param xmlVersion the XML version of the current entity
	*/
	@:overload @:final public function setXMLVersion(xmlVersion : String) : Void;
	
	/** set the instance of current scanned entity.
	*   @param ScannedEntity
	*/
	@:overload @:final public function setCurrentEntity(scannedEntity : com.sun.xml.internal.stream.Entity.Entity_ScannedEntity) : Void;
	
	@:overload public function getCurrentEntity() : com.sun.xml.internal.stream.Entity.Entity_ScannedEntity;
	
	/**
	* Returns the base system identifier of the currently scanned
	* entity, or null if none is available.
	*/
	@:overload @:final public function getBaseSystemId() : String;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier#setBaseSystemId(String)
	*/
	@:overload public function setBaseSystemId(systemId : String) : Void;
	
	@:overload @:final public function getLineNumber() : Int;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.XMLLocator#setLineNumber(int)
	*/
	@:overload public function setLineNumber(line : Int) : Void;
	
	@:overload @:final public function getColumnNumber() : Int;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.XMLLocator#setColumnNumber(int)
	*/
	@:overload public function setColumnNumber(col : Int) : Void;
	
	@:overload @:final public function getCharacterOffset() : Int;
	
	/** Returns the expanded system identifier.  */
	@:overload @:final public function getExpandedSystemId() : String;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier#setExpandedSystemId(String)
	*/
	@:overload public function setExpandedSystemId(systemId : String) : Void;
	
	/** Returns the literal system identifier.  */
	@:overload @:final public function getLiteralSystemId() : String;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier#setLiteralSystemId(String)
	*/
	@:overload public function setLiteralSystemId(systemId : String) : Void;
	
	/** Returns the public identifier.  */
	@:overload @:final public function getPublicId() : String;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier#setPublicId(String)
	*/
	@:overload public function setPublicId(publicId : String) : Void;
	
	/** the version of the current entity being scanned */
	@:overload public function setVersion(version : String) : Void;
	
	@:overload public function getVersion() : String;
	
	/**
	* Returns the encoding of the current entity.
	* Note that, for a given entity, this value can only be
	* considered final once the encoding declaration has been read (or once it
	* has been determined that there is no such declaration) since, no encoding
	* having been specified on the XMLInputSource, the parser
	* will make an initial "guess" which could be in error.
	*/
	@:overload @:final public function getEncoding() : String;
	
	/**
	* Sets the encoding of the scanner. This method is used by the
	* scanners if the XMLDecl or TextDecl line contains an encoding
	* pseudo-attribute.
	* <p>
	* <strong>Note:</strong> The underlying character reader on the
	* current entity will be changed to accomodate the new encoding.
	* However, the new encoding is ignored if the current reader was
	* not constructed from an input stream (e.g. an external entity
	* that is resolved directly to the appropriate java.io.Reader
	* object).
	*
	* @param encoding The IANA encoding name of the new encoding.
	*
	* @throws IOException Thrown if the new encoding is not supported.
	*
	* @see com.sun.org.apache.xerces.internal.util.EncodingMap
	*/
	@:overload @:final public function setEncoding(encoding : String) : Void;
	
	/** Returns true if the current entity being scanned is external. */
	@:overload @:final public function isExternal() : Bool;
	
	@:overload public function getChar(relative : Int) : Int;
	
	/**
	* Returns the next character on the input.
	* <p>
	* <strong>Note:</strong> The character is <em>not</em> consumed.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload public function peekChar() : Int;
	
	/**
	* Returns the next character on the input.
	* <p>
	* <strong>Note:</strong> The character is consumed.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload public function scanChar() : Int;
	
	/**
	* Returns a string matching the NMTOKEN production appearing immediately
	* on the input as a symbol, or null if NMTOKEN Name string is present.
	* <p>
	* <strong>Note:</strong> The NMTOKEN characters are consumed.
	* <p>
	* <strong>Note:</strong> The string returned must be a symbol. The
	* SymbolTable can be used for this purpose.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*
	* @see com.sun.org.apache.xerces.internal.util.SymbolTable
	* @see com.sun.org.apache.xerces.internal.util.XMLChar#isName
	*/
	@:overload public function scanNmtoken() : String;
	
	/**
	* Returns a string matching the Name production appearing immediately
	* on the input as a symbol, or null if no Name string is present.
	* <p>
	* <strong>Note:</strong> The Name characters are consumed.
	* <p>
	* <strong>Note:</strong> The string returned must be a symbol. The
	* SymbolTable can be used for this purpose.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*
	* @see com.sun.org.apache.xerces.internal.util.SymbolTable
	* @see com.sun.org.apache.xerces.internal.util.XMLChar#isName
	* @see com.sun.org.apache.xerces.internal.util.XMLChar#isNameStart
	*/
	@:overload public function scanName() : String;
	
	/**
	* Scans a qualified name from the input, setting the fields of the
	* QName structure appropriately.
	* <p>
	* <strong>Note:</strong> The qualified name characters are consumed.
	* <p>
	* <strong>Note:</strong> The strings used to set the values of the
	* QName structure must be symbols. The SymbolTable can be used for
	* this purpose.
	*
	* @param qname The qualified name structure to fill.
	*
	* @return Returns true if a qualified name appeared immediately on
	*         the input and was scanned, false otherwise.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*
	* @see com.sun.org.apache.xerces.internal.util.SymbolTable
	* @see com.sun.org.apache.xerces.internal.util.XMLChar#isName
	* @see com.sun.org.apache.xerces.internal.util.XMLChar#isNameStart
	*/
	@:overload public function scanQName(qname : com.sun.org.apache.xerces.internal.xni.QName) : Bool;
	
	/**
	* CHANGED:
	* Scans a range of parsed character data, This function appends the character data to
	* the supplied buffer.
	* <p>
	* <strong>Note:</strong> The characters are consumed.
	* <p>
	* <strong>Note:</strong> This method does not guarantee to return
	* the longest run of parsed character data. This method may return
	* before markup due to reaching the end of the input buffer or any
	* other reason.
	* <p>
	*
	* @param content The content structure to fill.
	*
	* @return Returns the next character on the input, if known. This
	*         value may be -1 but this does <em>note</em> designate
	*         end of file.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload public function scanContent(content : com.sun.org.apache.xerces.internal.xni.XMLString) : Int;
	
	/**
	* Scans a range of attribute value data, setting the fields of the
	* XMLString structure, appropriately.
	* <p>
	* <strong>Note:</strong> The characters are consumed.
	* <p>
	* <strong>Note:</strong> This method does not guarantee to return
	* the longest run of attribute value data. This method may return
	* before the quote character due to reaching the end of the input
	* buffer or any other reason.
	* <p>
	* <strong>Note:</strong> The fields contained in the XMLString
	* structure are not guaranteed to remain valid upon subsequent calls
	* to the entity scanner. Therefore, the caller is responsible for
	* immediately using the returned character data or making a copy of
	* the character data.
	*
	* @param quote   The quote character that signifies the end of the
	*                attribute value data.
	* @param content The content structure to fill.
	*
	* @return Returns the next character on the input, if known. This
	*         value may be -1 but this does <em>note</em> designate
	*         end of file.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload public function scanLiteral(quote : Int, content : com.sun.org.apache.xerces.internal.xni.XMLString) : Int;
	
	/**
	* Scans a range of character data up to the specified delimiter,
	* setting the fields of the XMLString structure, appropriately.
	* <p>
	* <strong>Note:</strong> The characters are consumed.
	* <p>
	* <strong>Note:</strong> This assumes that the length of the delimiter
	* and that the delimiter contains at least one character.
	* <p>
	* <strong>Note:</strong> This method does not guarantee to return
	* the longest run of character data. This method may return before
	* the delimiter due to reaching the end of the input buffer or any
	* other reason.
	* <p>
	* @param delimiter The string that signifies the end of the character
	*                  data to be scanned.
	* @param buffer    The XMLStringBuffer to fill.
	*
	* @return Returns true if there is more data to scan, false otherwise.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload public function scanData(delimiter : String, buffer : com.sun.org.apache.xerces.internal.util.XMLStringBuffer) : Bool;
	
	/**
	* Skips a character appearing immediately on the input.
	* <p>
	* <strong>Note:</strong> The character is consumed only if it matches
	* the specified character.
	*
	* @param c The character to skip.
	*
	* @return Returns true if the character was skipped.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload public function skipChar(c : Int) : Bool;
	
	@:overload public function isSpace(ch : java.StdTypes.Char16) : Bool;
	
	/**
	* Skips space characters appearing immediately on the input.
	* <p>
	* <strong>Note:</strong> The characters are consumed only if they are
	* space characters.
	*
	* @return Returns true if at least one space character was skipped.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*
	* @see com.sun.org.apache.xerces.internal.util.XMLChar#isSpace
	*/
	@:overload public function skipSpaces() : Bool;
	
	/**
	* @param legnth This function checks that following number of characters are available.
	* to the underlying buffer.
	* @return This function returns true if capacity asked is available.
	*/
	@:overload public function arrangeCapacity(length : Int) : Bool;
	
	/**
	* @param legnth This function checks that following number of characters are available.
	* to the underlying buffer.
	* @param if the underlying function should change the entity
	* @return This function returns true if capacity asked is available.
	*
	*/
	@:overload public function arrangeCapacity(length : Int, changeEntity : Bool) : Bool;
	
	/**
	* Skips the specified string appearing immediately on the input.
	* <p>
	* <strong>Note:</strong> The characters are consumed only if all
	* the characters are skipped.
	*
	* @param s The string to skip.
	*
	* @return Returns true if the string was skipped.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload public function skipString(s : String) : Bool;
	
	@:overload public function skipString(s : java.NativeArray<java.StdTypes.Char16>) : Bool;
	
	/**
	* Creates a reader capable of reading the given input stream in
	* the specified encoding.
	*
	* @param inputStream  The input stream.
	* @param encoding     The encoding name that the input stream is
	*                     encoded using. If the user has specified that
	*                     Java encoding names are allowed, then the
	*                     encoding name may be a Java encoding name;
	*                     otherwise, it is an ianaEncoding name.
	* @param isBigEndian   For encodings (like uCS-4), whose names cannot
	*                      specify a byte order, this tells whether the order is bigEndian.  null menas
	*                      unknown or not relevant.
	*
	* @return Returns a reader.
	*/
	@:overload private function createReader(inputStream : java.io.InputStream, encoding : String, isBigEndian : Null<Bool>) : java.io.Reader;
	
	/**
	* Returns the IANA encoding name that is auto-detected from
	* the bytes specified, with the endian-ness of that encoding where appropriate.
	*
	* @param b4    The first four bytes of the input.
	* @param count The number of bytes actually read.
	* @return a 2-element array:  the first element, an IANA-encoding string,
	*  the second element a Boolean which is true iff the document is big endian, false
	*  if it's little-endian, and null if the distinction isn't relevant.
	*/
	@:overload private function getEncodingName(b4 : java.NativeArray<java.StdTypes.Int8>, count : Int) : java.NativeArray<Dynamic>;
	
	/**
	* Registers the listener object and provides callback.
	* @param listener listener to which call back should be provided when scanner buffer
	* is being changed.
	*/
	@:overload public function registerListener(listener : com.sun.xml.internal.stream.XMLBufferListener) : Void;
	
	/**
	* Skips space characters appearing immediately on the input that would
	* match non-terminal S (0x09, 0x0A, 0x0D, 0x20) before end of line
	* normalization is performed. This is useful when scanning structures
	* such as the XMLDecl and TextDecl that can only contain US-ASCII
	* characters.
	* <p>
	* <strong>Note:</strong> The characters are consumed only if they would
	* match non-terminal S before end of line normalization is performed.
	*
	* @return Returns true if at least one space character was skipped.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*
	* @see com.sun.org.apache.xerces.internal.util.XMLChar#isSpace
	*/
	@:overload @:final public function skipDeclSpaces() : Bool;
	
	
}
