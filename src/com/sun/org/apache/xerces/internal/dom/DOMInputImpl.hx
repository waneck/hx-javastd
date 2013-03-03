package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern class DOMInputImpl implements org.w3c.dom.ls.LSInput
{
	/**
	* This Class <code>DOMInputImpl</code> represents a single input source for an XML entity.
	* <p> This Class allows an application to encapsulate information about
	* an input source in a single object, which may include a public
	* identifier, a system identifier, a byte stream (possibly with a specified
	* encoding), and/or a character stream.
	* <p> The exact definitions of a byte stream and a character stream are
	* binding dependent.
	* <p> There are two places that the application will deliver this input
	* source to the parser: as the argument to the <code>parse</code> method,
	* or as the return value of the <code>DOMResourceResolver.resolveEntity</code>
	*  method.
	* <p> The <code>DOMParser</code> will use the <code>LSInput</code>
	* object to determine how to read XML input. If there is a character stream
	* available, the parser will read that stream directly; if not, the parser
	* will use a byte stream, if available; if neither a character stream nor a
	* byte stream is available, the parser will attempt to open a URI
	* connection to the resource identified by the system identifier.
	* <p> An <code>LSInput</code> object belongs to the application: the
	* parser shall never modify it in any way (it may modify a copy if
	* necessary).  Eventhough all attributes in this interface are writable the
	* DOM implementation is expected to never mutate a LSInput.
	* <p>See also the <a href='http://www.w3.org/TR/2001/WD-DOM-Level-3-ASLS-20011025'>Document Object Model (DOM) Level 3 Abstract Schemas and Load
and Save Specification</a>.
	*
	* @xerces.internal
	*
	* @author Gopal Sharma, SUN Microsystems Inc.
	*/
	@:protected private var fPublicId : String;
	
	@:protected private var fSystemId : String;
	
	@:protected private var fBaseSystemId : String;
	
	@:protected private var fByteStream : java.io.InputStream;
	
	@:protected private var fCharStream : java.io.Reader;
	
	@:protected private var fData : String;
	
	@:protected private var fEncoding : String;
	
	@:protected private var fCertifiedText : Bool;
	
	/**
	* Default Constructor, constructs an input source
	*
	*
	*/
	@:overload @:public public function new() : Void;
	
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
	@:overload @:public public function new(publicId : String, systemId : String, baseSystemId : String) : Void;
	
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
	@:overload @:public public function new(publicId : String, systemId : String, baseSystemId : String, byteStream : java.io.InputStream, encoding : String) : Void;
	
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
	@:overload @:public public function new(publicId : String, systemId : String, baseSystemId : String, charStream : java.io.Reader, encoding : String) : Void;
	
	/**
	* Constructs an input source from a String.
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
	* @param data                 The String Data.
	* @param encoding     The original encoding of the byte stream
	*                     used by the reader, if known.
	*/
	@:overload @:public public function new(publicId : String, systemId : String, baseSystemId : String, data : String, encoding : String) : Void;
	
	/**
	* An attribute of a language-binding dependent type that represents a
	* stream of bytes.
	* <br>The parser will ignore this if there is also a character stream
	* specified, but it will use a byte stream in preference to opening a
	* URI connection itself.
	* <br>If the application knows the character encoding of the byte stream,
	* it should set the encoding property. Setting the encoding in this way
	* will override any encoding specified in the XML declaration itself.
	*/
	@:overload @:public public function getByteStream() : java.io.InputStream;
	
	/**
	* An attribute of a language-binding dependent type that represents a
	* stream of bytes.
	* <br>The parser will ignore this if there is also a character stream
	* specified, but it will use a byte stream in preference to opening a
	* URI connection itself.
	* <br>If the application knows the character encoding of the byte stream,
	* it should set the encoding property. Setting the encoding in this way
	* will override any encoding specified in the XML declaration itself.
	*/
	@:overload @:public public function setByteStream(byteStream : java.io.InputStream) : Void;
	
	/**
	*  An attribute of a language-binding dependent type that represents a
	* stream of 16-bit units. Application must encode the stream using
	* UTF-16 (defined in  and Amendment 1 of ).
	* <br>If a character stream is specified, the parser will ignore any byte
	* stream and will not attempt to open a URI connection to the system
	* identifier.
	*/
	@:overload @:public public function getCharacterStream() : java.io.Reader;
	
	/**
	*  An attribute of a language-binding dependent type that represents a
	* stream of 16-bit units. Application must encode the stream using
	* UTF-16 (defined in  and Amendment 1 of ).
	* <br>If a character stream is specified, the parser will ignore any byte
	* stream and will not attempt to open a URI connection to the system
	* identifier.
	*/
	@:overload @:public public function setCharacterStream(characterStream : java.io.Reader) : Void;
	
	/**
	* A string attribute that represents a sequence of 16 bit units (utf-16
	* encoded characters).
	* <br>If string data is available in the input source, the parser will
	* ignore the character stream and the byte stream and will not attempt
	* to open a URI connection to the system identifier.
	*/
	@:overload @:public public function getStringData() : String;
	
	/**
	* A string attribute that represents a sequence of 16 bit units (utf-16
	* encoded characters).
	* <br>If string data is available in the input source, the parser will
	* ignore the character stream and the byte stream and will not attempt
	* to open a URI connection to the system identifier.
	*/
	@:overload @:public public function setStringData(stringData : String) : Void;
	
	/**
	*  The character encoding, if known. The encoding must be a string
	* acceptable for an XML encoding declaration ( section 4.3.3 "Character
	* Encoding in Entities").
	* <br>This attribute has no effect when the application provides a
	* character stream. For other sources of input, an encoding specified
	* by means of this attribute will override any encoding specified in
	* the XML claration or the Text Declaration, or an encoding obtained
	* from a higher level protocol, such as HTTP .
	*/
	@:overload @:public public function getEncoding() : String;
	
	/**
	*  The character encoding, if known. The encoding must be a string
	* acceptable for an XML encoding declaration ( section 4.3.3 "Character
	* Encoding in Entities").
	* <br>This attribute has no effect when the application provides a
	* character stream. For other sources of input, an encoding specified
	* by means of this attribute will override any encoding specified in
	* the XML claration or the Text Declaration, or an encoding obtained
	* from a higher level protocol, such as HTTP .
	*/
	@:overload @:public public function setEncoding(encoding : String) : Void;
	
	/**
	* The public identifier for this input source. The public identifier is
	* always optional: if the application writer includes one, it will be
	* provided as part of the location information.
	*/
	@:overload @:public public function getPublicId() : String;
	
	/**
	* The public identifier for this input source. The public identifier is
	* always optional: if the application writer includes one, it will be
	* provided as part of the location information.
	*/
	@:overload @:public public function setPublicId(publicId : String) : Void;
	
	/**
	* The system identifier, a URI reference , for this input source. The
	* system identifier is optional if there is a byte stream or a
	* character stream, but it is still useful to provide one, since the
	* application can use it to resolve relative URIs and can include it in
	* error messages and warnings (the parser will attempt to fetch the
	* ressource identifier by the URI reference only if there is no byte
	* stream or character stream specified).
	* <br>If the application knows the character encoding of the object
	* pointed to by the system identifier, it can register the encoding by
	* setting the encoding attribute.
	* <br>If the system ID is a relative URI reference (see section 5 in ),
	* the behavior is implementation dependent.
	*/
	@:overload @:public public function getSystemId() : String;
	
	/**
	* The system identifier, a URI reference , for this input source. The
	* system identifier is optional if there is a byte stream or a
	* character stream, but it is still useful to provide one, since the
	* application can use it to resolve relative URIs and can include it in
	* error messages and warnings (the parser will attempt to fetch the
	* ressource identifier by the URI reference only if there is no byte
	* stream or character stream specified).
	* <br>If the application knows the character encoding of the object
	* pointed to by the system identifier, it can register the encoding by
	* setting the encoding attribute.
	* <br>If the system ID is a relative URI reference (see section 5 in ),
	* the behavior is implementation dependent.
	*/
	@:overload @:public public function setSystemId(systemId : String) : Void;
	
	/**
	*  The base URI to be used (see section 5.1.4 in ) for resolving relative
	* URIs to absolute URIs. If the baseURI is itself a relative URI, the
	* behavior is implementation dependent.
	*/
	@:overload @:public public function getBaseURI() : String;
	
	/**
	*  The base URI to be used (see section 5.1.4 in ) for resolving relative
	* URIs to absolute URIs. If the baseURI is itself a relative URI, the
	* behavior is implementation dependent.
	*/
	@:overload @:public public function setBaseURI(baseURI : String) : Void;
	
	/**
	*  If set to true, assume that the input is certified (see section 2.13
	* in [<a href='http://www.w3.org/TR/2002/CR-xml11-20021015/'>XML 1.1</a>]) when
	* parsing [<a href='http://www.w3.org/TR/2002/CR-xml11-20021015/'>XML 1.1</a>].
	*/
	@:overload @:public public function getCertifiedText() : Bool;
	
	/**
	*  If set to true, assume that the input is certified (see section 2.13
	* in [<a href='http://www.w3.org/TR/2002/CR-xml11-20021015/'>XML 1.1</a>]) when
	* parsing [<a href='http://www.w3.org/TR/2002/CR-xml11-20021015/'>XML 1.1</a>].
	*/
	@:overload @:public public function setCertifiedText(certifiedText : Bool) : Void;
	
	
}
