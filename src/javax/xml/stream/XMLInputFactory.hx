package javax.xml.stream;
/*
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
/*
* Copyright (c) 2009 by Oracle Corporation. All Rights Reserved.
*/
extern class XMLInputFactory
{
	/**
	* The property used to turn on/off namespace support,
	* this is to support XML 1.0 documents,
	* only the true setting must be supported
	*/
	public static var IS_NAMESPACE_AWARE(default, null) : String;
	
	/**
	* The property used to turn on/off implementation specific validation
	*/
	public static var IS_VALIDATING(default, null) : String;
	
	/**
	* The property that requires the parser to coalesce adjacent character data sections
	*/
	public static var IS_COALESCING(default, null) : String;
	
	/**
	* Requires the parser to replace internal
	* entity references with their replacement
	* text and report them as characters
	*/
	public static var IS_REPLACING_ENTITY_REFERENCES(default, null) : String;
	
	/**
	*  The property that requires the parser to resolve external parsed entities
	*/
	public static var IS_SUPPORTING_EXTERNAL_ENTITIES(default, null) : String;
	
	/**
	*  The property that requires the parser to support DTDs
	*/
	public static var SUPPORT_DTD(default, null) : String;
	
	/**
	* The property used to
	* set/get the implementation of the XMLReporter interface
	*/
	public static var REPORTER(default, null) : String;
	
	/**
	* The property used to set/get the implementation of the XMLResolver
	*/
	public static var RESOLVER(default, null) : String;
	
	/**
	* The property used to set/get the implementation of the allocator
	*/
	public static var ALLOCATOR(default, null) : String;
	
	@:overload private function new() : Void;
	
	/**
	* Create a new instance of the factory.
	* @throws FactoryConfigurationError if an instance of this factory cannot be loaded
	*/
	@:overload public static function newInstance() : javax.xml.stream.XMLInputFactory;
	
	/**
	* Create a new instance of the factory.
	* This static method creates a new factory instance.
	* This method uses the following ordered lookup procedure to determine
	* the XMLInputFactory implementation class to load:
	*   Use the javax.xml.stream.XMLInputFactory system property.
	*   Use the properties file "lib/stax.properties" in the JRE directory.
	*     This configuration file is in standard java.util.Properties format
	*     and contains the fully qualified name of the implementation class
	*     with the key being the system property defined above.
	*   Use the Services API (as detailed in the JAR specification), if available,
	*     to determine the classname. The Services API will look for a classname
	*     in the file META-INF/services/javax.xml.stream.XMLInputFactory in jars
	*     available to the runtime.
	*   Platform default XMLInputFactory instance.
	*
	*   Once an application has obtained a reference to a XMLInputFactory it
	*   can use the factory to configure and obtain stream instances.
	*
	*   Note that this is a new method that replaces the deprecated newInstance() method.
	*     No changes in behavior are defined by this replacement method relative to
	*     the deprecated method.
	*
	* @throws FactoryConfigurationError if an instance of this factory cannot be loaded
	*/
	@:overload public static function newFactory() : javax.xml.stream.XMLInputFactory;
	
	/**
	* Create a new instance of the factory
	*
	* @param factoryId             Name of the factory to find, same as
	*                              a property name
	* @param classLoader           classLoader to use
	* @return the factory implementation
	* @throws FactoryConfigurationError if an instance of this factory cannot be loaded
	*
	* @deprecated  This method has been deprecated to maintain API consistency.
	*              All newInstance methods have been replaced with corresponding
	*              newFactory methods. The replacement {@link
	*              #newFactory(java.lang.String, java.lang.ClassLoader)} method
	*              defines no changes in behavior.
	*/
	@:overload public static function newInstance(factoryId : String, classLoader : java.lang.ClassLoader) : javax.xml.stream.XMLInputFactory;
	
	/**
	* Create a new instance of the factory.
	* If the classLoader argument is null, then the ContextClassLoader is used.
	*
	* Note that this is a new method that replaces the deprecated
	*   newInstance(String factoryId, ClassLoader classLoader) method.
	* No changes in behavior are defined by this replacement method relative
	* to the deprecated method.
	*
	* @param factoryId             Name of the factory to find, same as
	*                              a property name
	* @param classLoader           classLoader to use
	* @return the factory implementation
	* @throws FactoryConfigurationError if an instance of this factory cannot be loaded
	*/
	@:overload public static function newFactory(factoryId : String, classLoader : java.lang.ClassLoader) : javax.xml.stream.XMLInputFactory;
	
	/**
	* Create a new XMLStreamReader from a reader
	* @param reader the XML data to read from
	* @throws XMLStreamException
	*/
	@:overload @:abstract public function createXMLStreamReader(reader : java.io.Reader) : javax.xml.stream.XMLStreamReader;
	
	/**
	* Create a new XMLStreamReader from a JAXP source.  This method is optional.
	* @param source the source to read from
	* @throws UnsupportedOperationException if this method is not
	* supported by this XMLInputFactory
	* @throws XMLStreamException
	*/
	@:overload @:abstract public function createXMLStreamReader(source : javax.xml.transform.Source) : javax.xml.stream.XMLStreamReader;
	
	/**
	* Create a new XMLStreamReader from a java.io.InputStream
	* @param stream the InputStream to read from
	* @throws XMLStreamException
	*/
	@:overload @:abstract public function createXMLStreamReader(stream : java.io.InputStream) : javax.xml.stream.XMLStreamReader;
	
	/**
	* Create a new XMLStreamReader from a java.io.InputStream
	* @param stream the InputStream to read from
	* @param encoding the character encoding of the stream
	* @throws XMLStreamException
	*/
	@:overload @:abstract public function createXMLStreamReader(stream : java.io.InputStream, encoding : String) : javax.xml.stream.XMLStreamReader;
	
	/**
	* Create a new XMLStreamReader from a java.io.InputStream
	* @param systemId the system ID of the stream
	* @param stream the InputStream to read from
	*/
	@:overload @:abstract public function createXMLStreamReader(systemId : String, stream : java.io.InputStream) : javax.xml.stream.XMLStreamReader;
	
	/**
	* Create a new XMLStreamReader from a java.io.InputStream
	* @param systemId the system ID of the stream
	* @param reader the InputStream to read from
	*/
	@:overload @:abstract public function createXMLStreamReader(systemId : String, reader : java.io.Reader) : javax.xml.stream.XMLStreamReader;
	
	/**
	* Create a new XMLEventReader from a reader
	* @param reader the XML data to read from
	* @throws XMLStreamException
	*/
	@:overload @:abstract public function createXMLEventReader(reader : java.io.Reader) : javax.xml.stream.XMLEventReader;
	
	/**
	* Create a new XMLEventReader from a reader
	* @param systemId the system ID of the input
	* @param reader the XML data to read from
	* @throws XMLStreamException
	*/
	@:overload @:abstract public function createXMLEventReader(systemId : String, reader : java.io.Reader) : javax.xml.stream.XMLEventReader;
	
	/**
	* Create a new XMLEventReader from an XMLStreamReader.  After being used
	* to construct the XMLEventReader instance returned from this method
	* the XMLStreamReader must not be used.
	* @param reader the XMLStreamReader to read from (may not be modified)
	* @return a new XMLEventReader
	* @throws XMLStreamException
	*/
	@:overload @:abstract public function createXMLEventReader(reader : javax.xml.stream.XMLStreamReader) : javax.xml.stream.XMLEventReader;
	
	/**
	* Create a new XMLEventReader from a JAXP source.
	* Support of this method is optional.
	* @param source the source to read from
	* @throws UnsupportedOperationException if this method is not
	* supported by this XMLInputFactory
	*/
	@:overload @:abstract public function createXMLEventReader(source : javax.xml.transform.Source) : javax.xml.stream.XMLEventReader;
	
	/**
	* Create a new XMLEventReader from a java.io.InputStream
	* @param stream the InputStream to read from
	* @throws XMLStreamException
	*/
	@:overload @:abstract public function createXMLEventReader(stream : java.io.InputStream) : javax.xml.stream.XMLEventReader;
	
	/**
	* Create a new XMLEventReader from a java.io.InputStream
	* @param stream the InputStream to read from
	* @param encoding the character encoding of the stream
	* @throws XMLStreamException
	*/
	@:overload @:abstract public function createXMLEventReader(stream : java.io.InputStream, encoding : String) : javax.xml.stream.XMLEventReader;
	
	/**
	* Create a new XMLEventReader from a java.io.InputStream
	* @param systemId the system ID of the stream
	* @param stream the InputStream to read from
	* @throws XMLStreamException
	*/
	@:overload @:abstract public function createXMLEventReader(systemId : String, stream : java.io.InputStream) : javax.xml.stream.XMLEventReader;
	
	/**
	* Create a filtered reader that wraps the filter around the reader
	* @param reader the reader to filter
	* @param filter the filter to apply to the reader
	* @throws XMLStreamException
	*/
	@:overload @:abstract public function createFilteredReader(reader : javax.xml.stream.XMLStreamReader, filter : javax.xml.stream.StreamFilter) : javax.xml.stream.XMLStreamReader;
	
	/**
	* Create a filtered event reader that wraps the filter around the event reader
	* @param reader the event reader to wrap
	* @param filter the filter to apply to the event reader
	* @throws XMLStreamException
	*/
	@:overload @:abstract public function createFilteredReader(reader : javax.xml.stream.XMLEventReader, filter : javax.xml.stream.EventFilter) : javax.xml.stream.XMLEventReader;
	
	/**
	* The resolver that will be set on any XMLStreamReader or XMLEventReader created
	* by this factory instance.
	*/
	@:overload @:abstract public function getXMLResolver() : javax.xml.stream.XMLResolver;
	
	/**
	* The resolver that will be set on any XMLStreamReader or XMLEventReader created
	* by this factory instance.
	* @param resolver the resolver to use to resolve references
	*/
	@:overload @:abstract public function setXMLResolver(resolver : javax.xml.stream.XMLResolver) : Void;
	
	/**
	* The reporter that will be set on any XMLStreamReader or XMLEventReader created
	* by this factory instance.
	*/
	@:overload @:abstract public function getXMLReporter() : javax.xml.stream.XMLReporter;
	
	/**
	* The reporter that will be set on any XMLStreamReader or XMLEventReader created
	* by this factory instance.
	* @param reporter the resolver to use to report non fatal errors
	*/
	@:overload @:abstract public function setXMLReporter(reporter : javax.xml.stream.XMLReporter) : Void;
	
	/**
	* Allows the user to set specific feature/property on the underlying implementation. The underlying implementation
	* is not required to support every setting of every property in the specification and may use IllegalArgumentException
	* to signal that an unsupported property may not be set with the specified value.
	* @param name The name of the property (may not be null)
	* @param value The value of the property
	* @throws java.lang.IllegalArgumentException if the property is not supported
	*/
	@:overload @:abstract public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* Get the value of a feature/property from the underlying implementation
	* @param name The name of the property (may not be null)
	* @return The value of the property
	* @throws IllegalArgumentException if the property is not supported
	*/
	@:overload @:abstract public function getProperty(name : String) : Dynamic;
	
	/**
	* Query the set of properties that this factory supports.
	*
	* @param name The name of the property (may not be null)
	* @return true if the property is supported and false otherwise
	*/
	@:overload @:abstract public function isPropertySupported(name : String) : Bool;
	
	/**
	* Set a user defined event allocator for events
	* @param allocator the user defined allocator
	*/
	@:overload @:abstract public function setEventAllocator(allocator : javax.xml.stream.util.XMLEventAllocator) : Void;
	
	/**
	* Gets the allocator used by streams created with this factory
	*/
	@:overload @:abstract public function getEventAllocator() : javax.xml.stream.util.XMLEventAllocator;
	
	
}
