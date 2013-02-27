package org.xml.sax;
/*
* Copyright (c) 2000, 2005, Oracle and/or its affiliates. All rights reserved.
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
//// SAX input source.
//// http://www.saxproject.org
//// No warranty; no copyright -- use this as you will.
//// $Id: InputSource.java,v 1.2 2004/11/03 22:55:32 jsuttor Exp $
extern class InputSource
{
	/**
	* Zero-argument default constructor.
	*
	* @see #setPublicId
	* @see #setSystemId
	* @see #setByteStream
	* @see #setCharacterStream
	* @see #setEncoding
	*/
	@:overload public function new() : Void;
	
	/**
	* Create a new input source with a system identifier.
	*
	* <p>Applications may use setPublicId to include a
	* public identifier as well, or setEncoding to specify
	* the character encoding, if known.</p>
	*
	* <p>If the system identifier is a URL, it must be fully
	* resolved (it may not be a relative URL).</p>
	*
	* @param systemId The system identifier (URI).
	* @see #setPublicId
	* @see #setSystemId
	* @see #setByteStream
	* @see #setEncoding
	* @see #setCharacterStream
	*/
	@:overload public function new(systemId : String) : Void;
	
	/**
	* Create a new input source with a byte stream.
	*
	* <p>Application writers should use setSystemId() to provide a base
	* for resolving relative URIs, may use setPublicId to include a
	* public identifier, and may use setEncoding to specify the object's
	* character encoding.</p>
	*
	* @param byteStream The raw byte stream containing the document.
	* @see #setPublicId
	* @see #setSystemId
	* @see #setEncoding
	* @see #setByteStream
	* @see #setCharacterStream
	*/
	@:overload public function new(byteStream : java.io.InputStream) : Void;
	
	/**
	* Create a new input source with a character stream.
	*
	* <p>Application writers should use setSystemId() to provide a base
	* for resolving relative URIs, and may use setPublicId to include a
	* public identifier.</p>
	*
	* <p>The character stream shall not include a byte order mark.</p>
	*
	* @see #setPublicId
	* @see #setSystemId
	* @see #setByteStream
	* @see #setCharacterStream
	*/
	@:overload public function new(characterStream : java.io.Reader) : Void;
	
	/**
	* Set the public identifier for this input source.
	*
	* <p>The public identifier is always optional: if the application
	* writer includes one, it will be provided as part of the
	* location information.</p>
	*
	* @param publicId The public identifier as a string.
	* @see #getPublicId
	* @see org.xml.sax.Locator#getPublicId
	* @see org.xml.sax.SAXParseException#getPublicId
	*/
	@:overload public function setPublicId(publicId : String) : Void;
	
	/**
	* Get the public identifier for this input source.
	*
	* @return The public identifier, or null if none was supplied.
	* @see #setPublicId
	*/
	@:overload public function getPublicId() : String;
	
	/**
	* Set the system identifier for this input source.
	*
	* <p>The system identifier is optional if there is a byte stream
	* or a character stream, but it is still useful to provide one,
	* since the application can use it to resolve relative URIs
	* and can include it in error messages and warnings (the parser
	* will attempt to open a connection to the URI only if
	* there is no byte stream or character stream specified).</p>
	*
	* <p>If the application knows the character encoding of the
	* object pointed to by the system identifier, it can register
	* the encoding using the setEncoding method.</p>
	*
	* <p>If the system identifier is a URL, it must be fully
	* resolved (it may not be a relative URL).</p>
	*
	* @param systemId The system identifier as a string.
	* @see #setEncoding
	* @see #getSystemId
	* @see org.xml.sax.Locator#getSystemId
	* @see org.xml.sax.SAXParseException#getSystemId
	*/
	@:overload public function setSystemId(systemId : String) : Void;
	
	/**
	* Get the system identifier for this input source.
	*
	* <p>The getEncoding method will return the character encoding
	* of the object pointed to, or null if unknown.</p>
	*
	* <p>If the system ID is a URL, it will be fully resolved.</p>
	*
	* @return The system identifier, or null if none was supplied.
	* @see #setSystemId
	* @see #getEncoding
	*/
	@:overload public function getSystemId() : String;
	
	/**
	* Set the byte stream for this input source.
	*
	* <p>The SAX parser will ignore this if there is also a character
	* stream specified, but it will use a byte stream in preference
	* to opening a URI connection itself.</p>
	*
	* <p>If the application knows the character encoding of the
	* byte stream, it should set it with the setEncoding method.</p>
	*
	* @param byteStream A byte stream containing an XML document or
	*        other entity.
	* @see #setEncoding
	* @see #getByteStream
	* @see #getEncoding
	* @see java.io.InputStream
	*/
	@:overload public function setByteStream(byteStream : java.io.InputStream) : Void;
	
	/**
	* Get the byte stream for this input source.
	*
	* <p>The getEncoding method will return the character
	* encoding for this byte stream, or null if unknown.</p>
	*
	* @return The byte stream, or null if none was supplied.
	* @see #getEncoding
	* @see #setByteStream
	*/
	@:overload public function getByteStream() : java.io.InputStream;
	
	/**
	* Set the character encoding, if known.
	*
	* <p>The encoding must be a string acceptable for an
	* XML encoding declaration (see section 4.3.3 of the XML 1.0
	* recommendation).</p>
	*
	* <p>This method has no effect when the application provides a
	* character stream.</p>
	*
	* @param encoding A string describing the character encoding.
	* @see #setSystemId
	* @see #setByteStream
	* @see #getEncoding
	*/
	@:overload public function setEncoding(encoding : String) : Void;
	
	/**
	* Get the character encoding for a byte stream or URI.
	* This value will be ignored when the application provides a
	* character stream.
	*
	* @return The encoding, or null if none was supplied.
	* @see #setByteStream
	* @see #getSystemId
	* @see #getByteStream
	*/
	@:overload public function getEncoding() : String;
	
	/**
	* Set the character stream for this input source.
	*
	* <p>If there is a character stream specified, the SAX parser
	* will ignore any byte stream and will not attempt to open
	* a URI connection to the system identifier.</p>
	*
	* @param characterStream The character stream containing the
	*        XML document or other entity.
	* @see #getCharacterStream
	* @see java.io.Reader
	*/
	@:overload public function setCharacterStream(characterStream : java.io.Reader) : Void;
	
	/**
	* Get the character stream for this input source.
	*
	* @return The character stream, or null if none was supplied.
	* @see #setCharacterStream
	*/
	@:overload public function getCharacterStream() : java.io.Reader;
	
	
}
