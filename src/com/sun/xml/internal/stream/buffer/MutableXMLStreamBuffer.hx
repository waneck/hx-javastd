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
extern class MutableXMLStreamBuffer extends com.sun.xml.internal.stream.buffer.XMLStreamBuffer
{
	/**
	* The default array size for the arrays used in internal representation
	* of the XML infoset.
	*/
	public static var DEFAULT_ARRAY_SIZE(default, null) : Int;
	
	/**
	* Create a new MutableXMLStreamBuffer using the
	* {@link MutableXMLStreamBuffer#DEFAULT_ARRAY_SIZE}.
	*/
	@:overload public function new() : Void;
	
	/**
	* Set the system identifier for this buffer.
	* @param systemId The system identifier.
	*/
	@:overload public function setSystemId(systemId : String) : Void;
	
	/**
	* Create a new MutableXMLStreamBuffer.
	*
	* @param size
	* The size of the arrays used in the internal representation
	* of the XML infoset.
	* @throws NegativeArraySizeException
	* If the <code>size</code> argument is less than <code>0</code>.
	*/
	@:overload public function new(size : Int) : Void;
	
	/**
	* Create contents of a buffer from a XMLStreamReader.
	*
	* <p>
	* The MutableXMLStreamBuffer is reset (see {@link #reset}) before creation.
	*
	* <p>
	* The MutableXMLStreamBuffer is created by consuming the events on the XMLStreamReader using
	* an instance of {@link StreamReaderBufferCreator}.
	*
	* @param reader
	* A XMLStreamReader to read from to create.
	*/
	@:overload public function createFromXMLStreamReader(reader : javax.xml.stream.XMLStreamReader) : Void;
	
	/**
	* Create contents of a buffer from a XMLStreamWriter.
	*
	* <p>
	* The MutableXMLStreamBuffer is reset (see {@link #reset}) before creation.
	*
	* <p>
	* The MutableXMLStreamBuffer is created by consuming events on a XMLStreamWriter using
	* an instance of {@link StreamWriterBufferCreator}.
	*/
	@:overload public function createFromXMLStreamWriter() : javax.xml.stream.XMLStreamWriter;
	
	/**
	* Create contents of a buffer from a {@link SAXBufferCreator}.
	*
	* <p>
	* The MutableXMLStreamBuffer is reset (see {@link #reset}) before creation.
	*
	* <p>
	* The MutableXMLStreamBuffer is created by consuming events from a {@link ContentHandler} using
	* an instance of {@link SAXBufferCreator}.
	*
	* @return The {@link SAXBufferCreator} to create from.
	*/
	@:overload public function createFromSAXBufferCreator() : com.sun.xml.internal.stream.buffer.sax.SAXBufferCreator;
	
	/**
	* Create contents of a buffer from a {@link XMLReader} and {@link InputStream}.
	*
	* <p>
	* The MutableXMLStreamBuffer is reset (see {@link #reset}) before creation.
	*
	* <p>
	* The MutableXMLStreamBuffer is created by using an instance of {@link SAXBufferCreator}
	* and registering associated handlers on the {@link XMLReader}.
	*
	* @param reader
	* The {@link XMLReader} to use for parsing.
	* @param in
	* The {@link InputStream} to be parsed.
	*/
	@:overload public function createFromXMLReader(reader : org.xml.sax.XMLReader, _in : java.io.InputStream) : Void;
	
	/**
	* Create contents of a buffer from a {@link XMLReader} and {@link InputStream}.
	*
	* <p>
	* The MutableXMLStreamBuffer is reset (see {@link #reset}) before creation.
	*
	* <p>
	* The MutableXMLStreamBuffer is created by using an instance of {@link SAXBufferCreator}
	* and registering associated handlers on the {@link XMLReader}.
	*
	* @param reader
	* The {@link XMLReader} to use for parsing.
	* @param in
	* The {@link InputStream} to be parsed.
	* @param systemId
	* The system ID of the input stream.
	*/
	@:overload public function createFromXMLReader(reader : org.xml.sax.XMLReader, _in : java.io.InputStream, systemId : String) : Void;
	
	/**
	* Reset the MutableXMLStreamBuffer.
	*
	* <p>
	* This method will reset the MutableXMLStreamBuffer to a state of being "uncreated"
	* similar to the state of a newly instantiated MutableXMLStreamBuffer.
	*
	* <p>
	* As many Objects as possible will be retained for reuse in future creation.
	*/
	@:overload public function reset() : Void;
	
	@:overload private function setHasInternedStrings(hasInternedStrings : Bool) : Void;
	
	
}
