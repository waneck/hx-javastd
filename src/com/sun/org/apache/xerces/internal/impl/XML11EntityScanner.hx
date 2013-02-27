package com.sun.org.apache.xerces.internal.impl;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 1999-2002 The Apache Software Foundation.
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Xerces" and "Apache Software Foundation" must
*    not be used to endorse or promote products derived from this
*    software without prior written permission. For written
*    permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    nor may "Apache" appear in their name, without prior written
*    permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation and was
* originally based on software copyright (c) 1999, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class XML11EntityScanner extends com.sun.org.apache.xerces.internal.impl.XMLEntityScanner
{
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/**
	* Returns the next character on the input.
	* <p>
	* <strong>Note:</strong> The character is <em>not</em> consumed.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload override public function peekChar() : Int;
	
	/**
	* Returns the next character on the input.
	* <p>
	* <strong>Note:</strong> The character is consumed.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*/
	@:overload override public function scanChar() : Int;
	
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
	* @see com.sun.org.apache.xerces.internal.util.XML11Char#isXML11Name
	*/
	@:overload override public function scanNmtoken() : String;
	
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
	* @see com.sun.org.apache.xerces.internal.util.XML11Char#isXML11Name
	* @see com.sun.org.apache.xerces.internal.util.XML11Char#isXML11NameStart
	*/
	@:overload override public function scanName() : String;
	
	/**
	* Returns a string matching the NCName production appearing immediately
	* on the input as a symbol, or null if no NCName string is present.
	* <p>
	* <strong>Note:</strong> The NCName characters are consumed.
	* <p>
	* <strong>Note:</strong> The string returned must be a symbol. The
	* SymbolTable can be used for this purpose.
	*
	* @throws IOException  Thrown if i/o error occurs.
	* @throws EOFException Thrown on end of file.
	*
	* @see com.sun.org.apache.xerces.internal.util.SymbolTable
	* @see com.sun.org.apache.xerces.internal.util.XML11Char#isXML11NCName
	* @see com.sun.org.apache.xerces.internal.util.XML11Char#isXML11NCNameStart
	*/
	@:overload public function scanNCName() : String;
	
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
	* @see com.sun.org.apache.xerces.internal.util.XML11Char#isXML11Name
	* @see com.sun.org.apache.xerces.internal.util.XML11Char#isXML11NameStart
	*/
	@:overload override public function scanQName(qname : com.sun.org.apache.xerces.internal.xni.QName) : Bool;
	
	/**
	* Scans a range of parsed character data, setting the fields of the
	* XMLString structure, appropriately.
	* <p>
	* <strong>Note:</strong> The characters are consumed.
	* <p>
	* <strong>Note:</strong> This method does not guarantee to return
	* the longest run of parsed character data. This method may return
	* before markup due to reaching the end of the input buffer or any
	* other reason.
	* <p>
	* <strong>Note:</strong> The fields contained in the XMLString
	* structure are not guaranteed to remain valid upon subsequent calls
	* to the entity scanner. Therefore, the caller is responsible for
	* immediately using the returned character data or making a copy of
	* the character data.
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
	@:overload override public function scanContent(content : com.sun.org.apache.xerces.internal.xni.XMLString) : Int;
	
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
	@:overload override public function scanLiteral(quote : Int, content : com.sun.org.apache.xerces.internal.xni.XMLString) : Int;
	
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
	@:overload override public function scanData(delimiter : String, buffer : com.sun.org.apache.xerces.internal.util.XMLStringBuffer) : Bool;
	
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
	@:overload override public function skipChar(c : Int) : Bool;
	
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
	* @see com.sun.org.apache.xerces.internal.util.XML11Char#isXML11Space
	*/
	@:overload override public function skipSpaces() : Bool;
	
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
	@:overload override public function skipString(s : String) : Bool;
	
	
}
