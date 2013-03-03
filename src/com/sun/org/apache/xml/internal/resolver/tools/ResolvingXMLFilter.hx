package com.sun.org.apache.xml.internal.resolver.tools;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
//// ResolvingXMLFilter.java - An XMLFilter that performs catalog resolution
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
extern class ResolvingXMLFilter extends org.xml.sax.helpers.XMLFilterImpl
{
	/**
	* Suppress explanatory message?
	*
	* @see #parse(InputSource)
	*/
	@:public @:static public static var suppressExplanation : Bool;
	
	/** Construct an empty XML Filter with no parent. */
	@:overload @:public public function new() : Void;
	
	/** Construct an XML filter with the specified parent. */
	@:overload @:public public function new(parent : org.xml.sax.XMLReader) : Void;
	
	/** Construct an XML filter with the specified parent. */
	@:overload @:public public function new(manager : com.sun.org.apache.xml.internal.resolver.CatalogManager) : Void;
	
	/** Construct an XML filter with the specified parent. */
	@:overload @:public public function new(parent : org.xml.sax.XMLReader, manager : com.sun.org.apache.xml.internal.resolver.CatalogManager) : Void;
	
	/**
	* Provide accessto the underlying Catalog.
	*/
	@:overload @:public public function getCatalog() : com.sun.org.apache.xml.internal.resolver.Catalog;
	
	/**
	* SAX XMLReader API.
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
	@:overload @:public override public function parse(input : org.xml.sax.InputSource) : Void;
	
	/** SAX XMLReader API.
	*
	* @see #parse(InputSource)
	*/
	@:overload @:public override public function parse(systemId : String) : Void;
	
	/**
	* Implements the <code>resolveEntity</code> method
	* for the SAX interface, using an underlying CatalogResolver
	* to do the real work.
	*/
	@:overload @:public override public function resolveEntity(publicId : String, systemId : String) : org.xml.sax.InputSource;
	
	/** SAX DTDHandler API.
	*
	* <p>Captured here only to detect the end of the prolog so that
	* we can ignore subsequent oasis-xml-catalog PIs. Otherwise
	* the events are just passed through.</p>
	*/
	@:overload @:public override public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	/** SAX DTDHandler API.
	*
	* <p>Captured here only to detect the end of the prolog so that
	* we can ignore subsequent oasis-xml-catalog PIs. Otherwise
	* the events are just passed through.</p>
	*/
	@:overload @:public override public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	/** SAX ContentHandler API.
	*
	* <p>Captured here only to detect the end of the prolog so that
	* we can ignore subsequent oasis-xml-catalog PIs. Otherwise
	* the events are just passed through.</p>
	*/
	@:overload @:public override public function startElement(uri : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/** SAX ContentHandler API.
	*
	* <p>Detect and use the oasis-xml-catalog PI if it occurs.</p>
	*/
	@:overload @:public override public function processingInstruction(target : String, pidata : String) : Void;
	
	
}
