package com.sun.org.apache.xml.internal.resolver.tools;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// ResolvingParser.java - An interface for reading catalog files
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
extern class ResolvingParser implements org.xml.sax.Parser implements org.xml.sax.DTDHandler implements org.xml.sax.DocumentHandler implements org.xml.sax.EntityResolver
{
	/** Make the parser Namespace aware? */
	public static var namespaceAware : Bool;
	
	/** Make the parser validating? */
	public static var validating : Bool;
	
	/** Suppress explanatory message?
	*
	* @see #parse(InputSource)
	*/
	public static var suppressExplanation : Bool;
	
	/** Constructor. */
	@:overload public function new() : Void;
	
	/** Constructor. */
	@:overload public function new(manager : com.sun.org.apache.xml.internal.resolver.CatalogManager) : Void;
	
	/** Return the Catalog being used. */
	@:overload public function getCatalog() : com.sun.org.apache.xml.internal.resolver.Catalog;
	
	/**
	* SAX Parser API.
	*
	* <p>Note that the JAXP 1.1ea2 parser crashes with an InternalError if
	* it encounters a system identifier that appears to be a relative URI
	* that begins with a slash. For example, the declaration:</p>
	*
	* <pre>
	* &lt;!DOCTYPE book SYSTEM "/path/to/dtd/on/my/system/docbookx.dtd">
	* </pre>
	*
	* <p>would cause such an error. As a convenience, this method catches
	* that error and prints an explanation. (Unfortunately, it's not possible
	* to identify the particular system identifier that causes the problem.)
	* </p>
	*
	* <p>The underlying error is forwarded after printing the explanatory
	* message. The message is only every printed once and if
	* <code>suppressExplanation</code> is set to <code>false</code> before
	* parsing, it will never be printed.</p>
	*/
	@:overload public function parse(input : org.xml.sax.InputSource) : Void;
	
	/** SAX Parser API.
	*
	* @see #parse(InputSource)
	*/
	@:overload public function parse(systemId : String) : Void;
	
	/** SAX Parser API. */
	@:overload public function setDocumentHandler(handler : org.xml.sax.DocumentHandler) : Void;
	
	/** SAX Parser API. */
	@:overload public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	/**
	* SAX Parser API.
	*
	* <p>The purpose of this class is to implement an entity resolver.
	* Attempting to set a different one is pointless (and ignored).</p>
	*/
	@:overload public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	/** SAX Parser API. */
	@:overload public function setErrorHandler(handler : org.xml.sax.ErrorHandler) : Void;
	
	/** SAX Parser API. */
	@:overload public function setLocale(locale : java.util.Locale) : Void;
	
	/** SAX DocumentHandler API. */
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/** SAX DocumentHandler API. */
	@:overload public function endDocument() : Void;
	
	/** SAX DocumentHandler API. */
	@:overload public function endElement(name : String) : Void;
	
	/** SAX DocumentHandler API. */
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/** SAX DocumentHandler API. */
	@:overload public function processingInstruction(target : String, pidata : String) : Void;
	
	/** SAX DocumentHandler API. */
	@:overload public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/** SAX DocumentHandler API. */
	@:overload public function startDocument() : Void;
	
	/** SAX DocumentHandler API. */
	@:overload public function startElement(name : String, atts : org.xml.sax.AttributeList) : Void;
	
	/** SAX DTDHandler API. */
	@:overload public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	/** SAX DTDHandler API. */
	@:overload public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	/**
	* Implements the <code>resolveEntity</code> method
	* for the SAX interface, using an underlying CatalogResolver
	* to do the real work.
	*/
	@:overload public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	
}
