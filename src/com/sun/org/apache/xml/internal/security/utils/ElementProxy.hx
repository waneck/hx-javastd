package com.sun.org.apache.xml.internal.security.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2008 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
extern class ElementProxy
{
	/**
	* Returns the namespace of the Elements of the sub-class.
	*
	* @return the namespace of the Elements of the sub-class.
	*/
	@:overload @:abstract public function getBaseNamespace() : String;
	
	/**
	* Returns the localname of the Elements of the sub-class.
	*
	* @return the localname of the Elements of the sub-class.
	*/
	@:overload @:abstract public function getBaseLocalName() : String;
	
	/** Field _constructionElement */
	private var _constructionElement : org.w3c.dom.Element;
	
	/** Field _baseURI */
	private var _baseURI : String;
	
	/** Field _doc */
	private var _doc : org.w3c.dom.Document;
	
	/**
	* Constructor ElementProxy
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructor ElementProxy
	*
	* @param doc
	*/
	@:overload public function new(doc : org.w3c.dom.Document) : Void;
	
	@:overload private function createElementForFamilyLocal(doc : org.w3c.dom.Document, namespace : String, localName : String) : org.w3c.dom.Element;
	
	/**
	* This method creates an Element in a given namespace with a given localname.
	* It uses the {@link ElementProxy#getDefaultPrefix} method to decide whether
	* a particular prefix is bound to that namespace.
	* <BR />
	* This method was refactored out of the constructor.
	*
	* @param doc
	* @param namespace
	* @param localName
	* @return The element created.
	*/
	@:overload public static function createElementForFamily(doc : org.w3c.dom.Document, namespace : String, localName : String) : org.w3c.dom.Element;
	
	/**
	* Method setElement
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload public function setElement(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Constructor ElementProxy
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Returns the Element which was constructed by the Object.
	*
	* @return the Element which was constructed by the Object.
	*/
	@:overload @:final public function getElement() : org.w3c.dom.Element;
	
	/**
	* Returns the Element plus a leading and a trailing CarriageReturn Text node.
	*
	* @return the Element which was constructed by the Object.
	*/
	@:overload @:final public function getElementPlusReturns() : org.w3c.dom.NodeList;
	
	/**
	* Method getDocument
	*
	* @return the Document where this element is contained.
	*/
	@:overload public function getDocument() : org.w3c.dom.Document;
	
	/**
	* Method getBaseURI
	*
	* @return the base uri of the namespace of this element
	*/
	@:overload public function getBaseURI() : String;
	
	/**
	* Method setVal
	*
	* @param bi
	* @param localname
	*/
	@:overload public function addBigIntegerElement(bi : java.math.BigInteger, localname : String) : Void;
	
	/**
	* Method addBase64Element
	*
	* @param bytes
	* @param localname
	*/
	@:overload public function addBase64Element(bytes : java.NativeArray<java.StdTypes.Int8>, localname : String) : Void;
	
	/**
	* Method addTextElement
	*
	* @param text
	* @param localname
	*/
	@:overload public function addTextElement(text : String, localname : String) : Void;
	
	/**
	* Method addBase64Text
	*
	* @param bytes
	*/
	@:overload public function addBase64Text(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Method addText
	*
	* @param text
	*/
	@:overload public function addText(text : String) : Void;
	
	/**
	* Method getVal
	*
	* @param localname
	* @param namespace
	* @return The biginter contained in the given element
	* @throws Base64DecodingException
	*/
	@:overload public function getBigIntegerFromChildElement(localname : String, namespace : String) : java.math.BigInteger;
	
	/**
	* Method getBytesFromChildElement
	* @deprecated
	* @param localname
	* @param namespace
	* @return the bytes
	* @throws XMLSecurityException
	*/
	@:overload public function getBytesFromChildElement(localname : String, namespace : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method getTextFromChildElement
	*
	* @param localname
	* @param namespace
	* @return the Text of the textNode
	*/
	@:overload public function getTextFromChildElement(localname : String, namespace : String) : String;
	
	/**
	* Method getBytesFromTextChild
	*
	* @return The base64 bytes from the text children of this element
	* @throws XMLSecurityException
	*/
	@:overload public function getBytesFromTextChild() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method getTextFromTextChild
	*
	* @return the Text obtained by concatenating all the text nodes of this
	*    element
	*/
	@:overload public function getTextFromTextChild() : String;
	
	/**
	* Method length
	*
	* @param namespace
	* @param localname
	* @return the number of elements {namespace}:localname under this element
	*/
	@:overload public function length(namespace : String, localname : String) : Int;
	
	/**
	* Adds an xmlns: definition to the Element. This can be called as follows:
	*
	* <PRE>
	* // set namespace with ds prefix
	* xpathContainer.setXPathNamespaceContext("ds", "http://www.w3.org/2000/09/xmldsig#");
	* xpathContainer.setXPathNamespaceContext("xmlns:ds", "http://www.w3.org/2000/09/xmldsig#");
	* </PRE>
	*
	* @param prefix
	* @param uri
	* @throws XMLSecurityException
	*/
	@:overload public function setXPathNamespaceContext(prefix : String, uri : String) : Void;
	
	/**
	* Method setDefaultPrefix
	*
	* @param namespace
	* @param prefix
	* @throws XMLSecurityException
	*/
	@:overload public static function setDefaultPrefix(namespace : String, prefix : String) : Void;
	
	/**
	* Method getDefaultPrefix
	*
	* @param namespace
	* @return the default prefix bind to this element.
	*/
	@:overload public static function getDefaultPrefix(namespace : String) : String;
	
	@:overload public static function getDefaultPrefixBindings(namespace : String) : String;
	
	
}
