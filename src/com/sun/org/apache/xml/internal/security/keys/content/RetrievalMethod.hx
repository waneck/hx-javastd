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
extern class RetrievalMethod extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy implements com.sun.org.apache.xml.internal.security.keys.content.KeyInfoContent
{
	/** DSA retrieval */
	public static var TYPE_DSA(default, null) : String;
	
	/** RSA retrieval */
	public static var TYPE_RSA(default, null) : String;
	
	/** PGP retrieval */
	public static var TYPE_PGP(default, null) : String;
	
	/** SPKI retrieval */
	public static var TYPE_SPKI(default, null) : String;
	
	/** MGMT retrieval */
	public static var TYPE_MGMT(default, null) : String;
	
	/** X509 retrieval */
	public static var TYPE_X509(default, null) : String;
	
	/** RAWX509 retrieval */
	public static var TYPE_RAWX509(default, null) : String;
	
	/**
	* Constructor RetrievalMethod
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Constructor RetrievalMethod
	*
	* @param doc
	* @param URI
	* @param transforms
	* @param Type
	*/
	@:overload public function new(doc : org.w3c.dom.Document, URI : String, transforms : com.sun.org.apache.xml.internal.security.transforms.Transforms, Type : String) : Void;
	
	/**
	* Method getURIAttr
	*
	* @return the URI attribute
	*/
	@:overload public function getURIAttr() : org.w3c.dom.Attr;
	
	/**
	* Method getURI
	*
	*
	* @return URI string
	*/
	@:overload public function getURI() : String;
	
	/** @return the type*/
	@:overload public function getType() : String;
	
	/**
	* Method getTransforms
	*
	*
	* @throws XMLSecurityException
	* @return the transforamitons
	*/
	@:overload public function getTransforms() : com.sun.org.apache.xml.internal.security.transforms.Transforms;
	
	/** @inheritDoc */
	@:overload public function getBaseLocalName() : String;
	
	
}
