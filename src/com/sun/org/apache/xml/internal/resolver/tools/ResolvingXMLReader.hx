package com.sun.org.apache.xml.internal.resolver.tools;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// ResolvingXMLReader.java - An XMLReader that performs catalog resolution
/*
* Copyright 2001-2004 The Apache Software Foundation or its licensors,
* as applicable.
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
/**
* A SAX XMLReader that performs catalog-based entity resolution.
*
* <p>This class implements a SAX XMLReader that performs entity resolution
* using the CatalogResolver. The actual, underlying parser is obtained
* from a SAXParserFactory.</p>
* </p>
*
* @see CatalogResolver
* @see org.xml.sax.XMLReader
*
* @author Norman Walsh
* <a href="mailto:Norman.Walsh@Sun.COM">Norman.Walsh@Sun.COM</a>
*
* @version 1.0
*/
extern class ResolvingXMLReader extends com.sun.org.apache.xml.internal.resolver.tools.ResolvingXMLFilter
{
	/** Make the parser Namespace aware? */
	public static var namespaceAware : Bool;
	
	/** Make the parser validating? */
	public static var validating : Bool;
	
	/**
	* Construct a new reader from the JAXP factory.
	*
	* <p>In order to do its job, a ResolvingXMLReader must in fact be
	* a filter. So the only difference between this code and the filter
	* code is that the constructor builds a new reader.</p>
	*/
	@:overload public function new() : Void;
	
	/**
	* Construct a new reader from the JAXP factory.
	*
	* <p>In order to do its job, a ResolvingXMLReader must in fact be
	* a filter. So the only difference between this code and the filter
	* code is that the constructor builds a new reader.</p>
	*/
	@:overload public function new(manager : com.sun.org.apache.xml.internal.resolver.CatalogManager) : Void;
	
	
}
