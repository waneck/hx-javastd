package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
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
extern class SAXInputSource extends com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource
{
	@:overload public function new() : Void;
	
	@:overload public function new(inputSource : org.xml.sax.InputSource) : Void;
	
	@:overload public function new(reader : org.xml.sax.XMLReader, inputSource : org.xml.sax.InputSource) : Void;
	
	@:overload public function setXMLReader(reader : org.xml.sax.XMLReader) : Void;
	
	@:overload public function getXMLReader() : org.xml.sax.XMLReader;
	
	@:overload public function setInputSource(inputSource : org.xml.sax.InputSource) : Void;
	
	@:overload public function getInputSource() : org.xml.sax.InputSource;
	
	/**
	* Sets the public identifier.
	*
	* @param publicId The new public identifier.
	*/
	@:overload override public function setPublicId(publicId : String) : Void;
	
	/**
	* Sets the system identifier.
	*
	* @param systemId The new system identifier.
	*/
	@:overload override public function setSystemId(systemId : String) : Void;
	
	/**
	* Sets the byte stream. If the byte stream is not already opened
	* when this object is instantiated, then the code that opens the
	* stream should also set the byte stream on this object. Also, if
	* the encoding is auto-detected, then the encoding should also be
	* set on this object.
	*
	* @param byteStream The new byte stream.
	*/
	@:overload override public function setByteStream(byteStream : java.io.InputStream) : Void;
	
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
	@:overload override public function setCharacterStream(charStream : java.io.Reader) : Void;
	
	/**
	* Sets the encoding of the stream.
	*
	* @param encoding The new encoding.
	*/
	@:overload override public function setEncoding(encoding : String) : Void;
	
	
}
