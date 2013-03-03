package com.sun.org.apache.xerces.internal.xinclude;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2005 The Apache Software Foundation.
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
extern class XIncludeTextReader
{
	/**
	* Construct the XIncludeReader using the XMLInputSource and XIncludeHandler.
	*
	* @param source The XMLInputSource to use.
	* @param handler The XIncludeHandler to use.
	* @param bufferSize The size of this text reader's buffer.
	*/
	@:overload @:public public function new(source : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource, handler : com.sun.org.apache.xerces.internal.xinclude.XIncludeHandler, bufferSize : Int) : Void;
	
	/**
	* Sets the XMLErrorReporter used for reporting errors while
	* reading the text include.
	*
	* @param errorReporter the XMLErrorReporter to be used for
	* reporting errors.
	*/
	@:overload @:public public function setErrorReporter(errorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter) : Void;
	
	/**
	* Return the Reader for given XMLInputSource.
	*
	* @param source The XMLInputSource to use.
	*/
	@:overload @:protected private function getReader(source : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : java.io.Reader;
	
	/**
	* XMLEntityManager cares about endian-ness, since it creates its own optimized
	* readers. Since we're just using generic Java readers for now, we're not caring
	* about endian-ness.  If this changes, even more code needs to be copied from
	* XMLEntity manager. -- PJM
	*/
	@:overload @:protected private function getEncodingName(stream : java.io.InputStream) : String;
	
	/**
	* Removes the byte order mark from the stream, if
	* it exists and returns the encoding name.
	*
	* @param stream
	* @param encoding
	* @throws IOException
	*/
	@:overload @:protected private function consumeBOM(stream : java.io.InputStream, encoding : String) : String;
	
	/**
	* REVISIT: This code is taken from com.sun.org.apache.xerces.internal.impl.XMLEntityManager.
	*          Is there any way we can share the code, without having it implemented twice?
	*          I think we should make it public and static in XMLEntityManager. --PJM
	*
	* Returns the IANA encoding name that is auto-detected from
	* the bytes specified, with the endian-ness of that encoding where appropriate.
	*
	* @param b4    The first four bytes of the input.
	* @return the encoding name, or null if no encoding could be detected
	*/
	@:overload @:protected private function getEncodingName(b4 : java.NativeArray<java.StdTypes.Int8>) : String;
	
	/**
	* Read the input stream as text, and pass the text on to the XIncludeHandler
	* using calls to characters().  This will read all of the text it can from the
	* resource.
	*
	* @throws IOException
	*/
	@:overload @:public public function parse() : Void;
	
	/**
	* Sets the input source on this text reader.
	*
	* @param source The XMLInputSource to use.
	*/
	@:overload @:public public function setInputSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : Void;
	
	/**
	* Closes the stream.  Call this after parse(), or when there is no longer any need
	* for this object.
	*
	* @throws IOException
	*/
	@:overload @:public public function close() : Void;
	
	/**
	* Returns true if the specified character is a valid XML character
	* as per the rules of XML 1.0.
	*
	* @param ch The character to check.
	*/
	@:overload @:protected private function isValid(ch : Int) : Bool;
	
	/**
	* Sets the buffer size property for the reader which decides the chunk sizes that are parsed
	* by the reader at a time and passed to the handler
	*
	* @param bufferSize The size of the buffer desired
	*/
	@:overload @:protected private function setBufferSize(bufferSize : Int) : Void;
	
	
}
