package com.sun.org.apache.xml.internal.resolver.readers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// SAXCatalogReader.java - Read XML Catalog files
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
extern class SAXCatalogReader implements com.sun.org.apache.xml.internal.resolver.readers.CatalogReader implements org.xml.sax.ContentHandler implements org.xml.sax.DocumentHandler
{
	/** The SAX Parser Factory */
	@:protected private var parserFactory : javax.xml.parsers.SAXParserFactory;
	
	/** The SAX Parser Class */
	@:protected private var parserClass : String;
	
	/**
	* Mapping table from QNames to CatalogParser classes.
	*
	* <p>Each key in this hash table has the form "elementname"
	* or "{namespaceuri}elementname". The former is used if the
	* namespace URI is null.</p>
	*/
	@:protected private var namespaceMap : java.util.Hashtable<Dynamic, Dynamic>;
	
	/** Set the XML SAX Parser Factory.
	*/
	@:overload @:public public function setParserFactory(parserFactory : javax.xml.parsers.SAXParserFactory) : Void;
	
	/** Set the XML SAX Parser Class
	*/
	@:overload @:public public function setParserClass(parserClass : String) : Void;
	
	/** Get the parser factory currently in use. */
	@:overload @:public public function getParserFactory() : javax.xml.parsers.SAXParserFactory;
	
	/** Get the parser class currently in use. */
	@:overload @:public public function getParserClass() : String;
	
	/** The debug class to use for this reader.
	*
	* This is a bit of a hack. Anyway, whenever we read for a catalog,
	* we extract the debug object
	* from the catalog's manager so that we can use it to print messages.
	*
	* In production, we don't really expect any messages so it doesn't
	* really matter. But it's still a bit of a hack.
	*/
	@:protected private var debug : com.sun.org.apache.xml.internal.resolver.helpers.Debug;
	
	/** The constructor */
	@:overload @:public public function new() : Void;
	
	/** The constructor */
	@:overload @:public public function new(parserFactory : javax.xml.parsers.SAXParserFactory) : Void;
	
	/** The constructor */
	@:overload @:public public function new(parserClass : String) : Void;
	
	/** Set the SAXCatalogParser class for the given namespace/root
	* element type.
	*/
	@:overload @:public public function setCatalogParser(namespaceURI : String, rootElement : String, parserClass : String) : Void;
	
	/** Get the SAXCatalogParser class for the given namespace/root
	* element type.
	*/
	@:overload @:public public function getCatalogParser(namespaceURI : String, rootElement : String) : String;
	
	/**
	* Parse an XML Catalog file.
	*
	* @param catalog The catalog to which this catalog file belongs
	* @param fileUrl The URL or filename of the catalog file to process
	*
	* @throws MalformedURLException Improper fileUrl
	* @throws IOException Error reading catalog file
	*/
	@:overload @:public public function readCatalog(catalog : com.sun.org.apache.xml.internal.resolver.Catalog, fileUrl : String) : Void;
	
	/**
	* Parse an XML Catalog stream.
	*
	* @param catalog The catalog to which this catalog file belongs
	* @param is The input stream from which the catalog will be read
	*
	* @throws MalformedURLException Improper fileUrl
	* @throws IOException Error reading catalog file
	* @throws CatalogException A Catalog exception
	*/
	@:overload @:public public function readCatalog(catalog : com.sun.org.apache.xml.internal.resolver.Catalog, is : java.io.InputStream) : Void;
	
	/** The SAX <code>setDocumentLocator</code> method. Does nothing. */
	@:overload @:public public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/** The SAX <code>startDocument</code> method. Does nothing. */
	@:overload @:public public function startDocument() : Void;
	
	/** The SAX <code>endDocument</code> method. Does nothing. */
	@:overload @:public public function endDocument() : Void;
	
	/**
	* The SAX <code>startElement</code> method.
	*
	* <p>The catalog parser is selected based on the namespace of the
	* first element encountered in the catalog.</p>
	*/
	@:overload @:public public function startElement(name : String, atts : org.xml.sax.AttributeList) : Void;
	
	/**
	* The SAX2 <code>startElement</code> method.
	*
	* <p>The catalog parser is selected based on the namespace of the
	* first element encountered in the catalog.</p>
	*/
	@:overload @:public public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/** The SAX <code>endElement</code> method. Does nothing. */
	@:overload @:public public function endElement(name : String) : Void;
	
	/** The SAX2 <code>endElement</code> method. Does nothing. */
	@:overload @:public public function endElement(namespaceURI : String, localName : String, qName : String) : Void;
	
	/** The SAX <code>characters</code> method. Does nothing. */
	@:overload @:public public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/** The SAX <code>ignorableWhitespace</code> method. Does nothing. */
	@:overload @:public public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/** The SAX <code>processingInstruction</code> method. Does nothing. */
	@:overload @:public public function processingInstruction(target : String, data : String) : Void;
	
	/** The SAX <code>startPrefixMapping</code> method. Does nothing. */
	@:overload @:public public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/** The SAX <code>endPrefixMapping</code> method. Does nothing. */
	@:overload @:public public function endPrefixMapping(prefix : String) : Void;
	
	/** The SAX <code>skippedentity</code> method. Does nothing. */
	@:overload @:public public function skippedEntity(name : String) : Void;
	
	
}
