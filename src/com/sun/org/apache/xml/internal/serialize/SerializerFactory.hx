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
extern class SerializerFactory
{
	/**
	*
	*
	* @version $Revision: 1.6 $ $Date: 2010-11-01 04:40:36 $
	* @author <a href="mailto:Scott_Boag/CAM/Lotus@lotus.com">Scott Boag</a>
	* @author <a href="mailto:arkin@intalio.com">Assaf Arkin</a>
	*/
	public static var FactoriesProperty(default, null) : String;
	
	/**
	* Register a serializer factory, keyed by the given
	* method string.
	*/
	@:overload public static function registerSerializerFactory(factory : SerializerFactory) : Void;
	
	/**
	* Register a serializer factory, keyed by the given
	* method string.
	*/
	@:overload public static function getSerializerFactory(method : String) : SerializerFactory;
	
	/**
	* Returns the method supported by this factory and used to register
	* the factory. This call is required so factories can be added from
	* a properties file by knowing only the class name. This method is
	* protected, it is only required by this class but must be implemented
	* in derived classes.
	*/
	@:overload @:abstract private function getSupportedMethod() : String;
	
	/**
	* Create a new serializer based on the {@link OutputFormat}.
	* If this method is used to create the serializer, the {@link
	* Serializer#setOutputByteStream} or {@link Serializer#setOutputCharStream}
	* methods must be called before serializing a document.
	*/
	@:overload @:abstract public function makeSerializer(format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : com.sun.org.apache.xml.internal.serialize.Serializer;
	
	/**
	* Create a new serializer, based on the {@link OutputFormat} and
	* using the writer as the output character stream.  If this
	* method is used, the encoding property will be ignored.
	*/
	@:overload @:abstract public function makeSerializer(writer : java.io.Writer, format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : com.sun.org.apache.xml.internal.serialize.Serializer;
	
	/**
	* Create a new serializer, based on the {@link OutputFormat} and
	* using the output byte stream and the encoding specified in the
	* output format.
	*
	* @throws UnsupportedEncodingException The specified encoding is
	*   not supported
	*/
	@:overload @:abstract public function makeSerializer(output : java.io.OutputStream, format : com.sun.org.apache.xml.internal.serialize.OutputFormat) : com.sun.org.apache.xml.internal.serialize.Serializer;
	
	
}
