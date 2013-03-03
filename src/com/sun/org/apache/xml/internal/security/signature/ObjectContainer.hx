package com.sun.org.apache.xml.internal.security.signature;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
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
extern class ObjectContainer extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy
{
	/**
	* Constructs {@link ObjectContainer}
	*
	* @param doc the {@link Document} in which <code>Object</code> element is placed
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document) : Void;
	
	/**
	* Constructs {@link ObjectContainer} from {@link Element}
	*
	* @param element is <code>Object</code> element
	* @param BaseURI the URI of the resource where the XML instance was stored
	* @throws XMLSecurityException
	*/
	@:overload @:public public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Sets the <code>Id</code> attribute
	*
	* @param Id <code>Id</code> attribute
	*/
	@:overload @:public public function setId(Id : String) : Void;
	
	/**
	* Returns the <code>Id</code> attribute
	*
	* @return the <code>Id</code> attribute
	*/
	@:overload @:public public function getId() : String;
	
	/**
	* Sets the <code>MimeType</code> attribute
	*
	* @param MimeType the <code>MimeType</code> attribute
	*/
	@:overload @:public public function setMimeType(MimeType : String) : Void;
	
	/**
	* Returns the <code>MimeType</code> attribute
	*
	* @return the <code>MimeType</code> attribute
	*/
	@:overload @:public public function getMimeType() : String;
	
	/**
	* Sets the <code>Encoding</code> attribute
	*
	* @param Encoding the <code>Encoding</code> attribute
	*/
	@:overload @:public public function setEncoding(Encoding : String) : Void;
	
	/**
	* Returns the <code>Encoding</code> attribute
	*
	* @return the <code>Encoding</code> attribute
	*/
	@:overload @:public public function getEncoding() : String;
	
	/**
	* Adds child Node
	*
	* @param node child Node
	* @return the new node in the tree.
	*/
	@:overload @:public public function appendChild(node : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/** @inheritDoc */
	@:overload @:public override public function getBaseLocalName() : String;
	
	
}
