package com.sun.xml.internal.stream.buffer;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLStreamBuffer
{
	/**
	* In scope namespaces on a fragment
	*/
	@:protected private var _inscopeNamespaces : java.util.Map<String, String>;
	
	/**
	* True if the buffer was created from a parser that interns Strings
	* as specified by the SAX interning features
	*/
	@:protected private var _hasInternedStrings : Bool;
	
	/**
	* Fragmented array to hold structural information
	*/
	@:protected private var _structure : com.sun.xml.internal.stream.buffer.FragmentedArray<java.NativeArray<java.StdTypes.Int8>>;
	
	@:protected private var _structurePtr : Int;
	
	/**
	* Fragmented array to hold structural information as strings
	*/
	@:protected private var _structureStrings : com.sun.xml.internal.stream.buffer.FragmentedArray<java.NativeArray<String>>;
	
	@:protected private var _structureStringsPtr : Int;
	
	/**
	* Fragmented array to hold content information in a shared char[]
	*/
	@:protected private var _contentCharactersBuffer : com.sun.xml.internal.stream.buffer.FragmentedArray<java.NativeArray<java.StdTypes.Char16>>;
	
	@:protected private var _contentCharactersBufferPtr : Int;
	
	/**
	* Fragmented array to hold content information as objects
	*/
	@:protected private var _contentObjects : com.sun.xml.internal.stream.buffer.FragmentedArray<java.NativeArray<Dynamic>>;
	
	@:protected private var _contentObjectsPtr : Int;
	
	/**
	* Number of trees in this stream buffer.
	*
	* <p>
	* 1 if there's only one, which is the normal case. When the buffer
	* holds a forest, this value is greater than 1. If the buffer is empty, then 0.
	*
	* <p>
	* Notice that we cannot infer this value by looking at the {@link FragmentedArray}s,
	* because this {@link XMLStreamBuffer} maybe a view of a portion of another bigger
	* {@link XMLStreamBuffer}.
	*/
	@:protected private var treeCount : Int;
	
	/**
	* The system identifier associated with the buffer
	*/
	@:protected private var systemId : String;
	
	/**
	* Is the buffer created by creator.
	*
	* @return
	* <code>true</code> if the buffer has been created.
	*/
	@:overload @:public @:final public function isCreated() : Bool;
	
	/**
	* Is the buffer a representation of a fragment of an XML infoset.
	*
	* @return
	* <code>true</code> if the buffer is a representation of a fragment
	* of an XML infoset.
	*/
	@:overload @:public @:final public function isFragment() : Bool;
	
	/**
	* Is the buffer a representation of a fragment of an XML infoset
	* that is an element (and its contents).
	*
	* @return
	* <code>true</code> if the buffer a representation
	* of a fragment of an XML infoset that is an element (and its contents).
	*/
	@:overload @:public @:final public function isElementFragment() : Bool;
	
	/**
	* Returns ture if this buffer represents a forest, which is
	* are more than one adjacent XML elements.
	*/
	@:overload @:public @:final public function isForest() : Bool;
	
	/**
	* Get the system identifier associated with the buffer.
	* @return The system identifier.
	*/
	@:overload @:public @:final public function getSystemId() : String;
	
	/**
	* Get the in-scope namespaces.
	*
	* <p>
	*
	* The in-scope namespaces will be empty if the buffer is not a
	* fragment ({@link #isFragment} returns <code>false</code>).
	*
	* The in-scope namespace will correspond to the in-scope namespaces of the
	* fragment if the buffer is a fragment ({@link #isFragment}
	* returns <code>false</code>). The in-scope namespaces will include any
	* namespace delcarations on an element if the fragment correspond to that
	* of an element ({@link #isElementFragment} returns <code>false</code>).
	*
	* @return
	*      The in-scope namespaces of the XMLStreamBuffer.
	*      Prefix to namespace URI.
	*/
	@:overload @:public @:final public function getInscopeNamespaces() : java.util.Map<String, String>;
	
	/**
	* Has the buffer been created using Strings that have been interned
	* for certain properties of information items. The Strings that are interned
	* are those that correspond to Strings that are specified by the SAX API
	* "string-interning" property
	* (see <a href="http://java.sun.com/j2se/1.5.0/docs/api/org/xml/sax/package-summary.html#package_description">here</a>).
	*
	* <p>
	* An buffer may have been created, for example, from an XML document parsed
	* using the Xerces SAX parser. The Xerces SAX parser will have interned certain Strings
	* according to the SAX string interning property.
	* This method enables processors to avoid the duplication of
	* String interning if such a feature is required by a procesing application and the
	* buffer being processed was created using Strings that have been interned.
	*
	* @return
	* <code>true</code> if the buffer has been created using Strings that
	* have been interned.
	*/
	@:overload @:public @:final public function hasInternedStrings() : Bool;
	
	/**
	* Read the contents of the buffer as a {@link XMLStreamReader}.
	*
	* @return
	* A an instance of a {@link StreamReaderBufferProcessor}. Always non-null.
	*/
	@:overload @:public @:final public function readAsXMLStreamReader() : com.sun.xml.internal.stream.buffer.stax.StreamReaderBufferProcessor;
	
	/**
	* Write the contents of the buffer to an XMLStreamWriter.
	*
	* <p>
	* The XMLStreamBuffer will be written out to the XMLStreamWriter using
	* an instance of {@link StreamWriterBufferProcessor}.
	*
	* @param writer
	*      A XMLStreamWriter to write to.
	* @param writeAsFragment
	*      If true, {@link XMLStreamWriter} will not receive {@link XMLStreamWriter#writeStartDocument()}
	*      nor {@link XMLStreamWriter#writeEndDocument()}. This is desirable behavior when
	*      you are writing the contents of a buffer into a bigger document.
	*/
	@:overload @:public @:final public function writeToXMLStreamWriter(writer : javax.xml.stream.XMLStreamWriter, writeAsFragment : Bool) : Void;
	
	/**
	* @deprecated
	*      Use {@link #writeToXMLStreamWriter(XMLStreamWriter, boolean)}
	*/
	@:overload @:public @:final public function writeToXMLStreamWriter(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Reads the contents of the buffer from a {@link XMLReader}.
	*
	* @return
	* A an instance of a {@link SAXBufferProcessor}.
	* @deprecated
	*      Use {@link #readAsXMLReader(boolean)}
	*/
	@:overload @:public @:final public function readAsXMLReader() : com.sun.xml.internal.stream.buffer.sax.SAXBufferProcessor;
	
	/**
	* Reads the contents of the buffer from a {@link XMLReader}.
	*
	* @param produceFragmentEvent
	*      True to generate fragment SAX events without start/endDocument.
	*      False to generate a full document SAX events.
	* @return
	*      A an instance of a {@link SAXBufferProcessor}.
	*/
	@:overload @:public @:final public function readAsXMLReader(produceFragmentEvent : Bool) : com.sun.xml.internal.stream.buffer.sax.SAXBufferProcessor;
	
	/**
	* Write the contents of the buffer to a {@link ContentHandler}.
	*
	* <p>
	* If the <code>handler</code> is also an instance of other SAX-based
	* handlers, such as {@link LexicalHandler}, than corresponding SAX events
	* will be reported to those handlers.
	*
	* @param handler
	*      The ContentHandler to receive SAX events.
	* @param produceFragmentEvent
	*      True to generate fragment SAX events without start/endDocument.
	*      False to generate a full document SAX events.
	*
	* @throws SAXException
	*      if a parsing fails, or if {@link ContentHandler} throws a {@link SAXException}.
	*/
	@:overload @:public @:final public function writeTo(handler : org.xml.sax.ContentHandler, produceFragmentEvent : Bool) : Void;
	
	/**
	* @deprecated
	*      Use {@link #writeTo(ContentHandler,boolean)}
	*/
	@:overload @:public @:final public function writeTo(handler : org.xml.sax.ContentHandler) : Void;
	
	/**
	* Write the contents of the buffer to a {@link ContentHandler} with errors
	* report to a {@link ErrorHandler}.
	*
	* <p>
	* If the <code>handler</code> is also an instance of other SAX-based
	* handlers, such as {@link LexicalHandler}, than corresponding SAX events
	* will be reported to those handlers.
	*
	* @param handler
	* The ContentHandler to receive SAX events.
	* @param errorHandler
	* The ErrorHandler to receive error events.
	*
	* @throws SAXException
	*      if a parsing fails and {@link ErrorHandler} throws a {@link SAXException},
	*      or if {@link ContentHandler} throws a {@link SAXException}.
	*/
	@:overload @:public @:final public function writeTo(handler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler, produceFragmentEvent : Bool) : Void;
	
	@:overload @:public @:final public function writeTo(handler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Writes out the contents of this buffer as DOM node and append that to the given node.
	*
	* Faster implementation would be desirable.
	*
	* @return
	*      The newly added child node.
	*/
	@:overload @:public @:final public function writeTo(n : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/**
	* Create a new buffer from a XMLStreamReader.
	*
	* @param reader
	* A XMLStreamReader to read from to create.
	* @return XMLStreamBuffer the created buffer
	* @see MutableXMLStreamBuffer#createFromXMLStreamReader(XMLStreamReader)
	*/
	@:overload @:public @:static public static function createNewBufferFromXMLStreamReader(reader : javax.xml.stream.XMLStreamReader) : com.sun.xml.internal.stream.buffer.XMLStreamBuffer;
	
	/**
	* Create a new buffer from a {@link XMLReader} and {@link InputStream}.
	*
	* @param reader
	* The {@link XMLReader} to use for parsing.
	* @param in
	* The {@link InputStream} to be parsed.
	* @return XMLStreamBuffer the created buffer
	* @see MutableXMLStreamBuffer#createFromXMLReader(XMLReader, InputStream)
	*/
	@:overload @:public @:static public static function createNewBufferFromXMLReader(reader : org.xml.sax.XMLReader, _in : java.io.InputStream) : com.sun.xml.internal.stream.buffer.XMLStreamBuffer;
	
	/**
	* Create a new buffer from a {@link XMLReader} and {@link InputStream}.
	*
	* @param reader
	* The {@link XMLReader} to use for parsing.
	* @param in
	* The {@link InputStream} to be parsed.
	* @param systemId
	* The system ID of the input stream.
	* @return XMLStreamBuffer the created buffer
	* @see MutableXMLStreamBuffer#createFromXMLReader(XMLReader, InputStream, String)
	*/
	@:overload @:public @:static public static function createNewBufferFromXMLReader(reader : org.xml.sax.XMLReader, _in : java.io.InputStream, systemId : String) : com.sun.xml.internal.stream.buffer.XMLStreamBuffer;
	
	@:overload @:protected @:final private function getStructure() : com.sun.xml.internal.stream.buffer.FragmentedArray<java.NativeArray<java.StdTypes.Int8>>;
	
	@:overload @:protected @:final private function getStructurePtr() : Int;
	
	@:overload @:protected @:final private function getStructureStrings() : com.sun.xml.internal.stream.buffer.FragmentedArray<java.NativeArray<String>>;
	
	@:overload @:protected @:final private function getStructureStringsPtr() : Int;
	
	@:overload @:protected @:final private function getContentCharactersBuffer() : com.sun.xml.internal.stream.buffer.FragmentedArray<java.NativeArray<java.StdTypes.Char16>>;
	
	@:overload @:protected @:final private function getContentCharactersBufferPtr() : Int;
	
	@:overload @:protected @:final private function getContentObjects() : com.sun.xml.internal.stream.buffer.FragmentedArray<java.NativeArray<Dynamic>>;
	
	@:overload @:protected @:final private function getContentObjectsPtr() : Int;
	
	
}
