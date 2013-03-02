package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002-2004 The Apache Software Foundation.
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
* Our own document implementation, which knows how to create an element
* with PSVI information.
*
* @xerces.internal
*
* @author Sandy Gao, IBM
*
*/
extern class PSVIDocumentImpl extends com.sun.org.apache.xerces.internal.dom.DocumentImpl
{
	/**
	* Create a document.
	*/
	@:overload public function new() : Void;
	
	/**
	* For DOM2 support.
	* The createDocument factory method is in DOMImplementation.
	*/
	@:overload public function new(doctype : org.w3c.dom.DocumentType) : Void;
	
	/**
	* Deep-clone a document, including fixing ownerDoc for the cloned
	* children. Note that this requires bypassing the WRONG_DOCUMENT_ERR
	* protection. I've chosen to implement it by calling importNode
	* which is DOM Level 2.
	*
	* @return org.w3c.dom.Node
	* @param deep boolean, iff true replicate children
	*/
	@:overload override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	* Retrieve information describing the abilities of this particular
	* DOM implementation. Intended to support applications that may be
	* using DOMs retrieved from several different sources, potentially
	* with different underlying representations.
	*/
	@:overload override public function getImplementation() : org.w3c.dom.DOMImplementation;
	
	/**
	* Create an element with PSVI information
	*/
	@:overload public function createElementNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Element;
	
	/**
	* Create an element with PSVI information
	*/
	@:overload public function createElementNS(namespaceURI : String, qualifiedName : String, localpart : String) : org.w3c.dom.Element;
	
	/**
	* Create an attribute with PSVI information
	*/
	@:overload public function createAttributeNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Attr;
	
	/**
	* Create an attribute with PSVI information
	*/
	@:overload public function createAttributeNS(namespaceURI : String, qualifiedName : String, localName : String) : org.w3c.dom.Attr;
	
	/**
	*
	* The configuration used when <code>Document.normalizeDocument</code> is
	* invoked.
	* @since DOM Level 3
	*/
	@:overload public function getDomConfig() : org.w3c.dom.DOMConfiguration;
	
	
}
