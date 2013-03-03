package com.sun.org.apache.xml.internal.resolver.readers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// ExtendedXMLCatalogReader.java - Read XML Catalog files
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
* Parse Extended OASIS Entity Resolution Technical Committee
* XML Catalog files.
*
* @see Catalog
*
* @author Norman Walsh
* <a href="mailto:Norman.Walsh@Sun.COM">Norman.Walsh@Sun.COM</a>
*
*/
extern class ExtendedXMLCatalogReader extends com.sun.org.apache.xml.internal.resolver.readers.OASISXMLCatalogReader
{
	/** The namespace name of extended catalog elements */
	@:public @:static @:final public static var extendedNamespaceName(default, null) : String;
	
	/**
	* The SAX <code>startElement</code> method recognizes elements
	* from the plain catalog format and instantiates CatalogEntry
	* objects for them.
	*
	* @param namespaceURI The namespace name of the element.
	* @param localName The local name of the element.
	* @param qName The QName of the element.
	* @param atts The list of attributes on the element.
	*
	* @see CatalogEntry
	*/
	@:overload @:public override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/** The SAX <code>endElement</code> method does nothing. */
	@:overload @:public override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	
}
