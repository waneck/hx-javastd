package com.sun.org.apache.xerces.internal.xni.parser;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004 The Apache Software Foundation.
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
extern class XMLInputSource
{
	/** Public identifier. */
	private var fPublicId : String;
	
	/** System identifier. */
	private var fSystemId : String;
	
	/** Base system identifier. */
	private var fBaseSystemId : String;
	
	/** Byte stream. */
	private var fByteStream : java.io.InputStream;
	
	/** Character stream. */
	private var fCharStream : java.io.Reader;
	
	/** Encoding. */
	private var fEncoding : String;
	
	/**
	* Constructs an input source from just the public and system
	* identifiers, leaving resolution of the entity and opening of
	* the input stream up to the caller.
	*
	* @param publicId     The public identifier, if known.
	* @param systemId     The system identifier. This value should
	*                     always be set, if possible, and can be
	*                     relative or absolute. If the system identifier
	*                     is relative, then the base system identifier
	*                     should be set.
	* @param baseSystemId The base system identifier. This value should
	*                     always be set to the fully expanded URI of the
	*                     base system identifier, if possible.
	*/
	@:overload public function new(publicId : String, systemId : String, baseSystemId : String) : Void;
	
	/**
	* Constructs an input source from a XMLResourceIdentifier
	* object, leaving resolution of the entity and opening of
	* the input stream up to the caller.
	*
	* @param resourceIdentifier    the XMLResourceIdentifier containing the information
	*/
	@:overload public function new(resourceIdentifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier) : Void;
	
	/**
	* Constructs an input source from a byte stream.
	*
	* @param publicId     The public identifier, if known.
	* @param systemId     The system identifier. This value should
	*                     always be set, if possible, and can be
	*                     relative or absolute. If the system identifier
	*                     is relative, then the base system identifier
	*                     should be set.
	* @param baseSystemId The base system identifier. This value should
	*                     always be set to the fully expanded URI of the
	*                     base system identifier, if possible.
	* @param byteStream   The byte stream.
	* @param encoding     The encoding of the byte stream, if known.
	*/
	@:overload public function new(publicId : String, systemId : String, baseSystemId : String, byteStream : java.io.InputStream, encoding : String) : Void;
	
	/**
	* Constructs an input source from a character stream.
	*
	* @param publicId     The public identifier, if known.
	* @param systemId     The system identifier. This value should
	*                     always be set, if possible, and can be
	*                     relative or absolute. If the system identifier
	*                     is relative, then the base system identifier
	*                     should be set.
	* @param baseSystemId The base system identifier. This value should
	*                     always be set to the fully expanded URI of the
	*                     base system identifier, if possible.
	* @param charStream   The character stream.
	* @param encoding     The original encoding of the byte stream
	*                     used by the reader, if known.
	*/
	@:overload public function new(publicId : String, systemId : String, baseSystemId : String, charStream : java.io.Reader, encoding : String) : Void;
	
	/**
	* Sets the public identifier.
	*
	* @param publicId The new public identifier.
	*/
	@:overload public function setPublicId(publicId : String) : Void;
	
	/** Returns the public identifier. */
	@:overload public function getPublicId() : String;
	
	/**
	* Sets the system identifier.
	*
	* @param systemId The new system identifier.
	*/
	@:overload public function setSystemId(systemId : String) : Void;
	
	/** Returns the system identifier. */
	@:overload public function getSystemId() : String;
	
	/**
	* Sets the base system identifier.
	*
	* @param baseSystemId The new base system identifier.
	*/
	@:overload public function setBaseSystemId(baseSystemId : String) : Void;
	
	/** Returns the base system identifier. */
	@:overload public function getBaseSystemId() : String;
	
	/**
	* Sets the byte stream. If the byte stream is not already opened
	* when this object is instantiated, then the code that opens the
	* stream should also set the byte stream on this object. Also, if
	* the encoding is auto-detected, then the encoding should also be
	* set on this object.
	*
	* @param byteStream The new byte stream.
	*/
	@:overload public function setByteStream(byteStream : java.io.InputStream) : Void;
	
	/** Returns the byte stream. */
	@:overload public function getByteStream() : java.io.InputStream;
	
	/**
	* Sets the character stream. If the character stream is not already
	* opened when this object is instantiated, then the code that opens
	* the stream should also set the character stream on this object.
	* Also, the encoding of the byte stream used by the reader should
	* also be set on this object, if known.
	*
	* @param charStream The new character stream.
	*
	* @see #setEncoding
	*/
	@:overload public function setCharacterStream(charStream : java.io.Reader) : Void;
	
	/** Returns the character stream. */
	@:overload public function getCharacterStream() : java.io.Reader;
	
	/**
	* Sets the encoding of the stream.
	*
	* @param encoding The new encoding.
	*/
	@:overload public function setEncoding(encoding : String) : Void;
	
	/** Returns the encoding of the stream, or null if not known. */
	@:overload public function getEncoding() : String;
	
	
}
