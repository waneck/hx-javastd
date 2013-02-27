package com.sun.xml.internal.stream;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
* This class allows various parser scanners to scan basic XML constructs
* from entities. This class works directly with the entity manager to
* provide this functionality.
* <p>
* There is only one entity scanner and entity manager per parser. The
* entity manager <em>could</em> implement the methods to perform entity
* scanning, but the entity scanner class allows a cleaner separation
* between entity management API and entity scanning.
*
* @author Andy Clark, IBM
* @author Neeraj Bajaj Sun Microsystems
* @author K.Venugopal Sun Microsystems
*
* @see XMLEntityHandler
* @see XMLEntityManager
*/
extern class XMLEntityReader implements com.sun.org.apache.xerces.internal.xni.XMLLocator
{
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
	* @throws IOException  Thrown if the new encoding is not supported.
	*
	* @see com.sun.org.apache.xerces.internal.util.EncodingMap
	* @see com.sun.org.apache.xerces.internal.util.XMLChar#isValidIANAEncoding
	* @see com.sun.org.apache.xerces.internal.util.XMLChar#isValidJavaEncoding
	*/
	@:overload @:abstract public function setEncoding(encoding : String) : Void;
	
	@:overload @:abstract public function getEncoding() : String;
	
	@:overload @:abstract public function getCharacterOffset() : Int;
	
	/** the version of the current entity being scanned or the version of the entity on which reader is operating */
	@:overload @:abstract public function setVersion(version : String) : Void;
	
	/** get the version of the entity on which reader is operating */
	@:overload @:abstract public function getVersion() : String;
	
	/** Returns true if the current entity being scanned is external. */
	@:overload @:abstract public function isExternal() : Bool;
	
	/**
	* Returns the next character on the input.
	* <p>
	* <strong>Note:</strong> The character is <em>not</em> consumed.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload @:abstract public function peekChar() : Int;
	
	/**
	* Returns the next character on the input.
	* <p>
	* <strong>Note:</strong> The character is consumed.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload @:abstract public function scanChar() : Int;
	
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
	@:overload @:abstract public function scanNmtoken() : String;
	
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
	@:overload @:abstract public function scanName() : String;
	
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
	@:overload @:abstract public function scanQName(qname : com.sun.org.apache.xerces.internal.xni.QName) : Bool;
	
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
	@:overload @:abstract public function scanContent(content : com.sun.org.apache.xerces.internal.xni.XMLString) : Int;
	
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
	@:overload @:abstract public function scanLiteral(quote : Int, content : com.sun.org.apache.xerces.internal.xni.XMLString) : Int;
	
	/**
	* Scans a range of character data up to the specicied delimiter,
	* setting the fields of the XMLString structure, appropriately.
	* <p>
	* <strong>Note:</strong> The characters are consumed.
	* <p>
	* <strong>Note:</strong> This assumes that the internal buffer is
	* at least the same size, or bigger, than the length of the delimiter
	* and that the delimiter contains at least one character.
	* <p>
	* <strong>Note:</strong> This method does not guarantee to return
	* the longest run of character data. This method may return before
	* the delimiter due to reaching the end of the input buffer or any
	* other reason.
	* <p>
	* <strong>Note:</strong> The fields contained in the XMLString
	* structure are not guaranteed to remain valid upon subsequent calls
	* to the entity scanner. Therefore, the caller is responsible for
	* immediately using the returned character data or making a copy of
	* the character data.
	*
	* @param delimiter The string that signifies the end of the character
	*                  data to be scanned.
	* @param data      The data structure to fill.
	*
	* @return Returns true if there is more data to scan, false otherwise.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload @:abstract public function scanData(delimiter : String, data : com.sun.org.apache.xerces.internal.util.XMLStringBuffer) : Bool;
	
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
	@:overload @:abstract public function skipChar(c : Int) : Bool;
	
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
	@:overload @:abstract public function skipSpaces() : Bool;
	
	/**
	* Skips the specified string appearing immediately on the input.
	* <p>
	* <strong>Note:</strong> The characters are consumed only if they are
	* space characters.
	*
	* @param s The string to skip.
	*
	* @return Returns true if the string was skipped.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload @:abstract public function skipString(s : String) : Bool;
	
	@:overload @:abstract public function registerListener(listener : com.sun.xml.internal.stream.XMLBufferListener) : Void;
	
	/** Returns the expanded system identifier. */
	@:overload public function getExpandedSystemId() : String;
	
	/** Returns the base system identifier. */
	@:overload public function getBaseSystemId() : String;
	
	/** Returns the line number, or <code>-1</code> if no line number is available. */
	@:overload public function getLineNumber() : Int;
	
	/** Returns the column number, or <code>-1</code> if no column number is available. */
	@:overload public function getColumnNumber() : Int;
	
	/** Returns the literal system identifier. */
	@:overload public function getLiteralSystemId() : String;
	
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
	@:overload public function getXMLVersion() : String;
	
	/** Returns the public identifier. */
	@:overload public function getPublicId() : String;
	
	
}
