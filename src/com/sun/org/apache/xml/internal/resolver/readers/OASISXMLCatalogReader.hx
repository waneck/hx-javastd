package com.sun.org.apache.xml.internal.resolver.readers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// OASISXMLCatalogReader.java - Read XML Catalog files
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
* Parse OASIS Entity Resolution Technical Committee
* XML Catalog files.
*
* @see Catalog
*
* @author Norman Walsh
* <a href="mailto:Norman.Walsh@Sun.COM">Norman.Walsh@Sun.COM</a>
*
*/
extern class OASISXMLCatalogReader extends com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogReader implements com.sun.org.apache.xml.internal.resolver.readers.SAXCatalogParser
{
	/** The catalog object needs to be stored by the object so that
	* SAX callbacks can use it.
	*/
	private var catalog : com.sun.org.apache.xml.internal.resolver.Catalog;
	
	/** The namespace name of OASIS ERTC catalogs */
	public static var namespaceName(default, null) : String;
	
	/** The namespace name of OASIS ERTC TR9401 catalog extension */
	public static var tr9401NamespaceName(default, null) : String;
	
	private var baseURIStack : java.util.Stack<Dynamic>;
	
	private var overrideStack : java.util.Stack<Dynamic>;
	
	private var namespaceStack : java.util.Stack<Dynamic>;
	
	/** Set the current catalog. */
	@:overload public function setCatalog(catalog : com.sun.org.apache.xml.internal.resolver.Catalog) : Void;
	
	/** Get the current catalog. */
	@:overload public function getCatalog() : com.sun.org.apache.xml.internal.resolver.Catalog;
	
	/**
	* Are we in an extension namespace?
	*
	* @return true if the current stack of open namespaces includes
	*               an extension namespace.
	*/
	@:overload private function inExtensionNamespace() : Bool;
	
	/** The SAX <code>setDocumentLocator</code> method does nothing. */
	@:overload override public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/** The SAX <code>startDocument</code> method does nothing. */
	@:overload override public function startDocument() : Void;
	
	/** The SAX <code>endDocument</code> method does nothing. */
	@:overload override public function endDocument() : Void;
	
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
	@:overload override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload public function checkAttributes(atts : org.xml.sax.Attributes, attName : String) : Bool;
	
	@:overload public function checkAttributes(atts : org.xml.sax.Attributes, attName1 : String, attName2 : String) : Bool;
	
	/** The SAX <code>endElement</code> method does nothing. */
	@:overload override public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	/** The SAX <code>characters</code> method does nothing. */
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/** The SAX <code>ignorableWhitespace</code> method does nothing. */
	@:overload override public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/** The SAX <code>processingInstruction</code> method does nothing. */
	@:overload override public function processingInstruction(target : String, data : String) : Void;
	
	/** The SAX <code>skippedEntity</code> method does nothing. */
	@:overload override public function skippedEntity(name : String) : Void;
	
	/** The SAX <code>startPrefixMapping</code> method does nothing. */
	@:overload override public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/** The SAX <code>endPrefixMapping</code> method does nothing. */
	@:overload override public function endPrefixMapping(prefix : String) : Void;
	
	
}
