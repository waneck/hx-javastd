package com.sun.org.apache.xerces.internal.impl.xs.opti;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern class DefaultDocument extends com.sun.org.apache.xerces.internal.impl.xs.opti.NodeImpl implements org.w3c.dom.Document
{
	@:overload public function new() : Void;
	
	@:overload public function getDoctype() : org.w3c.dom.DocumentType;
	
	@:overload public function getImplementation() : org.w3c.dom.DOMImplementation;
	
	@:overload public function getDocumentElement() : org.w3c.dom.Element;
	
	@:overload public function getElementsByTagName(tagname : String) : org.w3c.dom.NodeList;
	
	@:overload public function getElementsByTagNameNS(namespaceURI : String, localName : String) : org.w3c.dom.NodeList;
	
	@:overload public function getElementById(elementId : String) : org.w3c.dom.Element;
	
	@:overload public function importNode(importedNode : org.w3c.dom.Node, deep : Bool) : org.w3c.dom.Node;
	
	@:overload public function createElement(tagName : String) : org.w3c.dom.Element;
	
	@:overload public function createDocumentFragment() : org.w3c.dom.DocumentFragment;
	
	@:overload public function createTextNode(data : String) : org.w3c.dom.Text;
	
	@:overload public function createComment(data : String) : org.w3c.dom.Comment;
	
	@:overload public function createCDATASection(data : String) : org.w3c.dom.CDATASection;
	
	@:overload public function createProcessingInstruction(target : String, data : String) : org.w3c.dom.ProcessingInstruction;
	
	@:overload public function createAttribute(name : String) : org.w3c.dom.Attr;
	
	@:overload public function createEntityReference(name : String) : org.w3c.dom.EntityReference;
	
	@:overload public function createElementNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Element;
	
	@:overload public function createAttributeNS(namespaceURI : String, qualifiedName : String) : org.w3c.dom.Attr;
	
	@:overload public function getInputEncoding() : String;
	
	/**
	public void setInputEncoding(String actualEncoding){
	throw new DOMException(DOMException.NOT_SUPPORTED_ERR, "Method not supported");
	}
	*/
	@:overload public function getXmlEncoding() : String;
	
	/**
	* An attribute specifying, as part of the XML declaration, whether this
	* document is standalone.
	* <br> This attribute represents the property [standalone] defined in .
	* @since DOM Level 3
	*/
	@:overload public function getXmlStandalone() : Bool;
	
	/**
	* An attribute specifying, as part of the XML declaration, whether this
	* document is standalone.
	* <br> This attribute represents the property [standalone] defined in .
	* @since DOM Level 3
	*/
	@:overload public function setXmlStandalone(standalone : Bool) : Void;
	
	/**
	* An attribute specifying, as part of the XML declaration, the version
	* number of this document. This is <code>null</code> when unspecified.
	* <br> This attribute represents the property [version] defined in .
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: Raised if the version is set to a value that is
	*   not supported by this <code>Document</code>.
	* @since DOM Level 3
	*/
	@:overload public function getXmlVersion() : String;
	
	/**
	* An attribute specifying, as part of the XML declaration, the version
	* number of this document. This is <code>null</code> when unspecified.
	* <br> This attribute represents the property [version] defined in .
	* @exception DOMException
	*   NOT_SUPPORTED_ERR: Raised if the version is set to a value that is
	*   not supported by this <code>Document</code>.
	* @since DOM Level 3
	*/
	@:overload public function setXmlVersion(version : String) : Void;
	
	/**
	* An attribute specifying whether errors checking is enforced or not.
	* When set to <code>false</code>, the implementation is free to not
	* test every possible error case normally defined on DOM operations,
	* and not raise any <code>DOMException</code>. In case of error, the
	* behavior is undefined. This attribute is <code>true</code> by
	* defaults.
	* @since DOM Level 3
	*/
	@:overload public function getStrictErrorChecking() : Bool;
	
	/**
	* An attribute specifying whether errors checking is enforced or not.
	* When set to <code>false</code>, the implementation is free to not
	* test every possible error case normally defined on DOM operations,
	* and not raise any <code>DOMException</code>. In case of error, the
	* behavior is undefined. This attribute is <code>true</code> by
	* defaults.
	* @since DOM Level 3
	*/
	@:overload public function setStrictErrorChecking(strictErrorChecking : Bool) : Void;
	
	/**
	* The location of the document or <code>null</code> if undefined.
	* <br>Beware that when the <code>Document</code> supports the feature
	* "HTML" , the href attribute of the HTML BASE element takes precedence
	* over this attribute.
	* @since DOM Level 3
	*/
	@:overload public function getDocumentURI() : String;
	
	/**
	* The location of the document or <code>null</code> if undefined.
	* <br>Beware that when the <code>Document</code> supports the feature
	* "HTML" , the href attribute of the HTML BASE element takes precedence
	* over this attribute.
	* @since DOM Level 3
	*/
	@:overload public function setDocumentURI(documentURI : String) : Void;
	
	/** DOM Level 3*/
	@:overload public function adoptNode(source : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/** DOM Level 3*/
	@:overload public function normalizeDocument() : Void;
	
	/**
	*  The configuration used when <code>Document.normalizeDocument</code> is
	* invoked.
	* @since DOM Level 3
	*/
	@:overload public function getDomConfig() : org.w3c.dom.DOMConfiguration;
	
	/** DOM Level 3*/
	@:overload public function renameNode(n : org.w3c.dom.Node, namespaceURI : String, name : String) : org.w3c.dom.Node;
	
	
}
