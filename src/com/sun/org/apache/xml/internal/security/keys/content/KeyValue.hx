package com.sun.org.apache.xml.internal.security.keys.content;
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
extern class KeyValue extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy implements com.sun.org.apache.xml.internal.security.keys.content.KeyInfoContent
{
	/**
	* Constructor KeyValue
	*
	* @param doc
	* @param dsaKeyValue
	*/
	@:overload public function new(doc : org.w3c.dom.Document, dsaKeyValue : com.sun.org.apache.xml.internal.security.keys.content.keyvalues.DSAKeyValue) : Void;
	
	/**
	* Constructor KeyValue
	*
	* @param doc
	* @param rsaKeyValue
	*/
	@:overload public function new(doc : org.w3c.dom.Document, rsaKeyValue : com.sun.org.apache.xml.internal.security.keys.content.keyvalues.RSAKeyValue) : Void;
	
	/**
	* Constructor KeyValue
	*
	* @param doc
	* @param unknownKeyValue
	*/
	@:overload public function new(doc : org.w3c.dom.Document, unknownKeyValue : org.w3c.dom.Element) : Void;
	
	/**
	* Constructor KeyValue
	*
	* @param doc
	* @param pk
	*/
	@:overload public function new(doc : org.w3c.dom.Document, pk : java.security.PublicKey) : Void;
	
	/**
	* Constructor KeyValue
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Method getPublicKey
	*
	* @return the public key
	* @throws XMLSecurityException
	*/
	@:overload public function getPublicKey() : java.security.PublicKey;
	
	/** @inheritDoc */
	@:overload override public function getBaseLocalName() : String;
	
	
}
