package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: StylesheetPIHandler.java,v 1.2.4.1 2005/09/15 08:15:57 suresh_emailid Exp $
*/
extern class StylesheetPIHandler extends org.xml.sax.helpers.DefaultHandler
{
	/**
	* Get the object that will be used to resolve URIs in href
	* in xml-stylesheet processing instruction.
	*
	* @param resolver An object that implements the URIResolver interface,
	* or null.
	*/
	@:overload public function setURIResolver(resolver : javax.xml.transform.URIResolver) : Void;
	
	/**
	* Get the object that will be used to resolve URIs in href
	* in xml-stylesheet processing instruction.
	*
	* @return The URIResolver that was set with setURIResolver.
	*/
	@:overload public function getURIResolver() : javax.xml.transform.URIResolver;
	
	/**
	* Construct a StylesheetPIHandler instance that will search
	* for xml-stylesheet PIs based on the given criteria.
	*
	* @param baseID The base ID of the XML document, needed to resolve
	*               relative IDs.
	* @param media The desired media criteria.
	* @param title The desired title criteria.
	* @param charset The desired character set criteria.
	*/
	@:overload public function new(baseID : String, media : String, title : String, charset : String) : Void;
	
	/**
	* Return the last stylesheet found that match the constraints.
	*
	* @return Source object that references the last stylesheet reference
	*         that matches the constraints.
	*/
	@:overload public function getAssociatedStylesheet() : javax.xml.transform.Source;
	
	/**
	* Handle the xml-stylesheet processing instruction.
	*
	* @param target The processing instruction target.
	* @param data The processing instruction data, or null if
	*             none is supplied.
	* @throws org.xml.sax.SAXException Any SAX exception, possibly
	*            wrapping another exception.
	* @see org.xml.sax.ContentHandler#processingInstruction
	* @see <a href="http://www.w3.org/TR/xml-stylesheet/">Associating Style Sheets with XML documents, Version 1.0</a>
	*/
	@:overload override public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* The spec notes that "The xml-stylesheet processing instruction is allowed only in the prolog of an XML document.",
	* so, at least for right now, I'm going to go ahead an throw a TransformerException
	* in order to stop the parse.
	*
	* @param namespaceURI The Namespace URI, or an empty string.
	* @param localName The local name (without prefix), or empty string if not namespace processing.
	* @param qName The qualified name (with prefix).
	* @param atts  The specified or defaulted attributes.
	*
	* @throws StopParseException since there can be no valid xml-stylesheet processing
	*                            instructions past the first element.
	*/
	@:overload override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	/**
	* Added additional getter and setter methods for the Base Id
	* to fix bugzilla bug 24187
	*
	*/
	@:overload public function setBaseId(baseId : String) : Void;
	
	@:overload public function getBaseId() : String;
	
	
}
