package com.sun.org.apache.xml.internal.security.keys.content.keyvalues;
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
extern class RSAKeyValue extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy implements com.sun.org.apache.xml.internal.security.keys.content.keyvalues.KeyValueContent
{
	/**
	* Constructor RSAKeyValue
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Constructor RSAKeyValue
	*
	* @param doc
	* @param modulus
	* @param exponent
	*/
	@:overload public function new(doc : org.w3c.dom.Document, modulus : java.math.BigInteger, exponent : java.math.BigInteger) : Void;
	
	/**
	* Constructor RSAKeyValue
	*
	* @param doc
	* @param key
	* @throws IllegalArgumentException
	*/
	@:overload public function new(doc : org.w3c.dom.Document, key : java.security.Key) : Void;
	
	/** @inheritDoc */
	@:overload public function getPublicKey() : java.security.PublicKey;
	
	/** @inheritDoc */
	@:overload public function getBaseLocalName() : String;
	
	
}
