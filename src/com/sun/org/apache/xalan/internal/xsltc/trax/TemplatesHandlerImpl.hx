package com.sun.org.apache.xalan.internal.xsltc.trax;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
* $Id: TemplatesHandlerImpl.java,v 1.2.4.1 2005/09/06 12:09:03 pvedula Exp $
*/
extern class TemplatesHandlerImpl implements org.xml.sax.ContentHandler implements javax.xml.transform.sax.TemplatesHandler implements com.sun.org.apache.xalan.internal.xsltc.compiler.SourceLoader
{
	/**
	* Default constructor
	*/
	@:overload private function new(indentNumber : Int, tfactory : com.sun.org.apache.xalan.internal.xsltc.trax.TransformerFactoryImpl) : Void;
	
	/**
	* Implements javax.xml.transform.sax.TemplatesHandler.getSystemId()
	* Get the base ID (URI or system ID) from where relative URLs will be
	* resolved.
	* @return The systemID that was set with setSystemId(String id)
	*/
	@:overload public function getSystemId() : String;
	
	/**
	* Implements javax.xml.transform.sax.TemplatesHandler.setSystemId()
	* Get the base ID (URI or system ID) from where relative URLs will be
	* resolved.
	* @param id Base URI for this stylesheet
	*/
	@:overload public function setSystemId(id : String) : Void;
	
	/**
	* Store URIResolver needed for Transformers.
	*/
	@:overload public function setURIResolver(resolver : javax.xml.transform.URIResolver) : Void;
	
	/**
	* Implements javax.xml.transform.sax.TemplatesHandler.getTemplates()
	* When a TemplatesHandler object is used as a ContentHandler or
	* DocumentHandler for the parsing of transformation instructions, it
	* creates a Templates object, which the caller can get once the SAX
	* events have been completed.
	* @return The Templates object that was created during the SAX event
	*         process, or null if no Templates object has been created.
	*/
	@:overload public function getTemplates() : javax.xml.transform.Templates;
	
	/**
	* This method implements XSLTC's SourceLoader interface. It is used to
	* glue a TrAX URIResolver to the XSLTC compiler's Input and Import classes.
	*
	* @param href The URI of the document to load
	* @param context The URI of the currently loaded document
	* @param xsltc The compiler that resuests the document
	* @return An InputSource with the loaded document
	*/
	@:overload public function loadSource(href : String, context : String, xsltc : com.sun.org.apache.xalan.internal.xsltc.compiler.XSLTC) : org.xml.sax.InputSource;
	
	/**
	* Re-initialize parser and forward SAX2 event.
	*/
	@:overload public function startDocument() : Void;
	
	/**
	* Just forward SAX2 event to parser object.
	*/
	@:overload public function endDocument() : Void;
	
	/**
	* Just forward SAX2 event to parser object.
	*/
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* Just forward SAX2 event to parser object.
	*/
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Just forward SAX2 event to parser object.
	*/
	@:overload public function startElement(uri : String, localname : String, qname : String, attributes : org.xml.sax.Attributes) : Void;
	
	/**
	* Just forward SAX2 event to parser object.
	*/
	@:overload public function endElement(uri : String, localname : String, qname : String) : Void;
	
	/**
	* Just forward SAX2 event to parser object.
	*/
	@:overload public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Just forward SAX2 event to parser object.
	*/
	@:overload public function processingInstruction(name : String, value : String) : Void;
	
	/**
	* Just forward SAX2 event to parser object.
	*/
	@:overload public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Just forward SAX2 event to parser object.
	*/
	@:overload public function skippedEntity(name : String) : Void;
	
	/**
	* Set internal system Id and forward SAX2 event to parser object.
	*/
	@:overload public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	
}
