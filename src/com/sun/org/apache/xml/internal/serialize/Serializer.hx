package com.sun.org.apache.xml.internal.serialize;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
extern interface Serializer
{
	/**
	* Specifies an output stream to which the document should be
	* serialized. This method should not be called while the
	* serializer is in the process of serializing a document.
	*/
	@:overload public function setOutputByteStream(output : java.io.OutputStream) : Void;
	
	/**
	* Specifies a writer to which the document should be serialized.
	* This method should not be called while the serializer is in
	* the process of serializing a document.
	*/
	@:overload public function setOutputCharStream(output : java.io.Writer) : Void;
	
	/**
	* Specifies an output format for this serializer. It the
	* serializer has already been associated with an output format,
	* it will switch to the new format. This method should not be
	* called while the serializer is in the process of serializing
	* a document.
	*
	* @param format The output format to use
	*/
	@:overload public function setOutputFormat(format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : Void;
	
	/**
	* Return a {@link DocumentHandler} interface into this serializer.
	* If the serializer does not support the {@link DocumentHandler}
	* interface, it should return null.
	*/
	@:overload public function asDocumentHandler() : org.xml.sax.DocumentHandler;
	
	/**
	* Return a {@link ContentHandler} interface into this serializer.
	* If the serializer does not support the {@link ContentHandler}
	* interface, it should return null.
	*/
	@:overload public function asContentHandler() : org.xml.sax.ContentHandler;
	
	/**
	* Return a {@link DOMSerializer} interface into this serializer.
	* If the serializer does not support the {@link DOMSerializer}
	* interface, it should return null.
	*/
	@:overload public function asDOMSerializer() : com.sun.org.apache.xml.internal.serialize.DOMSerializer;
	
	
}
