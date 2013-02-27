package com.sun.xml.internal.stream;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLInputFactoryImpl extends javax.xml.stream.XMLInputFactory
{
	/** Creates a new instance of ZephryParserFactory */
	@:overload public function new() : Void;
	
	/**
	* @param inputstream
	* @throws XMLStreamException
	* @return
	*/
	@:overload override public function createXMLEventReader(inputstream : java.io.InputStream) : javax.xml.stream.XMLEventReader;
	
	@:overload override public function createXMLEventReader(reader : java.io.Reader) : javax.xml.stream.XMLEventReader;
	
	@:overload override public function createXMLEventReader(source : javax.xml.transform.Source) : javax.xml.stream.XMLEventReader;
	
	@:overload override public function createXMLEventReader(systemId : String, inputstream : java.io.InputStream) : javax.xml.stream.XMLEventReader;
	
	@:overload override public function createXMLEventReader(stream : java.io.InputStream, encoding : String) : javax.xml.stream.XMLEventReader;
	
	@:overload override public function createXMLEventReader(systemId : String, reader : java.io.Reader) : javax.xml.stream.XMLEventReader;
	
	/** Create a new XMLEventReader from an XMLStreamReader.  After being used
	* to construct the XMLEventReader instance returned from this method
	* the XMLStreamReader must not be used.
	* @param reader the XMLStreamReader to read from (may not be modified)
	* @return a new XMLEventReader
	* @throws XMLStreamException
	*/
	@:overload override public function createXMLEventReader(reader : javax.xml.stream.XMLStreamReader) : javax.xml.stream.XMLEventReader;
	
	@:overload override public function createXMLStreamReader(inputstream : java.io.InputStream) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function createXMLStreamReader(reader : java.io.Reader) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function createXMLStreamReader(systemId : String, reader : java.io.Reader) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function createXMLStreamReader(source : javax.xml.transform.Source) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function createXMLStreamReader(systemId : String, inputstream : java.io.InputStream) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function createXMLStreamReader(inputstream : java.io.InputStream, encoding : String) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function getEventAllocator() : javax.xml.stream.util.XMLEventAllocator;
	
	@:overload override public function getXMLReporter() : javax.xml.stream.XMLReporter;
	
	@:overload override public function getXMLResolver() : javax.xml.stream.XMLResolver;
	
	@:overload override public function setXMLReporter(xmlreporter : javax.xml.stream.XMLReporter) : Void;
	
	@:overload override public function setXMLResolver(xmlresolver : javax.xml.stream.XMLResolver) : Void;
	
	/** Create a filtered event reader that wraps the filter around the event reader
	* @param reader the event reader to wrap
	* @param filter the filter to apply to the event reader
	* @throws XMLStreamException
	*/
	@:overload override public function createFilteredReader(reader : javax.xml.stream.XMLEventReader, filter : javax.xml.stream.EventFilter) : javax.xml.stream.XMLEventReader;
	
	/** Create a filtered reader that wraps the filter around the reader
	* @param reader the reader to filter
	* @param filter the filter to apply to the reader
	* @throws XMLStreamException
	*/
	@:overload override public function createFilteredReader(reader : javax.xml.stream.XMLStreamReader, filter : javax.xml.stream.StreamFilter) : javax.xml.stream.XMLStreamReader;
	
	/** Get the value of a feature/property from the underlying implementation
	* @param name The name of the property (may not be null)
	* @return The value of the property
	* @throws IllegalArgumentException if the property is not supported
	*/
	@:overload override public function getProperty(name : String) : Dynamic;
	
	/** Query the set of fProperties that this factory supports.
	*
	* @param name The name of the property (may not be null)
	* @return true if the property is supported and false otherwise
	*/
	@:overload override public function isPropertySupported(name : String) : Bool;
	
	/** Set a user defined event allocator for events
	* @param allocator the user defined allocator
	*/
	@:overload override public function setEventAllocator(allocator : javax.xml.stream.util.XMLEventAllocator) : Void;
	
	/** Allows the user to set specific feature/property on the underlying implementation. The underlying implementation
	* is not required to support every setting of every property in the specification and may use IllegalArgumentException
	* to signal that an unsupported property may not be set with the specified value.
	* @param name The name of the property (may not be null)
	* @param value The value of the property
	* @throws java.lang.IllegalArgumentException if the property is not supported
	*/
	@:overload override public function setProperty(name : String, value : Dynamic) : Void;
	
	
}
