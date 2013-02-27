package javax.xml.transform.stream;
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
extern class StreamSource implements javax.xml.transform.Source
{
	/** If {@link javax.xml.transform.TransformerFactory#getFeature}
	* returns true when passed this value as an argument,
	* the Transformer supports Source input of this type.
	*/
	public static var FEATURE(default, null) : String;
	
	/**
	* <p>Zero-argument default constructor.  If this constructor is used, and
	* no Stream source is set using
	* {@link #setInputStream(java.io.InputStream inputStream)} or
	* {@link #setReader(java.io.Reader reader)}, then the
	* <code>Transformer</code> will
	* create an empty source {@link java.io.InputStream} using
	* {@link java.io.InputStream#InputStream() new InputStream()}.</p>
	*
	* @see javax.xml.transform.Transformer#transform(Source xmlSource, Result outputTarget)
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a StreamSource from a byte stream.  Normally,
	* a stream should be used rather than a reader, so
	* the XML parser can resolve character encoding specified
	* by the XML declaration.
	*
	* <p>If this constructor is used to process a stylesheet, normally
	* setSystemId should also be called, so that relative URI references
	* can be resolved.</p>
	*
	* @param inputStream A valid InputStream reference to an XML stream.
	*/
	@:overload public function new(inputStream : java.io.InputStream) : Void;
	
	/**
	* Construct a StreamSource from a byte stream.  Normally,
	* a stream should be used rather than a reader, so that
	* the XML parser can resolve character encoding specified
	* by the XML declaration.
	*
	* <p>This constructor allows the systemID to be set in addition
	* to the input stream, which allows relative URIs
	* to be processed.</p>
	*
	* @param inputStream A valid InputStream reference to an XML stream.
	* @param systemId Must be a String that conforms to the URI syntax.
	*/
	@:overload public function new(inputStream : java.io.InputStream, systemId : String) : Void;
	
	/**
	* Construct a StreamSource from a character reader.  Normally,
	* a stream should be used rather than a reader, so that
	* the XML parser can resolve character encoding specified
	* by the XML declaration.  However, in many cases the encoding
	* of the input stream is already resolved, as in the case of
	* reading XML from a StringReader.
	*
	* @param reader A valid Reader reference to an XML character stream.
	*/
	@:overload public function new(reader : java.io.Reader) : Void;
	
	/**
	* Construct a StreamSource from a character reader.  Normally,
	* a stream should be used rather than a reader, so that
	* the XML parser may resolve character encoding specified
	* by the XML declaration.  However, in many cases the encoding
	* of the input stream is already resolved, as in the case of
	* reading XML from a StringReader.
	*
	* @param reader A valid Reader reference to an XML character stream.
	* @param systemId Must be a String that conforms to the URI syntax.
	*/
	@:overload public function new(reader : java.io.Reader, systemId : String) : Void;
	
	/**
	* Construct a StreamSource from a URL.
	*
	* @param systemId Must be a String that conforms to the URI syntax.
	*/
	@:overload public function new(systemId : String) : Void;
	
	/**
	* Construct a StreamSource from a File.
	*
	* @param f Must a non-null File reference.
	*/
	@:overload public function new(f : java.io.File) : Void;
	
	/**
	* Set the byte stream to be used as input.  Normally,
	* a stream should be used rather than a reader, so that
	* the XML parser can resolve character encoding specified
	* by the XML declaration.
	*
	* <p>If this Source object is used to process a stylesheet, normally
	* setSystemId should also be called, so that relative URL references
	* can be resolved.</p>
	*
	* @param inputStream A valid InputStream reference to an XML stream.
	*/
	@:overload public function setInputStream(inputStream : java.io.InputStream) : Void;
	
	/**
	* Get the byte stream that was set with setByteStream.
	*
	* @return The byte stream that was set with setByteStream, or null
	* if setByteStream or the ByteStream constructor was not called.
	*/
	@:overload public function getInputStream() : java.io.InputStream;
	
	/**
	* Set the input to be a character reader.  Normally,
	* a stream should be used rather than a reader, so that
	* the XML parser can resolve character encoding specified
	* by the XML declaration.  However, in many cases the encoding
	* of the input stream is already resolved, as in the case of
	* reading XML from a StringReader.
	*
	* @param reader A valid Reader reference to an XML CharacterStream.
	*/
	@:overload public function setReader(reader : java.io.Reader) : Void;
	
	/**
	* Get the character stream that was set with setReader.
	*
	* @return The character stream that was set with setReader, or null
	* if setReader or the Reader constructor was not called.
	*/
	@:overload public function getReader() : java.io.Reader;
	
	/**
	* Set the public identifier for this Source.
	*
	* <p>The public identifier is always optional: if the application
	* writer includes one, it will be provided as part of the
	* location information.</p>
	*
	* @param publicId The public identifier as a string.
	*/
	@:overload public function setPublicId(publicId : String) : Void;
	
	/**
	* Get the public identifier that was set with setPublicId.
	*
	* @return The public identifier that was set with setPublicId, or null
	* if setPublicId was not called.
	*/
	@:overload public function getPublicId() : String;
	
	/**
	* Set the system identifier for this Source.
	*
	* <p>The system identifier is optional if there is a byte stream
	* or a character stream, but it is still useful to provide one,
	* since the application can use it to resolve relative URIs
	* and can include it in error messages and warnings (the parser
	* will attempt to open a connection to the URI only if
	* there is no byte stream or character stream specified).</p>
	*
	* @param systemId The system identifier as a URL string.
	*/
	@:overload public function setSystemId(systemId : String) : Void;
	
	/**
	* Get the system identifier that was set with setSystemId.
	*
	* @return The system identifier that was set with setSystemId, or null
	* if setSystemId was not called.
	*/
	@:overload public function getSystemId() : String;
	
	/**
	* Set the system ID from a File reference.
	*
	* @param f Must a non-null File reference.
	*/
	@:overload public function setSystemId(f : java.io.File) : Void;
	
	
}
