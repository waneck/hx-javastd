package com.sun.org.apache.xml.internal.serializer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: Serializer.java,v 1.2.4.1 2005/09/15 08:15:22 suresh_emailid Exp $
*/
extern interface Serializer
{
	/**
	* Specifies an output stream to which the document should be
	* serialized. This method should not be called while the
	* serializer is in the process of serializing a document.
	* <p>
	* The encoding specified in the output {@link Properties} is used, or
	* if no encoding was specified, the default for the selected
	* output method.
	* <p>
	* Only one of setWriter() or setOutputStream() should be called.
	*
	* @param output The output stream
	*/
	@:overload public function setOutputStream(output : java.io.OutputStream) : Void;
	
	/**
	* Get the output stream where the events will be serialized to.
	*
	* @return reference to the result stream, or null if only a writer was
	* set.
	*/
	@:overload public function getOutputStream() : java.io.OutputStream;
	
	/**
	* Specifies a writer to which the document should be serialized.
	* This method should not be called while the serializer is in
	* the process of serializing a document.
	* <p>
	* The encoding specified for the output {@link Properties} must be
	* identical to the output format used with the writer.
	*
	* <p>
	* Only one of setWriter() or setOutputStream() should be called.
	*
	* @param writer The output writer stream
	*/
	@:overload public function setWriter(writer : java.io.Writer) : Void;
	
	/**
	* Get the character stream where the events will be serialized to.
	*
	* @return Reference to the result Writer, or null.
	*/
	@:overload public function getWriter() : java.io.Writer;
	
	/**
	* Specifies an output format for this serializer. It the
	* serializer has already been associated with an output format,
	* it will switch to the new format. This method should not be
	* called while the serializer is in the process of serializing
	* a document.
	* <p>
	* The standard property keys supported are: "method", "version", "encoding",
	* "omit-xml-declaration", "standalone", doctype-public",
	* "doctype-system", "cdata-section-elements", "indent", "media-type".
	* These property keys and their values are described in the XSLT recommendation,
	* see {@link <a href="http://www.w3.org/TR/1999/REC-xslt-19991116"> XSLT 1.0 recommendation</a>}
	* <p>
	* The non-standard property keys supported are defined in {@link OutputPropertiesFactory}.
	*
	* <p>
	* This method can be called multiple times before a document is serialized. Each
	* time it is called more, or over-riding property values, can be specified. One
	* property value that can not be changed is that of the "method" property key.
	* <p>
	* The value of the "cdata-section-elements" property key is a whitespace
	* separated list of elements. If the element is in a namespace then
	* value is passed in this format: {uri}localName
	* <p>
	* If the "cdata-section-elements" key is specified on multiple calls
	* to this method the set of elements specified in the value
	* is not replaced from one call to the
	* next, but it is cumulative across the calls.
	*
	* @param format The output format to use, as a set of key/value pairs.
	*/
	@:overload public function setOutputFormat(format : java.util.Properties) : Void;
	
	/**
	* Returns the output format properties for this serializer.
	*
	* @return The output format key/value pairs in use.
	*/
	@:overload public function getOutputFormat() : java.util.Properties;
	
	/**
	* Return a {@link ContentHandler} interface to provide SAX input to.
	* Through the returned object the document to be serailized,
	* as a series of SAX events, can be provided to the serialzier.
	* If the serializer does not support the {@link ContentHandler}
	* interface, it will return null.
	* <p>
	* In principle only one of asDOMSerializer() or asContentHander()
	* should be called.
	*
	* @return A {@link ContentHandler} interface into this serializer,
	*  or null if the serializer is not SAX 2 capable
	* @throws IOException An I/O exception occured
	*/
	@:overload public function asContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Return a {@link DOMSerializer} interface into this serializer.
	* Through the returned object the document to be serialized,
	* a DOM, can be provided to the serializer.
	* If the serializer does not support the {@link DOMSerializer}
	* interface, it should return null.
	* <p>
	* In principle only one of asDOMSerializer() or asContentHander()
	* should be called.
	*
	* @return A {@link DOMSerializer} interface into this serializer,
	*  or null if the serializer is not DOM capable
	* @throws IOException An I/O exception occured
	*/
	@:overload public function asDOMSerializer() : com.sun.org.apache.xml.internal.serializer.DOMSerializer;
	
	/**
	* This method resets the serializer.
	* If this method returns true, the
	* serializer may be used for subsequent serialization of new
	* documents. It is possible to change the output format and
	* output stream prior to serializing, or to reuse the existing
	* output format and output stream or writer.
	*
	* @return True if serializer has been reset and can be reused
	*/
	@:overload public function reset() : Bool;
	
	
}
