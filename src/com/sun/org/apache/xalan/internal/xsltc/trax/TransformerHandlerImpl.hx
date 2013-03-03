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
* $Id: TransformerHandlerImpl.java,v 1.2.4.1 2005/09/15 06:25:12 pvedula Exp $
*/
extern class TransformerHandlerImpl implements javax.xml.transform.sax.TransformerHandler implements org.xml.sax.ext.DeclHandler
{
	/**
	* Cosntructor - pass in reference to a TransformerImpl object
	*/
	@:overload @:public public function new(transformer : com.sun.org.apache.xalan.internal.xsltc.trax.TransformerImpl) : Void;
	
	/**
	* Implements javax.xml.transform.sax.TransformerHandler.getSystemId()
	* Get the base ID (URI or system ID) from where relative URLs will be
	* resolved.
	* @return The systemID that was set with setSystemId(String id)
	*/
	@:overload @:public public function getSystemId() : String;
	
	/**
	* Implements javax.xml.transform.sax.TransformerHandler.setSystemId()
	* Get the base ID (URI or system ID) from where relative URLs will be
	* resolved.
	* @param id Base URI for this stylesheet
	*/
	@:overload @:public public function setSystemId(id : String) : Void;
	
	/**
	* Implements javax.xml.transform.sax.TransformerHandler.getTransformer()
	* Get the Transformer associated with this handler, which is needed in
	* order to set parameters and output properties.
	* @return The Transformer object
	*/
	@:overload @:public public function getTransformer() : javax.xml.transform.Transformer;
	
	/**
	* Implements javax.xml.transform.sax.TransformerHandler.setResult()
	* Enables the user of the TransformerHandler to set the to set the Result
	* for the transformation.
	* @param result A Result instance, should not be null
	* @throws IllegalArgumentException if result is invalid for some reason
	*/
	@:overload @:public public function setResult(result : javax.xml.transform.Result) : Void;
	
	/**
	* Implements org.xml.sax.ContentHandler.characters()
	* Receive notification of character data.
	*/
	@:overload @:public public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Implements org.xml.sax.ContentHandler.startDocument()
	* Receive notification of the beginning of a document.
	*/
	@:overload @:public public function startDocument() : Void;
	
	/**
	* Implements org.xml.sax.ContentHandler.endDocument()
	* Receive notification of the end of a document.
	*/
	@:overload @:public public function endDocument() : Void;
	
	/**
	* Implements org.xml.sax.ContentHandler.startElement()
	* Receive notification of the beginning of an element.
	*/
	@:overload @:public public function startElement(uri : String, localName : String, qname : String, attributes : org.xml.sax.Attributes) : Void;
	
	/**
	* Implements org.xml.sax.ContentHandler.endElement()
	* Receive notification of the end of an element.
	*/
	@:overload @:public public function endElement(namespaceURI : String, localName : String, qname : String) : Void;
	
	/**
	* Implements org.xml.sax.ContentHandler.processingInstruction()
	* Receive notification of a processing instruction.
	*/
	@:overload @:public public function processingInstruction(target : String, data : String) : Void;
	
	/**
	* Implements org.xml.sax.ext.LexicalHandler.startCDATA()
	*/
	@:overload @:public public function startCDATA() : Void;
	
	/**
	* Implements org.xml.sax.ext.LexicalHandler.endCDATA()
	*/
	@:overload @:public public function endCDATA() : Void;
	
	/**
	* Implements org.xml.sax.ext.LexicalHandler.comment()
	* Receieve notification of a comment
	*/
	@:overload @:public public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Implements org.xml.sax.ContentHandler.ignorableWhitespace()
	* Receive notification of ignorable whitespace in element
	* content. Similar to characters(char[], int, int).
	*/
	@:overload @:public public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	/**
	* Implements org.xml.sax.ContentHandler.setDocumentLocator()
	* Receive an object for locating the origin of SAX document events.
	*/
	@:overload @:public public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	/**
	* Implements org.xml.sax.ContentHandler.skippedEntity()
	* Receive notification of a skipped entity.
	*/
	@:overload @:public public function skippedEntity(name : String) : Void;
	
	/**
	* Implements org.xml.sax.ContentHandler.startPrefixMapping()
	* Begin the scope of a prefix-URI Namespace mapping.
	*/
	@:overload @:public public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	/**
	* Implements org.xml.sax.ContentHandler.endPrefixMapping()
	* End the scope of a prefix-URI Namespace mapping.
	*/
	@:overload @:public public function endPrefixMapping(prefix : String) : Void;
	
	/**
	* Implements org.xml.sax.ext.LexicalHandler.startDTD()
	*/
	@:overload @:public public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Implements org.xml.sax.ext.LexicalHandler.endDTD()
	*/
	@:overload @:public public function endDTD() : Void;
	
	/**
	* Implements org.xml.sax.ext.LexicalHandler.startEntity()
	*/
	@:overload @:public public function startEntity(name : String) : Void;
	
	/**
	* Implements org.xml.sax.ext.LexicalHandler.endEntity()
	*/
	@:overload @:public public function endEntity(name : String) : Void;
	
	/**
	* Implements org.xml.sax.DTDHandler.unparsedEntityDecl()
	*/
	@:overload @:public public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	/**
	* Implements org.xml.sax.DTDHandler.notationDecl()
	*/
	@:overload @:public public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Implements org.xml.sax.ext.DeclHandler.attributeDecl()
	*/
	@:overload @:public public function attributeDecl(eName : String, aName : String, type : String, valueDefault : String, value : String) : Void;
	
	/**
	* Implements org.xml.sax.ext.DeclHandler.elementDecl()
	*/
	@:overload @:public public function elementDecl(name : String, model : String) : Void;
	
	/**
	* Implements org.xml.sax.ext.DeclHandler.externalEntityDecl()
	*/
	@:overload @:public public function externalEntityDecl(name : String, publicId : String, systemId : String) : Void;
	
	/**
	* Implements org.xml.sax.ext.DeclHandler.externalEntityDecl()
	*/
	@:overload @:public public function internalEntityDecl(name : String, value : String) : Void;
	
	/** Implementation of the reset() method
	*
	*/
	@:overload @:public public function reset() : Void;
	
	
}
