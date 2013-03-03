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
extern class XMLOutputFactory
{
	/**
	* Property used to set prefix defaulting on the output side
	*/
	@:public @:static @:final public static var IS_REPAIRING_NAMESPACES(default, null) : String;
	
	@:overload @:protected private function new() : Void;
	
	/**
	* Create a new instance of the factory.
	* @throws FactoryConfigurationError if an instance of this factory cannot be loaded
	*/
	@:overload @:public @:static public static function newInstance() : javax.xml.stream.XMLOutputFactory;
	
	/**
	* Create a new instance of the factory.
	* This static method creates a new factory instance. This method uses the
	* following ordered lookup procedure to determine the XMLOutputFactory
	* implementation class to load:
	*   Use the javax.xml.stream.XMLOutputFactory system property.
	*   Use the properties file "lib/stax.properties" in the JRE directory.
	*     This configuration file is in standard java.util.Properties format
	*     and contains the fully qualified name of the implementation class
	*     with the key being the system property defined above.
	*   Use the Services API (as detailed in the JAR specification), if available,
	*     to determine the classname. The Services API will look for a classname
	*     in the file META-INF/services/javax.xml.stream.XMLOutputFactory in jars
	*     available to the runtime.
	*   Platform default XMLOutputFactory instance.
	*
	* Once an application has obtained a reference to a XMLOutputFactory it
	* can use the factory to configure and obtain stream instances.
	*
	* Note that this is a new method that replaces the deprecated newInstance() method.
	*   No changes in behavior are defined by this replacement method relative to the
	*   deprecated method.
	*
	* @throws FactoryConfigurationError if an instance of this factory cannot be loaded
	*/
	@:overload @:public @:static public static function newFactory() : javax.xml.stream.XMLOutputFactory;
	
	/**
	* Create a new instance of the factory.
	*
	* @param factoryId             Name of the factory to find, same as
	*                              a property name
	* @param classLoader           classLoader to use
	* @return the factory implementation
	* @throws FactoryConfigurationError if an instance of this factory cannot be loaded
	*
	* @deprecated  This method has been deprecated because it returns an
	*              instance of XMLInputFactory, which is of the wrong class.
	*              Use the new method {@link #newFactory(java.lang.String,
	*              java.lang.ClassLoader)} instead.
	*/
	@:overload @:public @:static public static function newInstance(factoryId : String, classLoader : java.lang.ClassLoader) : javax.xml.stream.XMLInputFactory;
	
	/**
	* Create a new instance of the factory.
	* If the classLoader argument is null, then the ContextClassLoader is used.
	*
	* Note that this is a new method that replaces the deprecated
	*   newInstance(String factoryId, ClassLoader classLoader) method.
	*
	*   No changes in behavior are defined by this replacement method relative
	*   to the deprecated method.
	*
	*
	* @param factoryId             Name of the factory to find, same as
	*                              a property name
	* @param classLoader           classLoader to use
	* @return the factory implementation
	* @throws FactoryConfigurationError if an instance of this factory cannot be loaded
	*/
	@:overload @:public @:static public static function newFactory(factoryId : String, classLoader : java.lang.ClassLoader) : javax.xml.stream.XMLOutputFactory;
	
	/**
	* Create a new XMLStreamWriter that writes to a writer
	* @param stream the writer to write to
	* @throws XMLStreamException
	*/
	@:overload @:public @:abstract public function createXMLStreamWriter(stream : java.io.Writer) : javax.xml.stream.XMLStreamWriter;
	
	/**
	* Create a new XMLStreamWriter that writes to a stream
	* @param stream the stream to write to
	* @throws XMLStreamException
	*/
	@:overload @:public @:abstract public function createXMLStreamWriter(stream : java.io.OutputStream) : javax.xml.stream.XMLStreamWriter;
	
	/**
	* Create a new XMLStreamWriter that writes to a stream
	* @param stream the stream to write to
	* @param encoding the encoding to use
	* @throws XMLStreamException
	*/
	@:overload @:public @:abstract public function createXMLStreamWriter(stream : java.io.OutputStream, encoding : String) : javax.xml.stream.XMLStreamWriter;
	
	/**
	* Create a new XMLStreamWriter that writes to a JAXP result.  This method is optional.
	* @param result the result to write to
	* @throws UnsupportedOperationException if this method is not
	* supported by this XMLOutputFactory
	* @throws XMLStreamException
	*/
	@:overload @:public @:abstract public function createXMLStreamWriter(result : javax.xml.transform.Result) : javax.xml.stream.XMLStreamWriter;
	
	/**
	* Create a new XMLEventWriter that writes to a JAXP result.  This method is optional.
	* @param result the result to write to
	* @throws UnsupportedOperationException if this method is not
	* supported by this XMLOutputFactory
	* @throws XMLStreamException
	*/
	@:overload @:public @:abstract public function createXMLEventWriter(result : javax.xml.transform.Result) : javax.xml.stream.XMLEventWriter;
	
	/**
	* Create a new XMLEventWriter that writes to a stream
	* @param stream the stream to write to
	* @throws XMLStreamException
	*/
	@:overload @:public @:abstract public function createXMLEventWriter(stream : java.io.OutputStream) : javax.xml.stream.XMLEventWriter;
	
	/**
	* Create a new XMLEventWriter that writes to a stream
	* @param stream the stream to write to
	* @param encoding the encoding to use
	* @throws XMLStreamException
	*/
	@:overload @:public @:abstract public function createXMLEventWriter(stream : java.io.OutputStream, encoding : String) : javax.xml.stream.XMLEventWriter;
	
	/**
	* Create a new XMLEventWriter that writes to a writer
	* @param stream the stream to write to
	* @throws XMLStreamException
	*/
	@:overload @:public @:abstract public function createXMLEventWriter(stream : java.io.Writer) : javax.xml.stream.XMLEventWriter;
	
	/**
	* Allows the user to set specific features/properties on the underlying implementation.
	* @param name The name of the property
	* @param value The value of the property
	* @throws java.lang.IllegalArgumentException if the property is not supported
	*/
	@:overload @:public @:abstract public function setProperty(name : String, value : Dynamic) : Void;
	
	/**
	* Get a feature/property on the underlying implementation
	* @param name The name of the property
	* @return The value of the property
	* @throws java.lang.IllegalArgumentException if the property is not supported
	*/
	@:overload @:public @:abstract public function getProperty(name : String) : Dynamic;
	
	/**
	* Query the set of properties that this factory supports.
	*
	* @param name The name of the property (may not be null)
	* @return true if the property is supported and false otherwise
	*/
	@:overload @:public @:abstract public function isPropertySupported(name : String) : Bool;
	
	
}
